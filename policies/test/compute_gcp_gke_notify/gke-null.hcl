module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "./gke-null.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
