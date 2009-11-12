# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ilmo2_session',
  :secret      => '3d467131d8a1984f6553e8a3a18eb45f98a2522fec0997050c18127f7b7d807cc6ae67bc128e1858148347a5ca8ccca7e8084a7b6c4340a23ef33f1c8d91301a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
