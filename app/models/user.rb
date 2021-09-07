# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  bio                    :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  last_name              :string
#  name                   :string
#  notification_ofert     :boolean
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  slug                   :string
#  terms_condition        :boolean
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_slug                  (slug) UNIQUE
#
class User < ApplicationRecord
  extend FriendlyId

  has_many :user_contacts

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  #:omniauthable, omniauth_providers: %i[google_oauth2 facebook]

  validates :name, :email, :terms_condition, presence: true

  friendly_id :name, use: :slugged

  def self.from_omniauth(access_token)
    user = User.where(email: access_token.info.email).first

    user ||= User.create(
      email: access_token.info.email,
      password: Devise.friendly_token[0, 20]
    )

    user.provider = access_token.provider
    user.uid = access_token.uid
    user.name = access_token.info.name
    user.image = access_token.info.image
    user.save!

    user
  end

  def username
    if name?
      name
    else
      email.split(/@/).first
    end
  end

  after_create do
    update(name: username)
  end
end
