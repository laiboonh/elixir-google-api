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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryParameters do
  @moduledoc """
  Represents the parameters of the conversational query.

  ## Attributes

  *   `contexts` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context.t)`, *default:* `nil`) - The collection of contexts to be activated before this query is executed.
  *   `geoLocation` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleTypeLatLng.t`, *default:* `nil`) - The geo location of this conversational query.
  *   `payload` (*type:* `map()`, *default:* `nil`) - This field can be used to pass custom data to your webhook. Arbitrary JSON objects are supported. If supplied, the value is used to populate the `WebhookRequest.original_detect_intent_request.payload` field sent to your webhook.
  *   `resetContexts` (*type:* `boolean()`, *default:* `nil`) - Specifies whether to delete all contexts in the current session before the new ones are activated.
  *   `sentimentAnalysisRequestConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig.t`, *default:* `nil`) - Configures the type of sentiment analysis to perform. If not provided, sentiment analysis is not performed.
  *   `sessionEntityTypes` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SessionEntityType.t)`, *default:* `nil`) - Additional session entity types to replace or extend developer entity types with. The entity synonyms apply to all languages and persist for the session of this query.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - The time zone of this conversational query from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. If not provided, the time zone specified in agent settings is used.
  *   `webhookHeaders` (*type:* `map()`, *default:* `nil`) - This field can be used to pass HTTP headers for a webhook call. These headers will be sent to webhook along with the headers that have been configured through the Dialogflow web console. The headers defined within this field will overwrite the headers configured through the Dialogflow console if there is a conflict. Header names are case-insensitive. Google's specified headers are not allowed. Including: "Host", "Content-Length", "Connection", "From", "User-Agent", "Accept-Encoding", "If-Modified-Since", "If-None-Match", "X-Forwarded-For", etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contexts =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context.t()) | nil,
          :geoLocation => GoogleApi.Dialogflow.V2.Model.GoogleTypeLatLng.t() | nil,
          :payload => map() | nil,
          :resetContexts => boolean() | nil,
          :sentimentAnalysisRequestConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig.t()
            | nil,
          :sessionEntityTypes =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SessionEntityType.t()) | nil,
          :timeZone => String.t() | nil,
          :webhookHeaders => map() | nil
        }

  field(:contexts, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context, type: :list)
  field(:geoLocation, as: GoogleApi.Dialogflow.V2.Model.GoogleTypeLatLng)
  field(:payload, type: :map)
  field(:resetContexts)

  field(:sentimentAnalysisRequestConfig,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig
  )

  field(:sessionEntityTypes,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SessionEntityType,
    type: :list
  )

  field(:timeZone)
  field(:webhookHeaders, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryParameters do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryParameters.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryParameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
