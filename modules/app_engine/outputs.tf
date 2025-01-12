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

output "name" {
  value       = google_app_engine_application.main.name
  description = "Unique name of the app, usually apps/{PROJECT_ID}."
}

output "url_dispatch_rule" {
  value       = google_app_engine_application.main.url_dispatch_rule
  description = "A list of dispatch rule blocks. Each block has a domain, path, and service field."
}

output "code_bucket" {
  value       = google_app_engine_application.main.code_bucket
  description = "The GCS bucket code is being stored in for this app."
}

output "default_hostname" {
  value       = google_app_engine_application.main.default_hostname
  description = "The default hostname for this app."
}

output "default_bucket" {
  value       = google_app_engine_application.main.default_bucket
  description = "The GCS bucket content is being stored in for this app."
}

output "location_id" {
  value       = google_app_engine_application.main.location_id
  description = "The location app engine is serving from"
}

