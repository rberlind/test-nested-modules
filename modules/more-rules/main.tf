data "aws_security_group" "selected" {
  id = "sg-0ecaf664fe45ff737"
}

resource "aws_security_group_rule" "https" {
  type            = "ingress"
  from_port       = 443
  to_port         = 443
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = "sg-0ecaf664fe45ff737"
}

module "even-more-sgrs" {
  source = "./even-more-rules"
}
