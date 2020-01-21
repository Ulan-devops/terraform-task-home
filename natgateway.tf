resource "aws_nat_gateway" "eu-west-1a-ulan-best-com" {
  allocation_id = "${aws_eip.eu-west-1a-ulan-best-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1a-ulan-best-com.id}"

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "eu-west-1a.ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1b-ulan-best-com" {
  allocation_id = "${aws_eip.eu-west-1b-ulan-best-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1b-ulan-best-com.id}"

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "eu-west-1b.ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1c-ulan-best-com" {
  allocation_id = "${aws_eip.eu-west-1c-ulan-best-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1c-ulan-best-com.id}"

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "eu-west-1c.ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
  }
}
