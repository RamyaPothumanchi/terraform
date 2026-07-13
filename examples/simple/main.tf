module "my_root_module" {
  source = "../../" # Dynamic local pointer to your root module layout
}

# Add a third party open-source module that will get upgraded dynamically
module "dynamic_test" {
  source  = "terraform-aws-modules/dynamic-ssm-parameter/aws"
  version = "1.0.0" # Intentional outdated version string
  name    = "ai-test"
  value   = "showcase"
}
