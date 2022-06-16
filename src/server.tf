
resource "discord_server" "server" {
  name   = format("EPITA (%d) ✨", var.promo)
  region = "india"
  owner_id = data.discord_member.JulesdeCube.id
}

data "discord_server" "discord_modos" {
  name = "Test 1"
}
