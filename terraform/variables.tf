variable "location" {
  type    = string
  default = "Canada East"
  validation {
    condition = contains(["Canada Central", "Canada East"], var.location)
    error_message = "The Location can either be Canada Central or Canada East"
  }
}


variable "sa_name" {
  type    = string
  default = ""
  validation {
    condition = length(var.sa_name) < 24 && lower(var.sa_name) == var.sa_name && !contains(["-"], var.sa_name)
    error_message = "The SA name should be less than 24 Characters and lowercase "
  }
}


variable "account_tier" {
  type = string
  # sensitive = true
  default = ""
}

