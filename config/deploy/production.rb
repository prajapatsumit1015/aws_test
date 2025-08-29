server "16.171.139.74", user: "ubuntu", roles: %w{app db web}


set :ssh_options, {
  forward_agent: true,
  auth_methods: %w(publickey),
  keys: %w(/home/developer/first_deploy.pem)
}