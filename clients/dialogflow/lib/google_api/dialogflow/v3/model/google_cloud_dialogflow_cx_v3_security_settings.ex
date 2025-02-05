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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SecuritySettings do
  @moduledoc """
  Represents the settings related to security issues, such as data redaction and data retention. It may take hours for updates on the settings to propagate to all the related components and take effect.

  ## Attributes

  *   `audioExportSettings` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings.t`, *default:* `nil`) - Controls audio export settings for post-conversation analytics when ingesting audio to conversations via Participants.AnalyzeContent or Participants.StreamingAnalyzeContent. If retention_strategy is set to REMOVE_AFTER_CONVERSATION or audio_export_settings.gcs_bucket is empty, audio export is disabled. If audio export is enabled, audio is recorded and saved to audio_export_settings.gcs_bucket, subject to retention policy of audio_export_settings.gcs_bucket. This setting won't effect audio input for implicit sessions via Sessions.DetectIntent or Sessions.StreamingDetectIntent.
  *   `deidentifyTemplate` (*type:* `String.t`, *default:* `nil`) - [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. The `DLP De-identify Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, Dialogflow replaces sensitive info with `[redacted]` text. The template name will have one of the following formats: `projects//locations//deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note: `deidentify_template` must be located in the same region as the `SecuritySettings`.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The human-readable name of the security settings, unique within the location.
  *   `insightsExportSettings` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings.t`, *default:* `nil`) - Controls conversation exporting settings to Insights after conversation is completed. If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  *   `inspectTemplate` (*type:* `String.t`, *default:* `nil`) - [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. The `DLP Inspect Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, we use the default DLP inspect config. The template name will have one of the following formats: `projects//locations//inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `inspect_template` must be located in the same region as the `SecuritySettings`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.
  *   `purgeDataTypes` (*type:* `list(String.t)`, *default:* `nil`) - List of types of data to remove when retention settings triggers purge.
  *   `redactionScope` (*type:* `String.t`, *default:* `nil`) - Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
  *   `redactionStrategy` (*type:* `String.t`, *default:* `nil`) - Strategy that defines how we do redaction.
  *   `retentionWindowDays` (*type:* `integer()`, *default:* `nil`) - Retains data in interaction logging for the specified number of days. This does not apply to Cloud logging, which is owned by the user - not Dialogflow. User must set a value lower than Dialogflow's default 365d TTL. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use Dialogflow's default TTL. Note: Interaction logging is a limited access feature. Talk to your Google representative to check availability for you.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audioExportSettings =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings.t()
            | nil,
          :deidentifyTemplate => String.t() | nil,
          :displayName => String.t() | nil,
          :insightsExportSettings =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings.t()
            | nil,
          :inspectTemplate => String.t() | nil,
          :name => String.t() | nil,
          :purgeDataTypes => list(String.t()) | nil,
          :redactionScope => String.t() | nil,
          :redactionStrategy => String.t() | nil,
          :retentionWindowDays => integer() | nil
        }

  field(:audioExportSettings,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings
  )

  field(:deidentifyTemplate)
  field(:displayName)

  field(:insightsExportSettings,
    as:
      GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings
  )

  field(:inspectTemplate)
  field(:name)
  field(:purgeDataTypes, type: :list)
  field(:redactionScope)
  field(:redactionStrategy)
  field(:retentionWindowDays)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SecuritySettings do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SecuritySettings.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SecuritySettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
