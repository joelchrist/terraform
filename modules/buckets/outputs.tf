output "buckets" {
  value = "[${google_storage_bucket.shorty_bucket.id}]"
}