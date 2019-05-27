resource "aws_security_group_rule" "allow_all" {
  count           = 2
  type            = "ingress"
  from_port       = 0
  to_port         = 65535
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = "sg-0ecaf664fe45ff737"
}

resource "aws_security_group_rule" "allow_ssh" {
  type            = "ingress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  cidr_blocks = ["10.100.0.0/16"]
  security_group_id = "sg-0ecaf664fe45ff737"
}

module "more-sgrs" {
  source = "./modules/more-rules"

}
