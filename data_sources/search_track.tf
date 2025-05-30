data "spotify_search_track" "track" {
  query = "Bohemian Rhapsody"
}

output "first_track_found" {
  value = data.spotify_search_track.track.tracks[0].name
}