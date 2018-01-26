# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.YouTube.V3.Model.LiveChatFanFundingEventDetails do
  @moduledoc """


  ## Attributes

  - amountDisplayString (String.t): A rendered string that displays the fund amount and currency to the user. Defaults to: `null`.
  - amountMicros (String.t): The amount of the fund. Defaults to: `null`.
  - currency (String.t): The currency in which the fund was made. Defaults to: `null`.
  - userComment (String.t): The comment added by the user to this fan funding event. Defaults to: `null`.
  """

  defstruct [
    :amountDisplayString,
    :amountMicros,
    :currency,
    :userComment
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.LiveChatFanFundingEventDetails do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.LiveChatFanFundingEventDetails do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end
