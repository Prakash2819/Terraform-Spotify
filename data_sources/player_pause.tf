data "spotify_pause" "paused_status" {}

output "is_paused" {
  value = data.spotify_pause.paused_status.paused
}