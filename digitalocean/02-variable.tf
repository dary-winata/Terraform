variable "do_tokens" {
    type = string
    description = "Token yang telah dibuat untuk akses"
}

variable "droplet_image" {
    type = string
    description = "droplet image for base os. See https://slugs.do-api.dev/"
}

variable "droplet_size" {
    type = string
    description = "droplet size for storage, cpu, ram etc. See https://slugs.do-api.dev/"
}

variable "terraform_version" {
    type = string
    description = "terraform version"
}

variable "droplet_name" {
    type = string
    description = "giving digital-ocean droplate name"
}

variable "droplet_region" {
    type = string
    description = "region for droplet starting. See https://slugs.do-api.dev/"
}

variable "ssh_name" {
    type = string
    description = "giving ssh access for user."
}

variable "pvt_key_loc" {
    type = string
    description = "location ssh private key"
}