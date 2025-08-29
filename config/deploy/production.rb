server "13.60.168.111", user: "ubuntu", roles: %w{app db web}


set :ssh_options, {
  forward_agent: true,
  auth_methods: %w(publickey),
  keys: %w(/home/developer/first_deploy.pem)
}

set :rails_env, 'production'
set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
