variable "ENV"    {
  default        = "dev"
}
variable "PREFIX" {
  default        = "IT"
}
variable "vnet" {
  default        = ["10.0.0.0/16"]
}
variable "web" {
  default        = ["websubnets"]
}
variable "subnet_address" {
  default        = ["10.0.1.0/24"]
}
