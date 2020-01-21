resource "aws_autoscaling_attachment" "bastions-ulan-best-com" {
  elb                    = "${aws_elb.bastion-ulan-best-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-ulan-best-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1a-masters-ulan-best-com" {
  elb                    = "${aws_elb.api-ulan-best-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1a-masters-ulan-best-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1b-masters-ulan-best-com" {
  elb                    = "${aws_elb.api-ulan-best-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1b-masters-ulan-best-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1c-masters-ulan-best-com" {
  elb                    = "${aws_elb.api-ulan-best-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1c-masters-ulan-best-com.id}"
}

resource "aws_autoscaling_group" "bastions-ulan-best-com" {
  name                 = "bastions.ulan-best.com"
  launch_configuration = "${aws_launch_configuration.bastions-ulan-best-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-eu-west-1a-ulan-best-com.id}", "${aws_subnet.utility-eu-west-1b-ulan-best-com.id}", "${aws_subnet.utility-eu-west-1c-ulan-best-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "ulan-best.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.ulan-best.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1a-masters-ulan-best-com" {
  name                 = "master-eu-west-1a.masters.ulan-best.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1a-masters-ulan-best-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-ulan-best-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "ulan-best.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1a.masters.ulan-best.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1b-masters-ulan-best-com" {
  name                 = "master-eu-west-1b.masters.ulan-best.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1b-masters-ulan-best-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1b-ulan-best-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "ulan-best.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1b.masters.ulan-best.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1c-masters-ulan-best-com" {
  name                 = "master-eu-west-1c.masters.ulan-best.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1c-masters-ulan-best-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1c-ulan-best-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "ulan-best.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1c.masters.ulan-best.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-ulan-best-com" {
  name                 = "nodes.ulan-best.com"
  launch_configuration = "${aws_launch_configuration.nodes-ulan-best-com.id}"
  max_size             = "${var.max_size}"
  min_size             = "${var.min_size}"
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-ulan-best-com.id}", "${aws_subnet.eu-west-1b-ulan-best-com.id}", "${aws_subnet.eu-west-1c-ulan-best-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "ulan-best.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.ulan-best.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}
