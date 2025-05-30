terraform {
    required_version = ">=1.3.0"

    required_providers {
      spotify = {
        source = "local/spotify"
      }
    }
}
provider "spotify" {
    access_token ="......."
    # paste your access token (valid for 1 hr)
}

/*resource "spotify_playlist" "playlist" {
  name        = "My Terraform Playlist"
  description = "A playlist created via Terraform local/spotify provider"
  public      = false

  tracks = [
    "2WO5nzB7QtKn9ZRc9Jkalt",
    "5GENwU66wYztXVqEOLubyF",
  ]
} */

data "spotify_search_track" "gvprakash" {
  artist ="G V Prakash"
  limit=5
}

resource "spotify_playlist" "playlist" {
  name="MY SOUL"
  tracks=flatten(
    [data.spotify_search_track.gvprakash.tracks[*].id,
  ])
}


output "playlist_url" {
  value = "https://open.spotify.com/playlist/${spotify_playlist.playlist.id}"
  description = "Visit the url in your browser to listen to the playlist"
}