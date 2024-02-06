## cluster variable
variable "create_ecs_cluster" {
    type = bool
    default = false
}
variable "ecs_cluster_name" {}

## service variable
variable "create_ecs_service" {
    type = bool
    default = false
}
variable "ecs_service_name" {}
variable "task_definition_name" {}
variable "desired_count" {}
variable "ecs_service_launch_type" {}
variable "ecs_subnet_id" {}
variable "assign_public_ip" {}
variable "enable_service_discovery" {
    type = bool
    default = false
}
variable "container_name"{}

## task defination variable

variable "ecs_requires_compatibilities" {}
variable "network_mode" {}
variable "task_def_cpu" {}
variable "task_def_memory" {}
variable "container_definitions_path" {}

## security group

variable "vpc_id" {
  type        = string
}
variable "ecs_security_group_name" {
  type        = string
}

variable "ecs_ingress_rules" {
  type        = list(string)
}

variable "ecs_ingress_cidr_blocks" {
  type        = list(string)
}

variable "ecs_ingress_rules_from_port" {
  type        = list(number)
}

variable "ecs_ingress_rules_to_port" {
  type        = list(number)
}

variable "ecs_ingress_rules_protocols" {
  type        = list(string)
}

variable "ecs_egress_rules" {
  type        = list(string)
}

variable "ecs_egress_cidr_blocks" {
  type        = list(string)
}

variable "ecs_egress_rules_from_port" {
  type        = list(number)
}

variable "ecs_egress_rules_to_port" {
  type        = list(number)
}

variable "ecs_egress_rules_protocols" {
  type        = list(string)
}



