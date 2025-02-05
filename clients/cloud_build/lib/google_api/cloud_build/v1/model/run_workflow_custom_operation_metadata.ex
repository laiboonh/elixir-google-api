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

defmodule GoogleApi.CloudBuild.V1.Model.RunWorkflowCustomOperationMetadata do
  @moduledoc """
  Represents the custom metadata of the RunWorkflow long-running operation.

  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - Output only. API version used to start the operation.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the operation was created.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the operation finished running.
  *   `pipelineRunId` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the pipeline run created by RunWorkflow.
  *   `requestedCancellation` (*type:* `boolean()`, *default:* `nil`) - Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
  *   `target` (*type:* `String.t`, *default:* `nil`) - Output only. Server-defined resource path for the target of the operation.
  *   `verb` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the verb executed by the operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :endTime => DateTime.t() | nil,
          :pipelineRunId => String.t() | nil,
          :requestedCancellation => boolean() | nil,
          :target => String.t() | nil,
          :verb => String.t() | nil
        }

  field(:apiVersion)
  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:pipelineRunId)
  field(:requestedCancellation)
  field(:target)
  field(:verb)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.RunWorkflowCustomOperationMetadata do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.RunWorkflowCustomOperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.RunWorkflowCustomOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
