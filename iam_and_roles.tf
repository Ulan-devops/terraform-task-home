resource "aws_iam_instance_profile" "bastions-ulan-best-com" {
  name = "bastions.ulan-best.com"
  role = "${aws_iam_role.bastions-ulan-best-com.name}"
}

resource "aws_iam_instance_profile" "masters-ulan-best-com" {
  name = "masters.ulan-best.com"
  role = "${aws_iam_role.masters-ulan-best-com.name}"
}

resource "aws_iam_instance_profile" "nodes-ulan-best-com" {
  name = "nodes.ulan-best.com"
  role = "${aws_iam_role.nodes-ulan-best-com.name}"
}

resource "aws_iam_role" "bastions-ulan-best-com" {
  name               = "bastions.ulan-best.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.ulan-best.com_policy")}"
}

resource "aws_iam_role" "masters-ulan-best-com" {
  name               = "masters.ulan-best.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.ulan-best.com_policy")}"
}

resource "aws_iam_role" "nodes-ulan-best-com" {
  name               = "nodes.ulan-best.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.ulan-best.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-ulan-best-com" {
  name   = "bastions.ulan-best.com"
  role   = "${aws_iam_role.bastions-ulan-best-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.ulan-best.com_policy")}"
}

resource "aws_iam_role_policy" "masters-ulan-best-com" {
  name   = "masters.ulan-best.com"
  role   = "${aws_iam_role.masters-ulan-best-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.ulan-best.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-ulan-best-com" {
  name   = "nodes.ulan-best.com"
  role   = "${aws_iam_role.nodes-ulan-best-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.ulan-best.com_policy")}"
}
