resource "aws_launch_template" "webserver-lt" {
  name_prefix   = "${var.name}-lt-"
  image_id      = var.ami_id
  instance_type = var.instance_type

  key_name = var.key_name

  network_interfaces {
    associate_public_ip_address = true
    security_groups              = var.security_groups
  }

  user_data = base64encode(var.user_data)

  lifecycle {
    create_before_destroy = true
  }

  tag_specifications {
    resource_type = "instance"

    tags = merge({
      Name = "${var.name}-instance"
    }, var.tags)
  }
}

resource "aws_autoscaling_group" "asg-webserver" {
  name_prefix          = "${var.name}-asg-"
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  vpc_zone_identifier  = var.subnet_ids
  health_check_type    = "EC2"
  launch_template {
    id      = aws_launch_template.webserver-lt.id
    version = "$Latest"
  }

  target_group_arns = var.target_group_arns

  tag {
    key                 = "Name"
    value               = "${var.name}-asg"
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }
}
