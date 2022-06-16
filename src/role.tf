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


#
# EPITA / PROFS
#

resource "discord_role" "epita_sep" {
  server_id   = discord_server.server.id
  name        = "--- EPITA ---"
  color       = data.discord_color.sep.dec
  position    = 50
}

resource "discord_role" "staff_epita" {
  server_id   = discord_server.server.id
  name        = "Staff Epita"
  color       = data.discord_color.adm.dec
  hoist       = true
  position    = 49
}

resource "discord_role" "profs" {
  server_id   = discord_server.server.id
  name        = "Profs"
  color       = data.discord_color.adm.dec
  hoist       = true
  position    = 48
}

# Regions

resource "discord_role" "profs_langue" {
  server_id   = discord_server.server.id
  name        = "Prof de langue"
  color       = data.discord_color.adm.dec
  hoist       = true
  position    = 47
}

resource "discord_role" "profs_paris" {
  server_id   = discord_server.server.id
  name        = "Profs Paris"
  position    = 46
}

resource "discord_role" "profs_rennes" {
  server_id   = discord_server.server.id
  name        = "Profs Rennes"
  position    = 45
}

resource "discord_role" "profs_lyon" {
  server_id   = discord_server.server.id
  name        = "Profs Lyon"
  position    = 44
}

resource "discord_role" "profs_toulouse" {
  server_id   = discord_server.server.id
  name        = "Profs Toulouse"
  position    = 43
}

resource "discord_role" "profs_strasbourg" {
  server_id   = discord_server.server.id
  name        = "Profs Strasbourg"
  position    = 42
}

#
# ASSISTANT
#

resource "discord_role" "assistant_sep" {
  server_id   = discord_server.server.id
  name        = "--- Assistant ---"
  color       = data.discord_color.sep.dec
  position    = 41
}


resource "discord_role" "acu" {
  server_id   = discord_server.server.id
  name        = "ACU"
  color       = data.discord_color.acu.dec
  hoist       = true
  position    = 40
}

resource "discord_role" "yaka" {
  server_id   = discord_server.server.id
  name        = "YAKA"
  color       = data.discord_color.yaka.dec
  hoist       = true
  position    = 39
}

resource "discord_role" "asm" {
  server_id   = discord_server.server.id
  name        = "ASM"
  color       = data.discord_color.asm.dec
  hoist       = true
  position    = 38
}

resource "discord_role" "acdc" {
  server_id   = discord_server.server.id
  name        = "ACDC"
  color       = data.discord_color.acdc.dec
  hoist       = true
  position    = 37
}

#
# GROUP
#

resource "discord_role" "group_sep" {
  server_id   = discord_server.server.id
  name        = "--- Group ---"
  color       = data.discord_color.sep.dec
  position    = 36
}


resource "discord_role" "a1" {
  server_id   = discord_server.server.id
  name        = "A1"
  color       = data.discord_color.a1.dec
  hoist       = true
  position    = 35
}

resource "discord_role" "a2" {
  server_id   = discord_server.server.id
  name        = "A2"
  color       = data.discord_color.a2.dec
  hoist       = true
  position    = 34
}

resource "discord_role" "a3" {
  server_id   = discord_server.server.id
  name        = "A3"
  color       = data.discord_color.a3.dec
  hoist       = true
  position    = 33
}

resource "discord_role" "a4" {
  server_id   = discord_server.server.id
  name        = "A4"
  color       = data.discord_color.a4.dec
  hoist       = true
  position    = 32
}

resource "discord_role" "a5" {
  server_id   = discord_server.server.id
  name        = "A5"
  color       = data.discord_color.a5.dec
  hoist       = true
  position    = 31
}

resource "discord_role" "b6" {
  server_id   = discord_server.server.id
  name        = "B6"
  color       = data.discord_color.b6.dec
  hoist       = true
  position    = 30
}

resource "discord_role" "b7" {
  server_id   = discord_server.server.id
  name        = "B7"
  color       = data.discord_color.b7.dec
  hoist       = true
  position    = 29
}

resource "discord_role" "b8" {
  server_id   = discord_server.server.id
  name        = "B8"
  color       = data.discord_color.b8.dec
  hoist       = true
  position    = 28
}

resource "discord_role" "b9" {
  server_id   = discord_server.server.id
  name        = "B9"
  color       = data.discord_color.b9.dec
  hoist       = true
  position    = 27
}

resource "discord_role" "b10" {
  server_id   = discord_server.server.id
  name        = "B10"
  color       = data.discord_color.b10.dec
  hoist       = true
  position    = 26
}

resource "discord_role" "b11" {
  server_id   = discord_server.server.id
  name        = "B11"
  color       = data.discord_color.b11.dec
  hoist       = true
  position    = 25
}

resource "discord_role" "apprentis" {
  server_id   = discord_server.server.id
  name        = "Apprentis"
  color       = data.discord_color.apprentis.dec
  hoist       = true
  position    = 24
}

#
# REGIONS
#

