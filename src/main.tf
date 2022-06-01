terraform {
  required_version = ">= 0.14.0"

  required_providers {
    discord = {
      source  = "aequasi/discord"
      version = "0.0.4"
    }
  }

  backend "local" {
    path = "../.state/terraform.tfstate"
  }

}


provider "discord" {
  token = var.discord_token
}

resource "discord_server" "server" {
  name     = format("EPITA (%d) ✨", var.promo)
  region = "india"
  # owner_id = module.modo.owner_id
}

resource "discord_text_channel" "general" {
  name                     = "general"
  server_id                = discord_server.server.id
  position                 = 0
  sync_perms_with_category = false
}


resource "discord_invite" "chatting" {
  channel_id = discord_text_channel.general.id
  max_age    = 0
}
