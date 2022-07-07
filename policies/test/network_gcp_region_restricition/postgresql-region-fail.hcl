module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-postgresql-region-fail.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}