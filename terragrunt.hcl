terraform {
  required_providers {
%{for k, v in local.required_providers}
    ${k} = {
      source  = "${v.source}"
      version = "${v.version}"
    }
%{endfor}
  }
  required_version = "= 1.3.9"
}
