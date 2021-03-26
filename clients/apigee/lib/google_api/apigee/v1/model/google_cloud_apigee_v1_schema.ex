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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Schema do
  @moduledoc """
  Response for Schema call

  ## Attributes

  *   `dimensions` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SchemaSchemaElement.t)`, *default:* `nil`) - List of schema fields grouped as dimensions.
  *   `meta` (*type:* `list(String.t)`, *default:* `nil`) - Additional metadata associated with schema. This is a legacy field and usually consists of an empty array of strings.
  *   `metrics` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SchemaSchemaElement.t)`, *default:* `nil`) - List of schema fields grouped as dimensions that can be used with an aggregate function such as `sum`, `avg`, `min`, and `max`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensions =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SchemaSchemaElement.t()) | nil,
          :meta => list(String.t()) | nil,
          :metrics =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SchemaSchemaElement.t()) | nil
        }

  field(:dimensions,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SchemaSchemaElement,
    type: :list
  )

  field(:meta, type: :list)

  field(:metrics,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SchemaSchemaElement,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Schema do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Schema.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Schema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
