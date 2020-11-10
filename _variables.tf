variable "enabled" {
  type        = bool
  default     = true
  description = "Variable indicating whether deployment is enabled."
}

variable "cluster_name" {
  type        = string
  description = "The name of the cluster."
}

variable "cluster_identity_oidc_issuer" {
  type        = string
  description = "The OIDC Identity issuer for the cluster."
}

variable "cluster_identity_oidc_issuer_arn" {
  type        = string
  description = "The OIDC Identity issuer ARN for the cluster that can be used to associate IAM roles with a service account."
}

variable "helm_chart_name" {
  type        = string
  default     = "aws-cloudwatch-metrics"
  description = "CloudWatch Agent Helm chart name."
}

variable "helm_chart_release_name" {
  type        = string
  default     = "aws-cloudwatch-metrics"
  description = "CloudWatch Agent Helm release name."
}

variable "helm_chart_repo" {
  type        = string
  default     = "https://aws.github.io/eks-charts"
  description = "CloudWatch Agent Helm repository name."
}

variable "helm_chart_version" {
  type        = string
  default     = "0.0.1"
  description = "CloudWatch Agent Helm chart version."
}

variable "create_namespace" {
  type        = bool
  default     = true
  description = "Whether to create Kubernetes namespace with name defined by `namespace`."
}

variable "namespace" {
  type        = string
  default     = "amazon-cloudwatch"
  description = "Kubernetes namespace to deploy CloudWatch Agent Helm chart."
}

variable "service_account_name" {
  type        = string
  default     = "aws-cloudwatch-metrics"
  description = "cloudwatch-metrics service account name."
}

variable "mod_dependency" {
  default     = null
  description = "Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable."
}

variable "worker_iam_role_name" {
  type        = string
  description = "IAM role name for EKS worker groups."
}