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

defmodule GoogleApi.AbusiveExperienceReport.V1.Model.SiteSummaryResponse do
  @moduledoc """
  Response message for GetSiteSummary.

  ## Attributes

  *   `abusiveStatus` (*type:* `String.t`, *default:* `nil`) - The site's Abusive Experience Report status.
  *   `enforcementTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which [enforcement](https://support.google.com/webtools/answer/7538608) against the site began or will begin. Not set when the filter_status is OFF.
  *   `filterStatus` (*type:* `String.t`, *default:* `nil`) - The site's [enforcement status](https://support.google.com/webtools/answer/7538608).
  *   `lastChangeTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the site's status last changed.
  *   `reportUrl` (*type:* `String.t`, *default:* `nil`) - A link to the full Abusive Experience Report for the site. Not set in ViolatingSitesResponse. Note that you must complete the [Search Console verification process](https://support.google.com/webmasters/answer/9008080) for the site before you can access the full report.
  *   `reviewedSite` (*type:* `String.t`, *default:* `nil`) - The name of the reviewed site, e.g. `google.com`.
  *   `underReview` (*type:* `boolean()`, *default:* `nil`) - Whether the site is currently under review.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :abusiveStatus => String.t() | nil,
          :enforcementTime => DateTime.t() | nil,
          :filterStatus => String.t() | nil,
          :lastChangeTime => DateTime.t() | nil,
          :reportUrl => String.t() | nil,
          :reviewedSite => String.t() | nil,
          :underReview => boolean() | nil
        }

  field(:abusiveStatus)
  field(:enforcementTime, as: DateTime)
  field(:filterStatus)
  field(:lastChangeTime, as: DateTime)
  field(:reportUrl)
  field(:reviewedSite)
  field(:underReview)
end

defimpl Poison.Decoder, for: GoogleApi.AbusiveExperienceReport.V1.Model.SiteSummaryResponse do
  def decode(value, options) do
    GoogleApi.AbusiveExperienceReport.V1.Model.SiteSummaryResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AbusiveExperienceReport.V1.Model.SiteSummaryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
