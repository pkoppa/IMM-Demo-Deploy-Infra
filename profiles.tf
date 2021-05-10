
module "org_details" {
  source            = "./modules/get_org_moid"
  organization_name = var.org_name
}



resource "intersight_server_profile" "FP-RHEL-Server-7" {
  name = var.name_of_server_profiles
  target_platform = "FIAttached"


  assigned_server = [{
    moid = "603005b26176752d37cc4f7b"
    object_type = "compute.Blade"
    class_id = "compute.Blade"
    additional_properties = ""
    selector = ""
  }]


  organization {
    object_type = "organization.Organization"
    moid = module.org_details.organization_moid
  }
  
  action= "Deploy"

}
