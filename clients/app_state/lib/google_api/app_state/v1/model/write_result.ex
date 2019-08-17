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

defmodule GoogleApi.AppState.V1.Model.WriteResult do
  @moduledoc """
  This is a JSON template for an app state write result.

  ## Attributes

  *   `currentStateVersion` (*type:* `String.t`, *default:* `nil`) - The version of the data for this key on the server.
  *   `kind` (*type:* `String.t`, *default:* `appstate#writeResult`) - Uniquely identifies the type of this resource. Value is always the fixed string appstate#writeResult.
  *   `stateKey` (*type:* `integer()`, *default:* `nil`) - The written key.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentStateVersion => String.t(),
          :kind => String.t(),
          :stateKey => integer()
        }

  field(:currentStateVersion)
  field(:kind)
  field(:stateKey)
end

defimpl Poison.Decoder, for: GoogleApi.AppState.V1.Model.WriteResult do
  def decode(value, options) do
    GoogleApi.AppState.V1.Model.WriteResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppState.V1.Model.WriteResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
