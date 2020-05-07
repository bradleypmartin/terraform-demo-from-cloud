resource "aws_ssm_parameter" "param_from_cloud" {
  name  = "param_from_tf_cloud"
  type  = "String"
  value = "Hello from Terraform Cloud!"
}
