# terraform-aws-eks-cloudwatch-metrics

[![Lint Status](https://github.com/DNXLabs/terraform-aws-eks-cloudwatch-metrics/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-eks-cloudwatch-metrics/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-eks-cloudwatch-metrics)](https://github.com/DNXLabs/terraform-aws-eks-cloudwatch-metrics/blob/master/LICENSE)

Terraform module for deploying AWS [CloudWatch Agent](https://github.com/aws/amazon-cloudwatch-agent) inside a pre-existing EKS cluster.

## Usage

```
module "cloudwatch_metrics" {
  source = "git::https://github.com/DNXLabs/terraform-aws-eks-cloudwatch-metrics.git"

  cluster_name                     = module.eks_cluster.cluster_id
  cluster_identity_oidc_issuer     = module.eks_cluster.cluster_oidc_issuer_url
  cluster_identity_oidc_issuer_arn = module.eks_cluster.oidc_provider_arn
  worker_iam_role_name             = module.eks_cluster.worker_iam_role_name
}
```

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | >= 3.13 |
| helm | >= 1.0 |
| kubernetes | >= 1.10.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.13 |
| helm | >= 1.0 |
| kubernetes | >= 1.10.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cluster\_identity\_oidc\_issuer | The OIDC Identity issuer for the cluster. | `string` | n/a | yes |
| cluster\_identity\_oidc\_issuer\_arn | The OIDC Identity issuer ARN for the cluster that can be used to associate IAM roles with a service account. | `string` | n/a | yes |
| cluster\_name | The name of the cluster. | `string` | n/a | yes |
| create\_namespace | Whether to create Kubernetes namespace with name defined by `namespace`. | `bool` | `true` | no |
| enabled | Variable indicating whether deployment is enabled. | `bool` | `true` | no |
| helm\_chart\_name | CloudWatch Agent Helm chart name. | `string` | `"aws-cloudwatch-metrics"` | no |
| helm\_chart\_release\_name | CloudWatch Agent Helm release name. | `string` | `"aws-cloudwatch-metrics"` | no |
| helm\_chart\_repo | CloudWatch Agent Helm repository name. | `string` | `"https://aws.github.io/eks-charts"` | no |
| helm\_chart\_version | CloudWatch Agent Helm chart version. | `string` | `"0.0.4"` | no |
| mod\_dependency | Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable. | `any` | `null` | no |
| namespace | Kubernetes namespace to deploy CloudWatch Agent Helm chart. | `string` | `"aws-cloudwatch-metrics"` | no |
| service\_account\_name | cloudwatch-metrics service account name. | `string` | `"aws-cloudwatch-metrics"` | no |
| settings | Additional settings which will be passed to the Helm chart values. | `map` | `{}` | no |
| worker\_iam\_role\_name | IAM role name for EKS worker groups. | `string` | n/a | yes |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-eks-cloudwatch-metrics/blob/master/LICENSE) for full details.