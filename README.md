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


<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-eks-cloudwatch-metrics/blob/master/LICENSE) for full details.