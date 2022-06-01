# resource "discord_role" "server_admin" {
#   server_id   = var.server_id
#   name        = "Server Admin"
#   permissions = data.discord_permission.server_admin.allow_bits
#   # color = data.discord_color.blue.dec
#   hoist       = false
#   mentionable = false
#   position    = 1000
# }

resource "discord_role" "admin" {
  server_id   = var.server_id
  name        = "Admin"
  permissions = data.discord_permission.admin.allow_bits
  color       = data.discord_color.admin.dec
  hoist       = true
  mentionable = true
  position    = 0
}

resource "discord_role" "modo" {
  server_id   = var.server_id
  name        = "Modo"
  permissions = data.discord_permission.modo.allow_bits
  color       = data.discord_color.modo.dec
  hoist       = true
  mentionable = true
  position    = 1
}

resource "discord_role" "modo" {
  server_id   = var.server_id
  name        = "Modo"
  permissions = data.discord_permission.modo.allow_bits
  color       = data.discord_color.modo.dec
  hoist       = true
  mentionable = true
  position    = 1
}
