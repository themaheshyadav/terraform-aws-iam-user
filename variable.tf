variable "name"{
      type = string
      default = ""
      
}

variable "path"{
      type = string
      default = ""
      
}

variable "tag"{
      type = map(any)
      default = {}
      
} 

variable "enabled" {
      type = bool
      default = true
}
variable "policy_enabled" {
      type = bool 
      default = true
}

variable "force_destroy" {
      type = bool 
      default = true
}
variable "policy_name" {
      type = string 
      default = ""
}

variable "user_name" {
      type = string 
      default = ""
}



variable "policy_arn" {
      type        = string
      default     = ""
      description = "The ARN of the policy you want to apply."
      sensitive   = true
}
