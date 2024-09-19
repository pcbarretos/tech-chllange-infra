# Modules Docs

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.66.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.15.0 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | 1.14.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.32.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.66.0 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.15.0 |
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | 1.14.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | terraform-aws-modules/eks/aws | 20.24.0 |
| <a name="module_karpenter"></a> [karpenter](#module\_karpenter) | terraform-aws-modules/eks/aws//modules/karpenter | 20.24.0 |
| <a name="module_kube-state-metrics"></a> [kube-state-metrics](#module\_kube-state-metrics) | lablabs/eks-kube-state-metrics/aws | 0.8.0 |
| <a name="module_metrics-server"></a> [metrics-server](#module\_metrics-server) | lablabs/eks-kube-state-metrics/aws | 0.8.0 |
| <a name="module_prometheus-stack"></a> [prometheus-stack](#module\_prometheus-stack) | lablabs/eks-kube-state-metrics/aws | 0.8.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | 5.13.0 |

## Resources

| Name | Type |
|------|------|
| [helm_release.karpenter](https://registry.terraform.io/providers/hashicorp/helm/2.15.0/docs/resources/release) | resource |
| [kubectl_manifest.karpenter_node_class](https://registry.terraform.io/providers/gavinbunney/kubectl/1.14.0/docs/resources/manifest) | resource |
| [kubectl_manifest.karpenter_node_pool](https://registry.terraform.io/providers/gavinbunney/kubectl/1.14.0/docs/resources/manifest) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/5.66.0/docs/data-sources/availability_zones) | data source |
| [aws_ecrpublic_authorization_token.token](https://registry.terraform.io/providers/hashicorp/aws/5.66.0/docs/data-sources/ecrpublic_authorization_token) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_type"></a> [ami\_type](#input\_ami\_type) | The type of the AMI to use for the instances. | `string` | n/a | yes |
| <a name="input_cluster_endpoint_public_access"></a> [cluster\_endpoint\_public\_access](#input\_cluster\_endpoint\_public\_access) | Endpoint public endpoint public access enabled | `bool` | `true` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the cluster | `string` | n/a | yes |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | Version of Kubernetes to install the cluster | `string` | n/a | yes |
| <a name="input_create_pod_identity_association"></a> [create\_pod\_identity\_association](#input\_create\_pod\_identity\_association) | Enable pod identity association usage | `bool` | `true` | no |
| <a name="input_creator_admin_permissions"></a> [creator\_admin\_permissions](#input\_creator\_admin\_permissions) | Role ARN to use for administrator created on the cluster | `bool` | `true` | no |
| <a name="input_desired_size"></a> [desired\_size](#input\_desired\_size) | Desired number of nodes for the cluster. | `number` | n/a | yes |
| <a name="input_enable_nat_gateway"></a> [enable\_nat\_gateway](#input\_enable\_nat\_gateway) | Enable or disable NAT Gateway | `bool` | `true` | no |
| <a name="input_enable_pod_identity"></a> [enable\_pod\_identity](#input\_enable\_pod\_identity) | Enable pod identity usage | `bool` | `true` | no |
| <a name="input_enable_v1_permissions"></a> [enable\_v1\_permissions](#input\_enable\_v1\_permissions) | Enable | `bool` | `true` | no |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | Worker instance types for worker nodes | `list(string)` | n/a | yes |
| <a name="input_kube_state_metrics_version"></a> [kube\_state\_metrics\_version](#input\_kube\_state\_metrics\_version) | Version of the Metrics server Helm Chart | `string` | n/a | yes |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | Maximum number of nodes for the cluster. | `number` | n/a | yes |
| <a name="input_metrics_server_namespace"></a> [metrics\_server\_namespace](#input\_metrics\_server\_namespace) | Namespace of the Metrics server Install Helm Chart | `string` | `"kube-system"` | no |
| <a name="input_metrics_server_version"></a> [metrics\_server\_version](#input\_metrics\_server\_version) | Version of the Metrics server Helm Chart | `string` | n/a | yes |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | Minimum number of nodes for the cluster. | `number` | n/a | yes |
| <a name="input_one_nat_gateway_per_az"></a> [one\_nat\_gateway\_per\_az](#input\_one\_nat\_gateway\_per\_az) | Enable or disable NAT Gateway | `bool` | `false` | no |
| <a name="input_prometheus_stack_namespace"></a> [prometheus\_stack\_namespace](#input\_prometheus\_stack\_namespace) | Namespace of the Prometheus Stack install Helm Chart | `string` | `"monitoring"` | no |
| <a name="input_prometheus_stack_versions"></a> [prometheus\_stack\_versions](#input\_prometheus\_stack\_versions) | Version of the Metrics server Helm Chart | `string` | n/a | yes |
| <a name="input_single_nat_gateway"></a> [single\_nat\_gateway](#input\_single\_nat\_gateway) | Enable or disable NAT Gateway | `bool` | `true` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR block for VPC | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | The Amazon Resource Name (ARN) of the cluster |
| <a name="output_cluster_certificate_authority_data"></a> [cluster\_certificate\_authority\_data](#output\_cluster\_certificate\_authority\_data) | Base64 encoded certificate data required to communicate with the cluster |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | Endpoint for your Kubernetes API server |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | The ID of the EKS cluster. Note: currently a value is returned only for local EKS clusters created on Outposts |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | The name of the EKS cluster |
| <a name="output_cluster_oidc_issuer_url"></a> [cluster\_oidc\_issuer\_url](#output\_cluster\_oidc\_issuer\_url) | The URL on the EKS cluster for the OpenID Connect identity provider |
| <a name="output_karpenter_iam_role_arn"></a> [karpenter\_iam\_role\_arn](#output\_karpenter\_iam\_role\_arn) | The Amazon Resource Name (ARN) specifying the controller IAM role |
| <a name="output_karpenter_iam_role_name"></a> [karpenter\_iam\_role\_name](#output\_karpenter\_iam\_role\_name) | The name of the controller IAM role |
| <a name="output_karpenter_instance_profile_arn"></a> [karpenter\_instance\_profile\_arn](#output\_karpenter\_instance\_profile\_arn) | ARN assigned by AWS to the instance profile |
| <a name="output_karpenter_instance_profile_id"></a> [karpenter\_instance\_profile\_id](#output\_karpenter\_instance\_profile\_id) | Instance profile's ID |
| <a name="output_karpenter_instance_profile_name"></a> [karpenter\_instance\_profile\_name](#output\_karpenter\_instance\_profile\_name) | Name of the instance profile |
| <a name="output_karpenter_queue_arn"></a> [karpenter\_queue\_arn](#output\_karpenter\_queue\_arn) | The ARN of the SQS queue |
| <a name="output_karpenter_queue_name"></a> [karpenter\_queue\_name](#output\_karpenter\_queue\_name) | The name of the created Amazon SQS queue |
| <a name="output_karpenter_queue_url"></a> [karpenter\_queue\_url](#output\_karpenter\_queue\_url) | The URL for the created Amazon SQS queue |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | List of IDs of private subnets |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | List of IDs of public subnets |
| <a name="output_vpc_arn"></a> [vpc\_arn](#output\_vpc\_arn) | The ARN of the VPC |
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block) | The CIDR block of the VPC |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- BEGIN_TF_DOCS -->


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_type"></a> [ami\_type](#input\_ami\_type) | The type of the AMI to use for the instances. | `string` | n/a | yes |
| <a name="input_cluster_endpoint_public_access"></a> [cluster\_endpoint\_public\_access](#input\_cluster\_endpoint\_public\_access) | Endpoint public endpoint public access enabled | `bool` | `true` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the cluster | `string` | n/a | yes |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | Version of Kubernetes to install the cluster | `string` | n/a | yes |
| <a name="input_create_pod_identity_association"></a> [create\_pod\_identity\_association](#input\_create\_pod\_identity\_association) | Enable pod identity association usage | `bool` | `true` | no |
| <a name="input_creator_admin_permissions"></a> [creator\_admin\_permissions](#input\_creator\_admin\_permissions) | Role ARN to use for administrator created on the cluster | `bool` | `true` | no |
| <a name="input_desired_size"></a> [desired\_size](#input\_desired\_size) | Desired number of nodes for the cluster. | `number` | n/a | yes |
| <a name="input_enable_nat_gateway"></a> [enable\_nat\_gateway](#input\_enable\_nat\_gateway) | Enable or disable NAT Gateway | `bool` | `true` | no |
| <a name="input_enable_pod_identity"></a> [enable\_pod\_identity](#input\_enable\_pod\_identity) | Enable pod identity usage | `bool` | `true` | no |
| <a name="input_enable_v1_permissions"></a> [enable\_v1\_permissions](#input\_enable\_v1\_permissions) | Enable | `bool` | `true` | no |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | Worker instance types for worker nodes | `list(string)` | n/a | yes |
| <a name="input_kube_state_metrics_version"></a> [kube\_state\_metrics\_version](#input\_kube\_state\_metrics\_version) | Version of the Metrics server Helm Chart | `string` | n/a | yes |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | Maximum number of nodes for the cluster. | `number` | n/a | yes |
| <a name="input_metrics_server_namespace"></a> [metrics\_server\_namespace](#input\_metrics\_server\_namespace) | Namespace of the Metrics server Install Helm Chart | `string` | `"kube-system"` | no |
| <a name="input_metrics_server_version"></a> [metrics\_server\_version](#input\_metrics\_server\_version) | Version of the Metrics server Helm Chart | `string` | n/a | yes |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | Minimum number of nodes for the cluster. | `number` | n/a | yes |
| <a name="input_one_nat_gateway_per_az"></a> [one\_nat\_gateway\_per\_az](#input\_one\_nat\_gateway\_per\_az) | Enable or disable NAT Gateway | `bool` | `false` | no |
| <a name="input_prometheus_stack_namespace"></a> [prometheus\_stack\_namespace](#input\_prometheus\_stack\_namespace) | Namespace of the Prometheus Stack install Helm Chart | `string` | `"monitoring"` | no |
| <a name="input_prometheus_stack_versions"></a> [prometheus\_stack\_versions](#input\_prometheus\_stack\_versions) | Version of the Metrics server Helm Chart | `string` | n/a | yes |
| <a name="input_single_nat_gateway"></a> [single\_nat\_gateway](#input\_single\_nat\_gateway) | Enable or disable NAT Gateway | `bool` | `true` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR block for VPC | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | The Amazon Resource Name (ARN) of the cluster |
| <a name="output_cluster_certificate_authority_data"></a> [cluster\_certificate\_authority\_data](#output\_cluster\_certificate\_authority\_data) | Base64 encoded certificate data required to communicate with the cluster |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | Endpoint for your Kubernetes API server |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | The ID of the EKS cluster. Note: currently a value is returned only for local EKS clusters created on Outposts |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | The name of the EKS cluster |
| <a name="output_cluster_oidc_issuer_url"></a> [cluster\_oidc\_issuer\_url](#output\_cluster\_oidc\_issuer\_url) | The URL on the EKS cluster for the OpenID Connect identity provider |
| <a name="output_karpenter_iam_role_arn"></a> [karpenter\_iam\_role\_arn](#output\_karpenter\_iam\_role\_arn) | The Amazon Resource Name (ARN) specifying the controller IAM role |
| <a name="output_karpenter_iam_role_name"></a> [karpenter\_iam\_role\_name](#output\_karpenter\_iam\_role\_name) | The name of the controller IAM role |
| <a name="output_karpenter_instance_profile_arn"></a> [karpenter\_instance\_profile\_arn](#output\_karpenter\_instance\_profile\_arn) | ARN assigned by AWS to the instance profile |
| <a name="output_karpenter_instance_profile_id"></a> [karpenter\_instance\_profile\_id](#output\_karpenter\_instance\_profile\_id) | Instance profile's ID |
| <a name="output_karpenter_instance_profile_name"></a> [karpenter\_instance\_profile\_name](#output\_karpenter\_instance\_profile\_name) | Name of the instance profile |
| <a name="output_karpenter_queue_arn"></a> [karpenter\_queue\_arn](#output\_karpenter\_queue\_arn) | The ARN of the SQS queue |
| <a name="output_karpenter_queue_name"></a> [karpenter\_queue\_name](#output\_karpenter\_queue\_name) | The name of the created Amazon SQS queue |
| <a name="output_karpenter_queue_url"></a> [karpenter\_queue\_url](#output\_karpenter\_queue\_url) | The URL for the created Amazon SQS queue |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | List of IDs of private subnets |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | List of IDs of public subnets |
| <a name="output_vpc_arn"></a> [vpc\_arn](#output\_vpc\_arn) | The ARN of the VPC |
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block) | The CIDR block of the VPC |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
<!-- END_TF_DOCS -->