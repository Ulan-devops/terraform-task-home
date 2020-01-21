output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-ulan-best-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-ulan-best-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-ulan-best-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-ulan-best-com.name}"
}

output "cluster_name" {
  value = "ulan-best.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-eu-west-1a-masters-ulan-best-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-ulan-best-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-ulan-best-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-ulan-best-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-ulan-best-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-ulan-best-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-ulan-best-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-ulan-best-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.eu-west-1a-ulan-best-com.id}", "${aws_subnet.eu-west-1b-ulan-best-com.id}", "${aws_subnet.eu-west-1c-ulan-best-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-ulan-best-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-ulan-best-com.name}"
}

output "region" {
  value = "eu-west-1"
}

output "route_table_private-eu-west-1a_id" {
  value = "${aws_route_table.private-eu-west-1a-ulan-best-com.id}"
}

output "route_table_private-eu-west-1b_id" {
  value = "${aws_route_table.private-eu-west-1b-ulan-best-com.id}"
}

output "route_table_private-eu-west-1c_id" {
  value = "${aws_route_table.private-eu-west-1c-ulan-best-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.ulan-best-com.id}"
}

output "subnet_eu-west-1a_id" {
  value = "${aws_subnet.eu-west-1a-ulan-best-com.id}"
}

output "subnet_eu-west-1b_id" {
  value = "${aws_subnet.eu-west-1b-ulan-best-com.id}"
}

output "subnet_eu-west-1c_id" {
  value = "${aws_subnet.eu-west-1c-ulan-best-com.id}"
}

output "subnet_utility-eu-west-1a_id" {
  value = "${aws_subnet.utility-eu-west-1a-ulan-best-com.id}"
}

output "subnet_utility-eu-west-1b_id" {
  value = "${aws_subnet.utility-eu-west-1b-ulan-best-com.id}"
}

output "subnet_utility-eu-west-1c_id" {
  value = "${aws_subnet.utility-eu-west-1c-ulan-best-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.ulan-best-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.ulan-best-com.id}"
}
