module "root_infrastructure_test" {
  # Points to the root level directory containing the resource blocks above
  source = "../../"

  aws_region  = "us-west-2"
  environment = "testing-suite"
}

output "test_suite_bucket_arn" {
  value = module.root_infrastructure_test.bucket_arn
}
