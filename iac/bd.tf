resource "docker_container" "bd" {
    name = "bd-${terraform.workspace}"
    image = "lab/bd"

    ports{
        internal = "3000"
        external = var.bd_port[terraform.workspace]
    }
}