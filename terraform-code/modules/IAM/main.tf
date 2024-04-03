# IAM Role
resource "aws_iam_role" "ecr_read_role" {
  name = "ECRReadRole"

  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "ec2.amazonaws.com"
        },
        "Action" : "sts:AssumeRole"
      }
    ]
  })
}

# IAM Policy Attachment
resource "aws_iam_policy_attachment" "ecr_read_policy_attachment" {
  name       = "ECRReadPolicyAttachment"
  roles      = [aws_iam_role.ecr_read_role.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

# IAM Instance Profile
resource "aws_iam_instance_profile" "ecr_read_instance_profile" {
  name = "ECRReadInstanceProfile"
  role = aws_iam_role.ecr_read_role.name
}


# IAM Policy for ECR write access
resource "aws_iam_policy" "ecr_write_policy" {
  name        = "ECRWritePolicy"
  description = "Grants write access to ECR repositories"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : [
          "ecr:GetAuthorizationToken",
          "ecr:BatchCheckLayerAvailability",
          "ecr:GetDownloadUrlForLayer",
          "ecr:GetRepositoryPolicy",
          "ecr:DescribeRepositories",
          "ecr:ListImages",
          "ecr:DescribeImages",
          "ecr:BatchGetImage",
          "ecr:InitiateLayerUpload",
          "ecr:UploadLayerPart",
          "ecr:CompleteLayerUpload",
          "ecr:PutImage"
        ],
        "Resource" : "*"
      }
    ]
  })
}

# IAM User
resource "aws_iam_user" "ecr_user" {
  name = var.iam_user_name
}

# IAM Access Key for the user
resource "aws_iam_access_key" "ecr_user_access_key" {
  user = aws_iam_user.ecr_user.name
}

# IAM Policy Attachment for ECR write access
resource "aws_iam_user_policy_attachment" "ecr_user_write_policy_attachment" {
  user       = aws_iam_user.ecr_user.name
  policy_arn = aws_iam_policy.ecr_write_policy.arn
}

