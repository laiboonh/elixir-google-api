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

defmodule GoogleApi.Redis.V1.Model.Operation do
  @moduledoc """
  This resource represents a long-running operation that is the result of a network API call.

  ## Attributes

  *   `done` (*type:* `boolean()`, *default:* `nil`) - If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.
  *   `error` (*type:* `GoogleApi.Redis.V1.Model.Status.t`, *default:* `nil`) - The error result of the operation in case of failure or cancellation.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - { `createTime`: The time the operation was created. `endTime`: The time the operation finished running. `target`: Server-defined resource path for the target of the operation. `verb`: Name of the verb executed by the operation. `statusDetail`: Human-readable status of the operation, if any. `cancelRequested`: Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`. `apiVersion`: API version used to start the operation. }
  *   `name` (*type:* `String.t`, *default:* `nil`) - The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/{unique_id}`.
  *   `response` (*type:* `map()`, *default:* `nil`) - The normal response of the operation in case of success. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :done => boolean() | nil,
          :error => GoogleApi.Redis.V1.Model.Status.t() | nil,
          :metadata => map() | nil,
          :name => String.t() | nil,
          :response => map() | nil
        }

  field(:done)
  field(:error, as: GoogleApi.Redis.V1.Model.Status)
  field(:metadata, type: :map)
  field(:name)
  field(:response, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1.Model.Operation do
  def decode(value, options) do
    GoogleApi.Redis.V1.Model.Operation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1.Model.Operation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
