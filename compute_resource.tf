resource "google_compute_instance" "default" {
<<<<<<< HEAD
	name = "${var.name}"  
	machine_type = "${var.machine_type}"
	zone = "${var.zone}"
	tags = ["${var.name}"]
	boot_disk {
		initialize_params {
			image = "${var.image}"
		}
	}
	network_interface { 
		network = "${var.network}"
=======
	name = "jenkins"  
	machine_type = "n1-standard-1"
	zone = "europe-west2-c"
	tags = ["jenkins"]
	boot_disk {
		initialize_params {
			image = "centos-7"
		}
	}
	network_interface { 
		network = "default"
>>>>>>> 8941b0b751f8764b14d7688f7d4e9bf77f6fa516
		access_config {
			// Ephemeral IP
		}
	}

	metadata { 
<<<<<<< HEAD
		sshKeys = "${var.ssh_user}:${file("${var.public_key}")}"
	}
	connection  = { 
		type = "ssh"
		user = "${var.ssh_user}" 
		private_key = "${file("${var.private_key}")}"
	} 
	provisioner "remote-exec" {
		scripts = [
			"${var.scripts}" 
=======
		sshKeys = "terraform:${file("~/.ssh/id_rsa.pub")}"
	}
	connection  = { 
		type = "ssh"
		user = "terraform" 
		private_key = "${file("~/.ssh/id_rsa")}"
	}
	provisioner "remote-exec" { 
		inline = [
			"sudo yum install -y java" 
		]
	} 
	provisioner "remote-exec" {
		scripts = [
			"scripts/test1" 
>>>>>>> 8941b0b751f8764b14d7688f7d4e9bf77f6fa516
		]
	}

} 
