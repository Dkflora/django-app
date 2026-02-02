terraform {
  backend "s3" {
    bucket       = "makasiw7backet"      # add your backet name here
    key          = "django-ecr-infra/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = false
  }
}