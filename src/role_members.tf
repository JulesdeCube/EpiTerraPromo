# resource "discord_member_roles" "AntAntAnt" {
#   server_id = discord_server.server.id
#   user_id   = data.discord_member.AntAntAnt.id

#   role { role_id = discord_role.modo.id }
# }

# resource "discord_member_roles" "GEOX" {
#   server_id = discord_server.server.id
#   user_id   = data.discord_member.GEOX.id

#   role { role_id = discord_role.admin.id }
#   role { role_id = discord_role.modo.id }
# }

resource "discord_member_roles" "JulesdeCube" {
  server_id = discord_server.server.id
  user_id   = data.discord_member.JulesdeCube.id

  role { role_id = discord_role.admin.id }
  role { role_id = discord_role.modo.id }
}

# resource "discord_member_roles" "Litarvan" {
#   server_id = discord_server.server.id
#   user_id   = data.discord_member.Litarvan.id

#   role { role_id = discord_role.admin.id }
#   role { role_id = discord_role.modo.id }
# }

# resource "discord_member_roles" "Vinetos" {
#   server_id = discord_server.server.id
#   user_id   = data.discord_member.Vinetos.id

#   role { role_id = discord_role.modo.id }
# }

resource "discord_member_roles" "JulesTest" {
  server_id = discord_server.server.id
  user_id   = data.discord_member.JulesTest.id

  role { role_id = discord_role.modo.id }
}
