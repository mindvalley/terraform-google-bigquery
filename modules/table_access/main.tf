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

resource "google_bigquery_table_iam_member" "iam_member" {
  dataset_id = var.dataset_id
  table_id   = var.table_id
  project    = var.project_id
  role   = var.role
  member = var.member
}

resource "google_project_iam_member" "iam_member" {
  project = var.project_id
  role    = "roles/bigquery.jobUser"
  member  = var.member
}