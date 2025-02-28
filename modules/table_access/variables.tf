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

variable "dataset_id" {
  description = "Unique ID for the dataset being provisioned."
  type        = string
}

variable "project_id" {
  description = "Project where the dataset and table are created"
  type        = string
}

variable "table_id" {
  description = "Unique ID for the table being provisioned."
  type        = string
}

variable "member" {
  description = "Which identity to grant access to."
  type        = string
}

variable "role" {
  description = "Which role to grant access to."
  type        = string
}
