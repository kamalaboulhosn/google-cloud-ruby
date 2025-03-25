# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# OwlBot script for google-cloud-privileged_access_manager-v1
# Properly escape README.md files for links.
# See https://github.com/googleapis/gapic-generator-ruby/issues/1094
OwlBot.modifier path: ["README.md"], name: "Escape README.md" do |content|
  content.gsub(/resourcemanager\.\{projects\|folders\|organizations\}\.(\w+)/, '`resourcemanager.{projects|folders|organizations}.\1`')
end

OwlBot.move_files
