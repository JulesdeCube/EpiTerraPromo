# "resource" "discord_role" server_admin {
#   server_id   = discord_server.server.id
#   name        = "Server Admin"
#   permissions = data.discord_permission.server_admin.allow_bits
#   # color = data.discord_color.blue.dec
#   hoist       = false
#   mentionable = false
#   position    = 1000
# "}

#
#   ADMIN
#

resource "discord_role" "admin" {
  server_id   = discord_server.server.id
  name        = "Admin"
  permissions = data.discord_permission.admin.allow_bits
  color       = data.discord_color.admin.dec
  hoist       = true
  mentionable = true
  position    = 53
}

resource "discord_role" "modo" {
  server_id   = discord_server.server.id
  name        = "Modo"
  permissions = data.discord_permission.modo.allow_bits
  color       = data.discord_color.modo.dec
  hoist       = true
  mentionable = true
  position    = 52
}

resource "discord_role" "bot" {
  server_id   = discord_server.server.id
  name        = "Bot"
  color       = data.discord_color.bot.dec
  hoist       = true
  mentionable = true
  position    = 51
}
