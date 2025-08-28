server "13.62.102.227", user: "ubuntu", roles: %w{app db web}


set :ssh_options, {
  forward_agent: true,
  auth_methods: %w(publickey),
  keys: %w(/home/developer/first_deploy.pem)
}