module "table_access" {
  source     = "../../modules/table_access"
  project_id = "my-project"
  dataset_id = "my_dataset_id"
  table_id   = "my_table_id"
  role       = "roles/bigquery.dataViewer"
  member     = "user:foo@bar.com"
}