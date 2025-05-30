data "spotify_current_user" "me" {}

output "my_display_name" {
  value = data.spotify_current_user.me.display_name
}