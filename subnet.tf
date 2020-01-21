resource "aws_subnet" "eu-west-1a-ulan-best-com" {
  vpc_id            = "${aws_vpc.ulan-best-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "eu-west-1a.ulan-best.com"
    SubnetType                            = "Private"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
    "kubernetes.io/role/internal-elb"     = "1"
  }
}

resource "aws_subnet" "eu-west-1b-ulan-best-com" {
  vpc_id            = "${aws_vpc.ulan-best-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "eu-west-1b.ulan-best.com"
    SubnetType                            = "Private"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
    "kubernetes.io/role/internal-elb"     = "1"
  }
}

resource "aws_subnet" "eu-west-1c-ulan-best-com" {
  vpc_id            = "${aws_vpc.ulan-best-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "eu-west-1c.ulan-best.com"
    SubnetType                            = "Private"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
    "kubernetes.io/role/internal-elb"     = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1a-ulan-best-com" {
  vpc_id            = "${aws_vpc.ulan-best-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "utility-eu-west-1a.ulan-best.com"
    SubnetType                            = "Utility"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
    "kubernetes.io/role/elb"              = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1b-ulan-best-com" {
  vpc_id            = "${aws_vpc.ulan-best-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "utility-eu-west-1b.ulan-best.com"
    SubnetType                            = "Utility"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
    "kubernetes.io/role/elb"              = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1c-ulan-best-com" {
  vpc_id            = "${aws_vpc.ulan-best-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "utility-eu-west-1c.ulan-best.com"
    SubnetType                            = "Utility"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
    "kubernetes.io/role/elb"              = "1"
  }
}
