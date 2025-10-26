locals {
  company_code  = "ad"
  environment   = "dev"
  business_unit = "ai"
  prefix        = "${local.company_code}-${local.business_unit}-${local.environment}-"
}
