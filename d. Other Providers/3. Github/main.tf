terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.2.3"
    }
  }
}

provider "github" {
  # Configuration options
}

resource "github_repository" "repo" {
  name        = "TerraformPractice"
  description = "Terraform full practice"

  visibility = "public"
}