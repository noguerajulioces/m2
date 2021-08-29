# frozen_string_literal: true

# == Schema Information
#
# Table name: cities
#
#  id         :bigint           not null, primary key
#  department :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class City < ApplicationRecord
  DEPARTMENT = %w[Alto Paraguay Alto Parana Amambay Boquerón Caaguazú Caazapá Canindeyú Central
                  Concepción Cordillera Guairá Itapúa Misiones Paraguarí Ñeembucú Presidente Hayes San Pedro].freeze

end
