module "tfstate_backend" {
  source = "github.com/opsd-io/terraform-module-digitalocean-backend?ref=main"

  name   = "terraform-backend-example"
  region = "fra1"
}

# After first apply run:
# % cp backend.tf.sample backend.tf
# % terraform init -migrate-state -force-copy -backend-config key=terraform.tfstate
resource "local_file" "backend_config" {
  content              = module.tfstate_backend.backend_config
  filename             = "${path.root}/backend.tf.sample"
  directory_permission = "0750"
  file_permission      = "0640"
}
