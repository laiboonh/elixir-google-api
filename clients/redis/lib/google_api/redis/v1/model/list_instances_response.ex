# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Redis.V1.Model.ListInstancesResponse do
  @moduledoc """
  Response for ListInstances.

  ## Attributes

  *   `instances` (*type:* `list(GoogleApi.Redis.V1.Model.Instance.t)`, *default:* `nil`) - A list of Redis instances in the project in the specified location, or across all locations. If the `location_id` in the parent field of the request is "-", all regions available to the project are queried, and the results aggregated. If in such an aggregated query a location is unavailable, a placeholder Redis entry is included in the response with the `name` field set to a value of the form `projects/{project_id}/locations/{location_id}/instances/`- and the `status` field set to ERROR and `status_message` field set to "location not available for ListInstances".
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results, or empty if there are no more results in the list.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instances => list(GoogleApi.Redis.V1.Model.Instance.t()) | nil,
          :nextPageToken => String.t() | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:instances, as: GoogleApi.Redis.V1.Model.Instance, type: :list)
  field(:nextPageToken)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1.Model.ListInstancesResponse do
  def decode(value, options) do
    GoogleApi.Redis.V1.Model.ListInstancesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1.Model.ListInstancesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
