#
# DO NOT DELETE THESE LINES!
#


# Your DNSimple email is:
#
#     sethvargo+terraform@gmail.com
#


# Your DNSimple token is:
#


# Your Identity is:
#
#     manheim-eccbc87e4b5ce2fe28308fd9f2a7baf3
#

variable "dnsimple_token" {}
variable "dnsimple_email" {
  default = "sethvargo+terraform@gmail.com"
}

provider "dnsimple" {
    token = "${var.dnsimple_token}"
    email = "${var.dnsimple_email}"
}

resource "dnsimple_record" "www" {
  domain = "terraform.rocks"
  type   = "A"
  name   = "manheim-eccbc87e4b5ce2fe28308fd9f2a7baf3"
  value  = "${aws_instance.web.0.public_ip}"
}
