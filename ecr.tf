resource "aws_ecr_repository" "ecr_lab" {
  name                 = "lab-fases"
  image_tag_mutability = "MUTABLE"
}
