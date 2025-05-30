data "spotify_user" "user" {
  user_id = "spotify"  # Spotify's official user
}

output "spotify_user_display_name" {
  value = data.spotify_user.user.display_name
}
