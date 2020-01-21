resource "aws_internet_gateway" "ulan-best-com" {
  vpc_id = "${aws_vpc.ulan-best-com.id}"

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
  }
}