resource "aws_dynamodb_table_item" "guestlist1" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
 item = jsonencode({
    "Email"   = {"S" = "reginald@gmail.com"},
    "Name"    = {"S" = "Reginald"},
    "Country" = {"S" = "Tanzania"}
  })
}
resource "aws_dynamodb_table_item" "guestlist2" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "emmauel@gmail.com"},
    "Name"    = {"S" = "Emmanuel"},
    "Country" = {"S" = "USA"}
  })
}
 
resource "aws_dynamodb_table_item" "guestlist3" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "lemuel@gmail.com"},
    "Name"    = {"S" = "Lemuel"},
    "Country" = {"S" = "Switzerland"}
  })
}
 
 
resource "aws_dynamodb_table_item" "guestlist4" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "donald@yahoo.com"},
    "Name"    = {"S" = "Donald"},
    "Country" = {"S" = "France"}
  })
}
 
 
resource "aws_dynamodb_table_item" "guestlist5" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "betty@gmal.com"},
    "Name"    = {"S" = "Betty"},
    "Country" = {"S" = "Germany"}
  })
}
 
 
resource "aws_dynamodb_table_item" "guestlist6" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "david@gmail.com"},
    "Name"    = {"S" = "David"},
    "Country" = {"S" = "Australia"}
  })
}
 
 
resource "aws_dynamodb_table_item" "guestlist7" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "richard@gmail.com"},
    "Name"    = {"S" = "Richard"},
    "Country" = {"S" = "Canada"}
  })
}
 
resource "aws_dynamodb_table_item" "guestlist8" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "margaret@gmail.com"},
    "Name"    = {"S" = "Margaret"},
    "Country" = {"S" = "Ireland"}
  })
}
 
resource "aws_dynamodb_table_item" "guestlist9" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "papayaw@gmail.com"},
    "Name"    = {"S" = "Papa Yaw"},
    "Country" = {"S" = "England"}
  })
}
 
resource "aws_dynamodb_table_item" "guestlist10" {
 table_name = aws_dynamodb_table.guestlist.id
 hash_key   = "Email"
  item = jsonencode({
    "Email"   = {"S" = "lydia@gmal.com"},
    "Name"    = {"S" = "Lydia"},
    "Country" = {"S" = "Italy"}
  })
}
