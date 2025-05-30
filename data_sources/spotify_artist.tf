data "spotify_search_track" "gvprakash" {
  artist ="Anirudh ravichander"
  limit=5
}

resource "spotify_playlist" "playlist" {
  name="Nilavukku Enmel Ennadi Kobam"
  tracks=flatten(
    [data.spotify_search_track.gvprakash.tracks[*].id,
  ])
}