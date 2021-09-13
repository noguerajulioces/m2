Rails.application.config.session_store :active_record_store, key: '_template_session'
ActiveRecord::SessionStore::Session.table_name = 'user_devices'