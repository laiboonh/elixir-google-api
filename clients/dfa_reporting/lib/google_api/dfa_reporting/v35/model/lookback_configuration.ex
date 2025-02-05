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

defmodule GoogleApi.DFAReporting.V35.Model.LookbackConfiguration do
  @moduledoc """
  Lookback configuration settings.

  ## Attributes

  *   `clickDuration` (*type:* `integer()`, *default:* `nil`) - Lookback window, in days, from the last time a given user clicked on one of your ads. If you enter 0, clicks will not be considered as triggering events for floodlight tracking. If you leave this field blank, the default value for your account will be used. Acceptable values are 0 to 90, inclusive.
  *   `postImpressionActivitiesDuration` (*type:* `integer()`, *default:* `nil`) - Lookback window, in days, from the last time a given user viewed one of your ads. If you enter 0, impressions will not be considered as triggering events for floodlight tracking. If you leave this field blank, the default value for your account will be used. Acceptable values are 0 to 90, inclusive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clickDuration => integer() | nil,
          :postImpressionActivitiesDuration => integer() | nil
        }

  field(:clickDuration)
  field(:postImpressionActivitiesDuration)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.LookbackConfiguration do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.LookbackConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.LookbackConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
