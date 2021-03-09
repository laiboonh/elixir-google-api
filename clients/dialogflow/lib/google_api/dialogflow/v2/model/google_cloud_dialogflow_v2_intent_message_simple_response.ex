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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSimpleResponse do
  @moduledoc """
  The simple response message containing speech or text.

  ## Attributes

  *   `displayText` (*type:* `String.t`, *default:* `nil`) - Optional. The text to display.
  *   `ssml` (*type:* `String.t`, *default:* `nil`) - One of text_to_speech or ssml must be provided. Structured spoken response to the user in the SSML format. Mutually exclusive with text_to_speech.
  *   `textToSpeech` (*type:* `String.t`, *default:* `nil`) - One of text_to_speech or ssml must be provided. The plain text of the speech output. Mutually exclusive with ssml.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayText => String.t() | nil,
          :ssml => String.t() | nil,
          :textToSpeech => String.t() | nil
        }

  field(:displayText)
  field(:ssml)
  field(:textToSpeech)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSimpleResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSimpleResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSimpleResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
