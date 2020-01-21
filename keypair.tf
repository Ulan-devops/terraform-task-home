resource "aws_key_pair" "kubernetes-ulan-best-com-8963b7f8d6b358f0292c9b00d2f2cc0b" {
  key_name   = "kubernetes.ulan-best.com-89:63:b7:f8:d6:b3:58:f0:29:2c:9b:00:d2:f2:cc:0b"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.ulan-best.com-8963b7f8d6b358f0292c9b00d2f2cc0b_public_key")}"
}