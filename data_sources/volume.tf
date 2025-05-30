data "spotify_player_devices" "devices" {}

resource "spotify_player_volume" "set_volume" {
  volume_percent = 60
  device_id      = data.spotify_player_devices.devices.devices[0].id
}
