module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "google_secret_manager_secret-fail.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}

param "org" {
  value = [ "wf" ]
}

param "country" {
  value = [ "us" ]
}

param "gcp_region" {
  value = [ "US" ]
}

param "owner" {
  value = ["hybridenv"] 
}

param "application_division" {
  value =  ["pci", "paa", "hdpa", "hra", "others"]
}

param "application_name" {
  value =  ["app1","demo"]
}

param "application_role" {
  value = ["app", "web", "auth", "data"]
}

param "environment" {
  value =   ["prod", "int", "uat", "stage", "dev", "test"] 
}

param "au" {
  value = [ "0223092" ]
}