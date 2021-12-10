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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ProvisionCloudIdentityRequest do
  @moduledoc """
  Request message for CloudChannelService.ProvisionCloudIdentity

  ## Attributes

  *   `cloudIdentityInfo` (*type:* `GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1CloudIdentityInfo.t`, *default:* `nil`) - CloudIdentity-specific customer information.
  *   `user` (*type:* `GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1AdminUser.t`, *default:* `nil`) - Admin user information.
  *   `validateOnly` (*type:* `boolean()`, *default:* `nil`) - Validate the request and preview the review, but do not post it.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudIdentityInfo =>
            GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1CloudIdentityInfo.t() | nil,
          :user => GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1AdminUser.t() | nil,
          :validateOnly => boolean() | nil
        }

  field(:cloudIdentityInfo,
    as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1CloudIdentityInfo
  )

  field(:user, as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1AdminUser)
  field(:validateOnly)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ProvisionCloudIdentityRequest do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ProvisionCloudIdentityRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ProvisionCloudIdentityRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
