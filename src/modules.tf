module "modo" {
  source = "./modo"

  server_id = discord_server.server.id
  admin     = module.roles.admin
  modo      = module.roles.modo
}

module "roles" {
  source = "./roles"

  server_id = discord_server.server.id
}
