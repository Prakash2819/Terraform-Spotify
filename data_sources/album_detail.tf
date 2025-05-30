data "spotify_album" "album" {
  id = "1ATL5GLyefJaxhQzSPVrLX"  # Example: Imagine Dragons - Evolve
}

output "album_name" {
  value = data.spotify_album.album.name
}