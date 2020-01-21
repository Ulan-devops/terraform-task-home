resource "aws_launch_configuration" "bastions-ulan-best-com" {
  name_prefix                 = "bastions.ulan-best.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-ulan-best-com-8963b7f8d6b358f0292c9b00d2f2cc0b.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-ulan-best-com.id}"
  security_groups             = ["${aws_security_group.bastion-ulan-best-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1a-masters-ulan-best-com" {
  name_prefix                 = "master-eu-west-1a.masters.ulan-best.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-ulan-best-com-8963b7f8d6b358f0292c9b00d2f2cc0b.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-ulan-best-com.id}"
  security_groups             = ["${aws_security_group.masters-ulan-best-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1a.masters.ulan-best.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1b-masters-ulan-best-com" {
  name_prefix                 = "master-eu-west-1b.masters.ulan-best.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-ulan-best-com-8963b7f8d6b358f0292c9b00d2f2cc0b.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-ulan-best-com.id}"
  security_groups             = ["${aws_security_group.masters-ulan-best-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1b.masters.ulan-best.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1c-masters-ulan-best-com" {
  name_prefix                 = "master-eu-west-1c.masters.ulan-best.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-ulan-best-com-8963b7f8d6b358f0292c9b00d2f2cc0b.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-ulan-best-com.id}"
  security_groups             = ["${aws_security_group.masters-ulan-best-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1c.masters.ulan-best.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-ulan-best-com" {
  name_prefix                 = "nodes.ulan-best.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-ulan-best-com-8963b7f8d6b358f0292c9b00d2f2cc0b.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-ulan-best-com.id}"
  security_groups             = ["${aws_security_group.nodes-ulan-best-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.ulan-best.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}