resource "aws_eip" "eu-west-1a-ulan-best-com" {
  vpc = true

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "eu-west-1a.ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1b-ulan-best-com" {
  vpc = true

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "eu-west-1b.ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1c-ulan-best-com" {
  vpc = true

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "eu-west-1c.ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
  }
}
