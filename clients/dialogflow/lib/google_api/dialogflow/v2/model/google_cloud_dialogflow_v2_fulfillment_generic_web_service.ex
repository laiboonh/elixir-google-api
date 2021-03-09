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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FulfillmentGenericWebService do
  @moduledoc """
  Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers. More information could be found at: https://cloud.google.com/dialogflow/docs/fulfillment-configure.

  ## Attributes

  *   `isCloudFunction` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates if generic web service is created through Cloud Functions integration. Defaults to false.
  *   `password` (*type:* `String.t`, *default:* `nil`) - Optional. The password for HTTP Basic authentication.
  *   `requestHeaders` (*type:* `map()`, *default:* `nil`) - Optional. The HTTP request headers to send together with fulfillment requests.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Required. The fulfillment URI for receiving POST requests. It must use https protocol.
  *   `username` (*type:* `String.t`, *default:* `nil`) - Optional. The user name for HTTP Basic authentication.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :isCloudFunction => boolean() | nil,
          :password => String.t() | nil,
          :requestHeaders => map() | nil,
          :uri => String.t() | nil,
          :username => String.t() | nil
        }

  field(:isCloudFunction)
  field(:password)
  field(:requestHeaders, type: :map)
  field(:uri)
  field(:username)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FulfillmentGenericWebService do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FulfillmentGenericWebService.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FulfillmentGenericWebService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
