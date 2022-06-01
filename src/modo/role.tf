# resource "discord_member_roles" "AntAntAnt" {
#   server_id = var.server_id
#   user_id   = data.discord_member.AntAntAnt.id

#   role { role_id = var.modo }
# }

# resource "discord_member_roles" "GEOX" {
#   server_id = var.server_id
#   user_id   = data.discord_member.GEOX.id

#   role { role_id = var.admin }
#   role { role_id = var.modo }
# }

resource "discord_member_roles" "JulesdeCube" {
  server_id = var.server_id
  user_id   = data.discord_member.JulesdeCube.id

  role { role_id = var.admin }
  role { role_id = var.modo }
}

# resource "discord_member_roles" "Litarvan" {
#   server_id = var.server_id
#   user_id   = data.discord_member.Litarvan.id

#   role { role_id = var.admin }
#   role { role_id = var.modo }
# }

# resource "discord_member_roles" "Vinetos" {
#   server_id = var.server_id
#   user_id   = data.discord_member.Vinetos.id

#   role { role_id = var.modo }
# }
