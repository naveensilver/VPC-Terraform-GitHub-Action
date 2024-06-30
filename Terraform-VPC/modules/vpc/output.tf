# Output values : There Values can be used by other modules

output "vpc_id" {
    value = aws_vpc.my_vpc.id
}

output "subnet_ids" {
    value = aws_subnet.subnets.*.id
}