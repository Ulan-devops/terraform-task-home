resource "aws_elb" "api-ulan-best-com" {
  name = "api-ulan-best-com-heg5gf"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-ulan-best-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-ulan-best-com.id}", "${aws_subnet.utility-eu-west-1b-ulan-best-com.id}", "${aws_subnet.utility-eu-west-1c-ulan-best-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  cross_zone_load_balancing = false
  idle_timeout              = 300

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "api.ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
  }
}

resource "aws_elb" "bastion-ulan-best-com" {
  name = "bastion-ulan-best-com-9slc0d"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-ulan-best-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-ulan-best-com.id}", "${aws_subnet.utility-eu-west-1b-ulan-best-com.id}", "${aws_subnet.utility-eu-west-1c-ulan-best-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                     = "ulan-best.com"
    Name                                  = "bastion.ulan-best.com"
    "kubernetes.io/cluster/ulan-best.com" = "owned"
  }
}
