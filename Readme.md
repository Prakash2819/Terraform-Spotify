# CREATE A SPOTIFY PLAYLIST WITH TERRAFORM

Terraform manages infrastructure on cloud computing providers such as AWS,Azure and GCP.But it can also manage resources in hundreds of other services, including the music service spotify

Follow this tutorial to build your own .
https:hashi.co/terraform-spotify-playlist

# Prerequisites:

            1.Terraform version 1.0+
            2.Spotify account with developer access
            3.vs code

# 1.Create Spotify developer app
          1.Login to the spotify developer dashboard
          2.create an app
                     name : Terraform playlist demo
                     description : create a spotify playlist using Terraform
          3.click "Save"

# 2.copy the access token of your spotify account


# Clone repository 
        git clone https:github.com/prakash2819/terraform-spotify.git

# Explore the configuration   "main.tf"

terraform {
    required_version = ">=1.3.0"

    required_providers {
      spotify = {
        source = "local/spotify"
      }
    }
}
provider "spotify" {
    access_token =" your access token "   # paste your acces token 

# you can customize resources on your own and data source block and share                   

# Cli configuration File "terraform.rc"

provider_installation {
  dev_overrides {
    "local/spotify" = "C:/Users/<your-user>/projects/terraform-spotify/providers"     # change your path
  }
  direct {}
}

# Put the "terraform.rc" terraform cli configuration file to detect the local spotify provider
for Windows :
          path: c:\users\<your-user>\AppData\Roaming

For macOS/Linux:
               
          ~/.terraformrc      

Then Confirm it .

# Confirm it Exists :
  open your command prompt and run 
            
(Windows):     type %APPDATA%\terraform.rc 

(macOS/Linux): cat ~/.terraformrc         


Now done ! You can create your Playlists with spotify using terraform commands :

                       Terraform init   (there is no need to use this command because we using local provider)
                       Terraform plan
                       Terraform apply -auto-approve


you can customize your output. The output as a link to listen the playlist or Go directly check in your spotify ! 
