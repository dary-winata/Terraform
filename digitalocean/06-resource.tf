resource "digitalocean_droplet" "server_resource" {
    name = var.droplet_name
    image = var.droplet_image
    size = var.droplet_size
    region = var.droplet_region
    ssh_keys = [ data.digitalocean_ssh_key.ssh_mentor.id ]

    connection {
        host = self.ipv4_address
        type = "ssh"
        user = "root"
        private_key = file(var.pvt_key_loc)
    }

    provisioner "file" {
        source = "../Ansible"
        destination = "/tmp/"
    }

    provisioner "remote-exec" { #init mkdir and install dependency
        inline = [
          "yum install epel-release -y",
          "yum install ansible -y",
          "ansible-playbook /tmp/Ansible/provisioning.yaml"
        ]
    }
}

output "ip_addr" {
    value = digitalocean_droplet.server_resource.ipv4_address
}