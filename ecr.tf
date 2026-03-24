resource "aws_ecr_repository" "ecr_lab" {
  name                 = "ecr_lab_fases"
  image_tag_mutability = "MUTABLE"
}