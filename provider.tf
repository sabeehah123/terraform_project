provider "google" {
	credentials = "${file("~/.gcp/terraform_key.json")}"
	project = "axiomatic-path-219509"
	region = "europe-west2-c"
}
