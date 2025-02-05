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

defmodule GoogleApi.AdSense.V2.Model.AdClient do
  @moduledoc """
  Representation of an ad client. An ad client represents a user's subscription with a specific AdSense product.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the ad client. Format: accounts/{account}/adclients/{adclient}
  *   `productCode` (*type:* `String.t`, *default:* `nil`) - Output only. Reporting product code of the ad client. For example, "AFC" for AdSense for Content. Corresponds to the `PRODUCT_CODE` dimension, and present only if the ad client supports reporting.
  *   `reportingDimensionId` (*type:* `String.t`, *default:* `nil`) - Output only. Unique ID of the ad client as used in the `AD_CLIENT_ID` reporting dimension. Present only if the ad client supports reporting.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the ad client.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :productCode => String.t() | nil,
          :reportingDimensionId => String.t() | nil,
          :state => String.t() | nil
        }

  field(:name)
  field(:productCode)
  field(:reportingDimensionId)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V2.Model.AdClient do
  def decode(value, options) do
    GoogleApi.AdSense.V2.Model.AdClient.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V2.Model.AdClient do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
