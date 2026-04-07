variable "env" {

    description = "this is env for infra"
    type = string
  
}

variable "bucket_name" {

    description = "this is the name of the S3 bucket"
    type = string
  
}


variable "instance_count" {

    description = "this is the number of EC2 instances to create"
    type = number
  
}
variable "instance_type" {

    description = "this is the type of EC2 instance to create"
    type = string
  
}


variable "ec2_ami_id" {

    description = "this is the AMI ID for the EC2 instance"
    type = string

}    

variable "hash_key" {

    description = "this is the hash key for the DynamoDB table"
    type = string

}    

