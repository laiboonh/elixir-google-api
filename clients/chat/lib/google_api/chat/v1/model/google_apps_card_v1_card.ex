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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1Card do
  @moduledoc """
  A card is a UI element that can contain UI widgets such as text and images. For more information, see Cards . For example, the following JSON creates a card that has a header with the name, position, icons, and link for a contact, followed by a section with contact information like email and phone number. ``` { "header": { "title": "Sasha", "subtitle": "Software Engineer", "imageStyle": "ImageStyle.AVATAR", "imageUrl": "https://example.com/sasha.png", "imageAltText": "Avatar for Sasha" }, "sections" : [ { "header": "Contact Info", "widgets": [ { "decorated_text": { "icon": { "knownIcon": "EMAIL" }, "content": "sasha@example.com" } }, { "decoratedText": { "icon": { "knownIcon": "PERSON" }, "content": "Online" } }, { "decoratedText": { "icon": { "knownIcon": "PHONE" }, "content": "+1 (555) 555-1234" } }, { "buttons": [ { "textButton": { "text": "Share", }, "onClick": { "openLink": { "url": "https://example.com/share" } } }, { "textButton": { "text": "Edit", }, "onClick": { "action": { "function": "goToView", "parameters": [ { "key": "viewType", "value": "EDIT" } ], "loadIndicator": "LoadIndicator.SPINNER" } } } ] } ], "collapsible": true, "uncollapsibleWidgetsCount": 3 } ], "cardActions": [ { "actionLabel": "Send Feedback", "onClick": { "openLink": { "url": "https://example.com/feedback" } } } ], "name": "contact-card-K3wB6arF2H9L" } ```

  ## Attributes

  *   `cardActions` (*type:* `list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardAction.t)`, *default:* `nil`) - The card's actions. Actions are added to the card's generated toolbar menu. For example, the following JSON constructs a card action menu with Settings and Send Feedback options: ``` "card_actions": [ { "actionLabel": "Settings", "onClick": { "action": { "functionName": "goToView", "parameters": [ { "key": "viewType", "value": "SETTING" } ], "loadIndicator": "LoadIndicator.SPINNER" } } }, { "actionLabel": "Send Feedback", "onClick": { "openLink": { "url": "https://example.com/feedback" } } } ] ```
  *   `displayStyle` (*type:* `String.t`, *default:* `nil`) - The display style for `peekCardHeader`.
  *   `fixedFooter` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardFixedFooter.t`, *default:* `nil`) - The fixed footer shown at the bottom of this card.
  *   `header` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardHeader.t`, *default:* `nil`) - The header of the card. A header usually contains a title and an image.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the card. Used as a card identifier in card navigation.
  *   `peekCardHeader` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardHeader.t`, *default:* `nil`) - When displaying contextual content, the peek card header acts as a placeholder so that the user can navigate forward between the homepage cards and the contextual cards.
  *   `sections` (*type:* `list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1Section.t)`, *default:* `nil`) - Sections are separated by a line divider.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cardActions => list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardAction.t()) | nil,
          :displayStyle => String.t() | nil,
          :fixedFooter => GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardFixedFooter.t() | nil,
          :header => GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardHeader.t() | nil,
          :name => String.t() | nil,
          :peekCardHeader => GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardHeader.t() | nil,
          :sections => list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1Section.t()) | nil
        }

  field(:cardActions, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardAction, type: :list)
  field(:displayStyle)
  field(:fixedFooter, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardFixedFooter)
  field(:header, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardHeader)
  field(:name)
  field(:peekCardHeader, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardHeader)
  field(:sections, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Section, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Card do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1Card.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Card do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
