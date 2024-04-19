resource "aws_s3_bucket_object" "image_objects" {
  for_each = fileset("sample/", "*")

  bucket = "da7-tf-exercise-2"
  key    = "samples/${each.value}"
  source = "samples/${each.value}"
  etag = filemd5("samples/${each.value}")
}