resource "aws_service_discovery_private_dns_namespace" "ecs-service-namespace" {
  count       = var.enable_service_discovery ? 1 : 0
  name        = var.aws_ecs_service_name
  vpc         = var.vpc_id
}

resource "aws_service_discovery_service" "ecs_service_discovery" {
  count = var.enable_service_discovery ? 1 : 0
  name  = var.aws_ecs_service_name
  dns_config {
    namespace_id = aws_service_discovery_private_dns_namespace.ecs-service-namespace[0].id
    dns_records {
      ttl  = 10
      type = "A"
    }
    routing_policy = "WEIGHTED"
  }
  health_check_custom_config {
    failure_threshold = 1
  }
}
