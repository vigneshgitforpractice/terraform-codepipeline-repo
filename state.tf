terraform{
    backend "s3" {
        bucket = "mysestestbucket0205"
        encrypt = true
        key = "terraform.tfstate"
        region = "ap-south-1"
    }
}

