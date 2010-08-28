# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_json_data_server_session',
  :secret      => '4c86a0c48ea6b67801febc7d6d9e419b5c5e8d68b74f93f988e7bf30bd8f9c7db72726b8e36b700c77245bf66f1c470c266b2af7b5dab72a373badacb36b17c9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
