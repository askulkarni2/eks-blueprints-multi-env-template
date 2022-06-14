# tflint-ignore: terraform_unused_declarations
variable "cluster_name" {
  description = "Name of cluster - used by Terratest for e2e test automation"
  type        = string
  default     = ""
}

variable "eks_cluster_domain" {
  type        = string
  description = "Route53 domain for the cluster."
  default     = "kuapoorv.people.aws.dev"
}

variable "acm_certificate_domain" {
  type        = string
  description = "Route53 certificate domain"
  default     = "*.kuapoorv.people.aws.dev"
}

variable "datadog_api_key" {
  type      = string
  sensitive = true
}