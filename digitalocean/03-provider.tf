terraform {
    required_providers{
        digitalocean = {
            source = "digitalocean/digitalocean"
            version = "2.10"
        }
    }
}

provider "digitalocean" {
  token = var.do_tokens
}