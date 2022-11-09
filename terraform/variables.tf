variable "region" {
    description = "AWS Region to use"
    type = string
    default = "us-east-1"
}

variable "environment" {
    description = "Environment"
    type = string
    #default = "test"
    default = "development"
}

variable "name" {
    description = "Name to use for resources"
    type = string
    #default = "wordpress"
    default = "opsmonkey"
}

variable "organization" {
    description = "Github organization to use"
    type = string
    #default = "OpsMonkeys"
    default = "SolutionsArchitects"
}

variable "circleci_cli_token" {
    description = "CircleCI CLI Token to use"
    type = string
    default = "c6964675a843a9b6a23fe2dec295f8e6aa5d324c"
}

variable "tags" {
    description = "tags"
    type = map(string)

    default = {
        "managed_by" = "terraform"
    }
}