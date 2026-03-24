variable "app_name" {
  description = "Nom de l'application — utilisé comme préfixe des ressources"
  type        = string
  default     = "devops-formation"
}

variable "environment" {
  description = "Environnement cible"
  type        = string
  default     = "staging"
  validation {
    condition     = contains(["staging", "production"], var.environment)
    error_message = "environment doit être 'staging' ou 'production'."
  }
}

variable "region" {
  description = "Région Scaleway"
  type        = string
  default     = "fr-par"
}

variable "zone" {
  description = "Zone Scaleway"
  type        = string
  default     = "fr-par-1"
}

variable "instance_type" {
  description = "Type d'instance Scaleway"
  type        = string
  default     = "DEV2-2"
}
