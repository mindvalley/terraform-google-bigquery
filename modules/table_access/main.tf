/**
 * Copyright 2020 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

locals {
  iam_to_primitive = {
    "roles/bigquery.dataOwner" : "OWNER"
    "roles/bigquery.dataEditor" : "WRITER"
    "roles/bigquery.dataViewer" : "READER"
  }
}

resource "google_bigquery_table_iam_member" "iam_member" {
  dataset_id = var.dataset_id
  table_id   = var.table_id
  project    = var.project_id
  # BigQuery API converts IAM to primitive roles in its backend.
  # This causes Terraform to show a diff on every plan that uses IAM equivalent roles.
  # Thus, do the conversion between IAM to primitive role here to prevent the diff.
  role   = var.role
  member = var.member
}
