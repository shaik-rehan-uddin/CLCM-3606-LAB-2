output "role_name" {
  value = aws_iam_role.ecr_read_role.name
}

output "instance_profile_name" {
  value = aws_iam_instance_profile.ecr_read_instance_profile.name
}

# Output IAM User Access Key and Secret
output "access_key_id" {
  value = aws_iam_access_key.ecr_user_access_key.id
}

output "secret_access_key" {
  value = aws_iam_access_key.ecr_user_access_key.secret
}
