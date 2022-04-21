variable "ENV"    {
  default        = "dev"
}
variable "PREFIX" {
  default        = "IT"
}
variable "vnet" {
  type           = list(string)
  default        = ["10.0.0.0/16"]
}
variable "web" {
  type           = string
  default        = "websubnets"
}
variable "subnet_address" {
  type           = list(string)
  default        = ["10.0.1.0/24"]
}

