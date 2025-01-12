/**
 * Copyright 2018 Google LLC
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

output "project_name" {
  value       = google_project.main.name
  description = "Name of the project"
}

output "project_id" {
  value       = module.project_services.project_id
  description = "Identifier of the project"
  depends_on = [
    module.project_services,
    google_project.main,
    google_compute_shared_vpc_service_project.shared_vpc_attachment,
    google_compute_shared_vpc_host_project.shared_vpc_host,
  ]
}

output "project_number" {
  value       = google_project.main.number
  description = "Numerical identifier of the project"
  depends_on = [
    module.project_services
  ]
}

output "service_account_id" {
  value       = var.create_project_sa ? google_service_account.default_service_account[0].account_id : ""
  description = "The id of the default service account"
}

output "service_account_display_name" {
  value       = var.create_project_sa ? google_service_account.default_service_account[0].display_name : ""
  description = "The display name of the default service account"
}

output "service_account_email" {
  value       = var.create_project_sa ? google_service_account.default_service_account[0].email : ""
  description = "The email of the default service account"
}

output "service_account_name" {
  value       = var.create_project_sa ? google_service_account.default_service_account[0].name : ""
  description = "The fully-qualified name of the default service account"
}

output "service_account_unique_id" {
  value       = var.create_project_sa ? google_service_account.default_service_account[0].unique_id : ""
  description = "The unique id of the default service account"
}

output "project_bucket_name" {
  value       = google_storage_bucket.project_bucket.*.name
  description = "The name of the project's bucket"
}

output "project_bucket_self_link" {
  value       = google_storage_bucket.project_bucket.*.self_link
  description = "Project's bucket selfLink"
}

output "project_bucket_url" {
  value       = google_storage_bucket.project_bucket.*.url
  description = "Project's bucket url"
}

output "project_bucket_id" {
  value       = local.project_bucket_name
  description = "Project's bucket name without gs://"
}

output "api_s_account" {
  value       = local.api_s_account
  description = "API service account email"
}

output "api_s_account_fmt" {
  value       = local.api_s_account_fmt
  description = "API service account email formatted for terraform use"
}

output "enabled_apis" {
  value       = module.project_services.enabled_apis
  description = "Enabled APIs in the project"
}

output "enabled_api_identities" {
  value       = module.project_services.enabled_api_identities
  description = "Enabled API identities in the project"
}
