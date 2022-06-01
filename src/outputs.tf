
output "invitation" {
  description = "Main discord invit"
  value       = format("https://discord.gg/%s", discord_invite.chatting.id)
}
