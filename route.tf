resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.ulan-best-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.ulan-best-com.id}"
}

resource "aws_route" "private-eu-west-1a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1a-ulan-best-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1a-ulan-best-com.id}"
}

resource "aws_route" "private-eu-west-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1b-ulan-best-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1b-ulan-best-com.id}"
}

resource "aws_route" "private-eu-west-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1c-ulan-best-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1c-ulan-best-com.id}"
}

resource "aws_route53_record" "api-ulan-best-com" {
  name = "api.ulan-best.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-ulan-best-com.dns_name}"
    zone_id                = "${aws_elb.api-ulan-best-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z11HUQ2CPZZDNC"
}

resource "aws_route53_record" "bastion-ulan-best-com" {
  name = "bastion.ulan-best.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-ulan-best-com.dns_name}"
    zone_id                = "${aws_elb.bastion-ulan-best-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z11HUQ2CPZZDNC"
}

resource "aws_route_table" "private-eu-west-1a-ulan-best-com" {
  vpc_id = "${aws_vpc.ulan-best-com.id}"

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "private-eu-west-1a.ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
    "kubernetes.io/kops/role"             = "private-eu-west-1a"
  }
}

resource "aws_route_table" "private-eu-west-1b-ulan-best-com" {
  vpc_id = "${aws_vpc.ulan-best-com.id}"

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "private-eu-west-1b.ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
    "kubernetes.io/kops/role"             = "private-eu-west-1b"
  }
}

resource "aws_route_table" "private-eu-west-1c-ulan-best-com" {
  vpc_id = "${aws_vpc.ulan-best-com.id}"

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "private-eu-west-1c.ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
    "kubernetes.io/kops/role"             = "private-eu-west-1c"
  }
}

resource "aws_route_table" "ulan-best-com" {
  vpc_id = "${aws_vpc.ulan-best-com.id}"

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
    "kubernetes.io/kops/role"             = "public"
  }
}

resource "aws_route_table_association" "private-eu-west-1a-ulan-best-com" {
  subnet_id      = "${aws_subnet.eu-west-1a-ulan-best-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1a-ulan-best-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1b-ulan-best-com" {
  subnet_id      = "${aws_subnet.eu-west-1b-ulan-best-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1b-ulan-best-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1c-ulan-best-com" {
  subnet_id      = "${aws_subnet.eu-west-1c-ulan-best-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1c-ulan-best-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1a-ulan-best-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1a-ulan-best-com.id}"
  route_table_id = "${aws_route_table.ulan-best-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1b-ulan-best-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1b-ulan-best-com.id}"
  route_table_id = "${aws_route_table.ulan-best-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1c-ulan-best-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1c-ulan-best-com.id}"
  route_table_id = "${aws_route_table.ulan-best-com.id}"
}
