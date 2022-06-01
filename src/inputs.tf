
variable "discord_token" {
  description = "Discord API token"
  type        = string
  sensitive   = true
}

variable "promo" {
  description = "Server promotion graduating year"
  type        = number
}