resource "discord_role" "region_sep" {
  server_id   = discord_server.server.id
  name        = "--- Region ---"
  color       = data.discord_color.sep.dec
  position    = 23
}

resource "discord_role" "paris" {
  server_id   = discord_server.server.id
  name        = "Paris"
  color       = data.discord_color.paris.dec
  position    = 22
}

resource "discord_role" "rennes" {
  server_id   = discord_server.server.id
  name        = "Rennes"
  color       = data.discord_color.rennes.dec
  position    = 21
}

resource "discord_role" "lyon" {
  server_id   = discord_server.server.id
  name        = "Lyon"
  color       = data.discord_color.lyon.dec
  position    = 20
}

resource "discord_role" "toulouse" {
  server_id   = discord_server.server.id
  name        = "Toulouse"
  color       = data.discord_color.toulouse.dec
  position    = 19
}

resource "discord_role" "strasbourg" {
  server_id   = discord_server.server.id
  name        = "Strasbourg"
  color       = data.discord_color.strasbourg.dec
  position    = 18
}

#
# LABO
#

resource "discord_role" "lab_sep" {
  server_id   = discord_server.server.id
  name        = "--- Labo ---"
  color       = data.discord_color.sep.dec
  position    = 17
}

resource "discord_role" "lab_cri" {
  server_id   = discord_server.server.id
  name        = "CRI"
  color       = data.discord_color.lab_cri.dec
  hoist       = true
  position    = 16
}

resource "discord_role" "lab_si" {
  server_id   = discord_server.server.id
  name        = "Lab SI"
  color       = data.discord_color.lab_si.dec
  hoist       = true
  position    = 15
}


resource "discord_role" "lab_lrde" {
  server_id   = discord_server.server.id
  name        = "LRDE"
  color       = data.discord_color.lab_lrde.dec
  hoist       = true
  position    = 14
}


resource "discord_role" "lab_lse" {
  server_id   = discord_server.server.id
  name        = "LSE"
  color       = data.discord_color.lab_lse.dec
  hoist       = true
  position    = 13
}


resource "discord_role" "lab_3ie" {
  server_id   = discord_server.server.id
  name        = "3IE"
  color       = data.discord_color.lab_3ie.dec
  hoist       = true
  position    = 12
}


resource "discord_role" "lab_seal" {
  server_id   = discord_server.server.id
  name        = "SEAL"
  color       = data.discord_color.lab_seal.dec
  hoist       = true
  position    = 11
}

#
# PROMO
#

resource "discord_role" "promo_sep" {
  server_id   = discord_server.server.id
  name        = "--- Promo ---"
  color       = data.discord_color.sep.dec
  position    = 10
}

resource "discord_role" "promo" {
  server_id   = discord_server.server.id
  name        = var.promo
  color       = data.discord_color.promo.dec
  hoist       = true
  position    = 9
}

# DOWN

# resource "discord_role" "promo_down_4" {
#   server_id   = discord_server.server.id
#   name        = var.promo - 4
#   color       = data.discord_color.promo_down_4.dec
#   hoist       = true
#   position    = 0
# }

# resource "discord_role" "promo_down_3" {
#   server_id   = discord_server.server.id
#   name        = var.promo - 3
#   color       = data.discord_color.promo_up_3.dec
#   hoist       = true
#   position    = 0
# }

resource "discord_role" "promo_down_2" {
  server_id   = discord_server.server.id
  name        = var.promo - 2
  color       = data.discord_color.promo_down_2.dec
  hoist       = true
  position    = 8
}

resource "discord_role" "promo_down_1" {
  server_id   = discord_server.server.id
  name        = var.promo - 1
  color       = data.discord_color.promo_down_1.dec
  hoist       = true
  position    = 7
}

# UP

resource "discord_role" "promo_up_1" {
  server_id   = discord_server.server.id
  name        = var.promo + 1
  color       = data.discord_color.promo_up_1.dec
  hoist       = true
  position    = 6
}
resource "discord_role" "promo_up_2" {
  server_id   = discord_server.server.id
  name        = var.promo + 2
  color       = data.discord_color.promo_up_2.dec
  hoist       = true
  position    = 5
}

resource "discord_role" "promo_up_3" {
  server_id   = discord_server.server.id
  name        = var.promo + 3
  color       = data.discord_color.promo_up_3.dec
  hoist       = true
  position    = 4
}

resource "discord_role" "promo_up_4" {
  server_id   = discord_server.server.id
  name        = var.promo + 4
  color       = data.discord_color.promo_up_4.dec
  hoist       = true
  position    = 3
}

# FIXME: remove this
resource "discord_role" "boomer" {
  server_id   = discord_server.server.id
  name        = "Boomer"
  color       = data.discord_color.boomer.dec
  hoist       = true
  position    = 2
}

resource "discord_role" "alumni" {
  server_id   = discord_server.server.id
  name        = "Alumni"
  color       = data.discord_color.alumni.dec
  hoist       = true
  position    = 1
}
