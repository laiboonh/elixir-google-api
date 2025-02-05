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

defmodule GoogleApi.Container.V1.Model.NodePoolAutoConfig do
  @moduledoc """
  Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.

  ## Attributes

  *   `networkTags` (*type:* `GoogleApi.Container.V1.Model.NetworkTags.t`, *default:* `nil`) - The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster creation. Each tag within the list must comply with RFC1035.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :networkTags => GoogleApi.Container.V1.Model.NetworkTags.t() | nil
        }

  field(:networkTags, as: GoogleApi.Container.V1.Model.NetworkTags)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.NodePoolAutoConfig do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.NodePoolAutoConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.NodePoolAutoConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
