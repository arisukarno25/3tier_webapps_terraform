output "asg_name" {
  value = aws_autoscaling_group.asg-webserver.name
}

output "launch_template_id" {
  value = aws_launch_template.webserver-lt.id
}
