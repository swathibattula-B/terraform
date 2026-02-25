resource "aws_route53_record" "www_instances" {
  for_each = toset(var.instances)

  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[each.key].private_ip]
}