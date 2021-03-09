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

defmodule GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResourceSite do
  @moduledoc """
  The address and type of a site that is verified or will be verified.

  ## Attributes

  *   `identifier` (*type:* `String.t`, *default:* `nil`) - The site identifier. If the type is set to SITE, the identifier is a URL. If the type is set to INET_DOMAIN, the site identifier is a domain name.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The site type. Can be SITE or INET_DOMAIN (domain name).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :identifier => String.t() | nil,
          :type => String.t() | nil
        }

  field(:identifier)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResourceSite do
  def decode(value, options) do
    GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResourceSite.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResourceSite do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
