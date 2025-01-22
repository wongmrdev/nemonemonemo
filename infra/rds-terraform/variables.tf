variable "nnn_rds_db_user" {
  type        = string
  description = "RDS DB username"
  sensitive   = true
}

variable "nnn_rds_db_password" {
  type        = string
  description = "RDS DB password"
  sensitive   = true
}
