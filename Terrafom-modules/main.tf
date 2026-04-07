module "dev-infra"{
    source = "./Infra-app"
    env = "dev"
    bucket_name = "him-dev-infra-bucket"
    instance_count = 1
    instance_type = "t2.micro"
    ec2_ami_id = "ami-05d2d839d4f73aafb"
    hash_key = "studentID"

}

module "prd-infra"{
    source = "./Infra-app"
    env = "prd"
    bucket_name = "him-dev-infra-bucket"
    instance_count = 2
    instance_type = "t2.medium"
    ec2_ami_id = "ami-05d2d839d4f73aafb"
    hash_key = "studentID"

}

module "stg-infra"{
    source = "./Infra-app"
    env = "stg"
    bucket_name = "him-dev-infra-bucket"
    instance_count = 1
    instance_type = "t2.small"
    ec2_ami_id = "ami-05d2d839d4f73aafb"
    hash_key = "studentID"

}