terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}


resource "aws_dynamodb_table" "guestlist" {
  name           = "GuestList"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "Email"

  attribute {
    name = "Email"
    type = "S"
  }

  attribute {
    name = "Name"
    type = "S"
  }

  global_secondary_index {
    name            = "NameIndex"
    hash_key        = "Name"
    projection_type = "ALL"

  }

  global_secondary_index {
    name            = "CountryIndex"
    hash_key        = "Country"
    projection_type = "ALL"
  }


  attribute {
    name = "Country"
    type = "S"
  }

  
  tags = {
    Name        = "dynamodb-table"
    Environment = "Training"
  }
}
resource "aws_dynamodb_table_item" "guestlist1" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
 item = jsonencode({
    "Email"   = {"S" = "ayoaborisade82@gmail.com"},
    "Name"    = {"S" = "Aborisade Ayobami"},
    "Country" = {"S" = "Nigeria"},
    "Password" = {"S" = "ayobami82"}
  })
}
resource "aws_dynamodb_table_item" "guestlist2" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "janet.amenku@azubiafrica.org"},
    "Name"    = {"S" = "Janet Amenku"},
    "Country" = {"S" = "Ghana"}
  })
}

resource "aws_dynamodb_table_item" "guestlist3" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "david.dumfeh@azubiafrica.org"},
    "Name"    = {"S" = "David Dumfeh"},
    "Country" = {"S" = "Ghana"}
  })
}


resource "aws_dynamodb_table_item" "guestlist4" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "yaw.opoku@azubiafrica.org"},
    "Name"    = {"S" = "Yaw Opoku"},
    "Country" = {"S" = "Ghana"}
  })
}


resource "aws_dynamodb_table_item" "guestlist5" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "michael.danquah@azubiafrica.org"},
    "Name"    = {"S" = "Micheal Caleb"},
    "Country" = {"S" = "Kenya"}
  })
}


resource "aws_dynamodb_table_item" "guestlist6" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "brian.bange@azubiafrica.org"},
    "Name"    = {"S" = "Brian Bange"},
    "Country" = {"S" = "Kenya"}
  })
}


resource "aws_dynamodb_table_item" "guestlist7" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "jerono.bargotio@azubiafrica.org"},
    "Name"    = {"S" = "Jerono Bagotio"},
    "Country" = {"S" = "Kenya"}
  })
}

resource "aws_dynamodb_table_item" "guestlist8" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "naomi.kamweru@azubiafrica.org"},
    "Name"    = {"S" = "Naomi Kamweru"},
    "Country" = {"S" = "Kenya"}
  })
}

resource "aws_dynamodb_table_item" "guestlist9" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "reginald.shirima@azubiafrica.org"},
    "Name"    = {"S" = "Reginald Shirima"},
    "Country" = {"S" = "Tanzania"}
  })
}



