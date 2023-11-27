resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name 
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value
}

variable "parameters" {
    default = [
      {name = "prod.rds.master_password", value = "expenseprod1234", type = "Securestring"}, #here each value is a map
      {name = "prod.rds.master_username", value = "expense", type = "String"}
    ]
}

