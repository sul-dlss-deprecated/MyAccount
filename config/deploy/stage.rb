server 'libsys-myaccount-stage.stanford.edu', user: 'libsys', roles: %w{app db web}

Capistrano::OneTimeKey.generate_one_time_key!
set :rails_env, 'production'
