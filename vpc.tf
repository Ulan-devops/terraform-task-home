resource "aws_vpc" "ulan-best-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "ulan-best-com" {
  domain_name         = "eu-west-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "ulan-best-com" {
  vpc_id          = "${aws_vpc.ulan-best-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.ulan-best-com.id}"
}
