resource "aws_instance" "test1" {
  ami           = "${data.aws_ami.rhel6_9.id}"
  instance_type = "${var.weblogic_instance_type}"
  key_name   = "${var.public_management_key}"
  subnet_id  = "subnet-1276425b"
  vpc_security_group_ids = ["sg-5903a325"]

  ebs_optimized = true

  root_block_device {
    volume_type = "gp2"
    volume_size = 20
    delete_on_termination = false
  }
  tags = "${merge(map(
    "Name", "${var.tags["environment"]}_weblogic_${count.index}",
    "Description", "weblogic instance ${count.index}",
    "Tier", "web"),
    var.tags
  )}"
}

resource "aws_ebs_volume" "test1" {
  availability_zone = "us-east-1"
  size              = "10"
  type              = "gp2"
  encrypted         = true

  tags = "${merge(map(
    "Name", "${var.tags["environment"]}_weblogic_app_${count.index}",
    "Description", "weblogic app volume"),
    var.tags
  )}"
}

resource "aws_volume_attachment" "test1" {
  device_name = "/dev/sdg"
  volume_id   = "${aws_ebs_volume.test1.id}"
  instance_id = "${aws_ebs_volume.test1.id}"
}
