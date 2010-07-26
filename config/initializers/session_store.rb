# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_autocomplete-vs-combobox_session',
  :secret      => 'e2f18f28533ba62d7769cf8cd57df56c009ff13768b51b5b46bf037cf53925029df3ac27663b37f9039003be3839e95f17e0a0857ac6e02e0e840e83ab4ec9f8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
