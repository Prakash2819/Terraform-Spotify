data "spotify_player_devices" "devices" {}

output "first_device_name" {
  value = data.spotify_player_devices.devices.devices[0].name
}