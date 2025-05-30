data "spotify_play" "playing_status" {}

output "is_playing" {
  value = data.spotify_play.playing_status.playing
}