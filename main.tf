resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name 
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value
  overwrite = true
  key_id = "arn:aws:kms:us-east-1:851512651356:key/a916f8da-24bf-448f-af0a-7f41d920fce0"
}

variable "parameters" {
    default = [
      { name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString" }, #here each value is a map
      { name = "prod.rds.master_username", value = "mysqlrdsadmin", type = "String" },
      { name = "prod.expense.frontend.backend_url", value = "http://backend-prod.vaishnavidevops.online/", type = "String" },
      { name = "prod.rds.endpoint", value = "prod-mysql.cluster-cjgq1e8tovjw.us-east-1.rds.amazonaws.com", type = "String" },
      { name = "prod.backend.app_version", value = "1.0.1", type = "String" },
      { name = "prod.frontend.app_version", value = "1.0.2", type = "String" },

      { name = "dev.expense.frontend.backend_url", value = "http://backend-dev.vaishnavidevops.online/", type = "String" },

      { name = "jenkins_password", value = "admin1234", type = "SecureString" },
      { name = "artifactory_username", value = "admin", type = "String" },
      { name = "artifactory_password", value = "Dontknow29", type = "SecureString" },
      { name = "ssh_username", value = "centos", type = "String" },
      { name = "ssh_password", value = "DevOps321", type = "SecureString" }

    ]
}

