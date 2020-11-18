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

defmodule GoogleApi.Admin.Directory_v1.Model.User do
  @moduledoc """


  ## Attributes

  *   `ims` (*type:* `any()`, *default:* `nil`) - User's Instant Messenger
  *   `posixAccounts` (*type:* `any()`, *default:* `nil`) - The POSIX accounts of User
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. ETag of the resource.
  *   `orgUnitPath` (*type:* `String.t`, *default:* `nil`) - OrgUnit of User
  *   `suspensionReason` (*type:* `String.t`, *default:* `nil`) - Output only. Suspension reason if user is suspended (Read-only)
  *   `agreedToTerms` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates if user has agreed to terms (Read-only)
  *   `customSchemas` (*type:* `%{optional(String.t) => GoogleApi.Admin.Directory_v1.Model.UserCustomProperties.t}`, *default:* `nil`) - Custom fields of the user.
  *   `externalIds` (*type:* `any()`, *default:* `nil`) - The external Ids of User *
  *   `gender` (*type:* `any()`, *default:* `nil`) - Gender of User
  *   `recoveryPhone` (*type:* `String.t`, *default:* `nil`) - Recovery phone of the user. The phone number must be in the E.164 format, starting with the plus sign (+). Example: *+16506661212*.
  *   `deletionTime` (*type:* `DateTime.t`, *default:* `nil`) - 
  *   `keywords` (*type:* `any()`, *default:* `nil`) - Keywords of User
  *   `isEnrolledIn2Sv` (*type:* `boolean()`, *default:* `nil`) - Output only. Is enrolled in 2-step verification (Read-only)
  *   `includeInGlobalAddressList` (*type:* `boolean()`, *default:* `nil`) - Boolean indicating if user is included in Global Address List
  *   `addresses` (*type:* `any()`, *default:* `nil`) - Addresses of User
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#user`) - Output only. Kind of resource this is.
  *   `sshPublicKeys` (*type:* `any()`, *default:* `nil`) - The SSH public keys of User
  *   `languages` (*type:* `any()`, *default:* `nil`) - Languages of User
  *   `password` (*type:* `String.t`, *default:* `nil`) - User's password
  *   `thumbnailPhotoEtag` (*type:* `String.t`, *default:* `nil`) - Output only. ETag of the user's photo (Read-only)
  *   `hashFunction` (*type:* `String.t`, *default:* `nil`) - Hash function name for password. Supported are MD5, SHA-1 and crypt
  *   `name` (*type:* `GoogleApi.Admin.Directory_v1.Model.UserName.t`, *default:* `nil`) - User's name
  *   `suspended` (*type:* `boolean()`, *default:* `nil`) - Indicates if user is suspended.
  *   `lastLoginTime` (*type:* `DateTime.t`, *default:* `nil`) - User's last login time. (Read-only)
  *   `relations` (*type:* `any()`, *default:* `nil`) - The Relations of User *
  *   `recoveryEmail` (*type:* `String.t`, *default:* `nil`) - Recovery email of the user.
  *   `websites` (*type:* `any()`, *default:* `nil`) - Websites of User
  *   `primaryEmail` (*type:* `String.t`, *default:* `nil`) - username of User
  *   `ipWhitelisted` (*type:* `boolean()`, *default:* `nil`) - Boolean indicating if ip is whitelisted
  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - User's G Suite account creation time. (Read-only)
  *   `customerId` (*type:* `String.t`, *default:* `nil`) - Output only. CustomerId of User (Read-only)
  *   `archived` (*type:* `boolean()`, *default:* `nil`) - Indicates if user is archived.
  *   `isDelegatedAdmin` (*type:* `boolean()`, *default:* `nil`) - Output only. Boolean indicating if the user is delegated admin (Read-only)
  *   `locations` (*type:* `any()`, *default:* `nil`) - Locations of User
  *   `nonEditableAliases` (*type:* `list(String.t)`, *default:* `nil`) - Output only. List of non editable aliases (Read-only)
  *   `emails` (*type:* `any()`, *default:* `nil`) - Emails of User
  *   `isAdmin` (*type:* `boolean()`, *default:* `nil`) - Output only. Boolean indicating if the user is admin (Read-only)
  *   `aliases` (*type:* `list(String.t)`, *default:* `nil`) - Output only. List of aliases (Read-only)
  *   `id` (*type:* `String.t`, *default:* `nil`) - Unique identifier of User (Read-only)
  *   `isEnforcedIn2Sv` (*type:* `boolean()`, *default:* `nil`) - Output only. Is 2-step verification enforced (Read-only)
  *   `thumbnailPhotoUrl` (*type:* `String.t`, *default:* `nil`) - Output only. Photo Url of the user (Read-only)
  *   `phones` (*type:* `any()`, *default:* `nil`) - Phone numbers of User
  *   `notes` (*type:* `any()`, *default:* `nil`) - Notes of User
  *   `changePasswordAtNextLogin` (*type:* `boolean()`, *default:* `nil`) - Boolean indicating if the user should change password in next login
  *   `isMailboxSetup` (*type:* `boolean()`, *default:* `nil`) - Output only. Is mailbox setup (Read-only)
  *   `organizations` (*type:* `any()`, *default:* `nil`) - Organizations of User
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ims => any(),
          :posixAccounts => any(),
          :etag => String.t(),
          :orgUnitPath => String.t(),
          :suspensionReason => String.t(),
          :agreedToTerms => boolean(),
          :customSchemas => %{
            optional(String.t()) => GoogleApi.Admin.Directory_v1.Model.UserCustomProperties.t()
          },
          :externalIds => any(),
          :gender => any(),
          :recoveryPhone => String.t(),
          :deletionTime => DateTime.t(),
          :keywords => any(),
          :isEnrolledIn2Sv => boolean(),
          :includeInGlobalAddressList => boolean(),
          :addresses => any(),
          :kind => String.t(),
          :sshPublicKeys => any(),
          :languages => any(),
          :password => String.t(),
          :thumbnailPhotoEtag => String.t(),
          :hashFunction => String.t(),
          :name => GoogleApi.Admin.Directory_v1.Model.UserName.t(),
          :suspended => boolean(),
          :lastLoginTime => DateTime.t(),
          :relations => any(),
          :recoveryEmail => String.t(),
          :websites => any(),
          :primaryEmail => String.t(),
          :ipWhitelisted => boolean(),
          :creationTime => DateTime.t(),
          :customerId => String.t(),
          :archived => boolean(),
          :isDelegatedAdmin => boolean(),
          :locations => any(),
          :nonEditableAliases => list(String.t()),
          :emails => any(),
          :isAdmin => boolean(),
          :aliases => list(String.t()),
          :id => String.t(),
          :isEnforcedIn2Sv => boolean(),
          :thumbnailPhotoUrl => String.t(),
          :phones => any(),
          :notes => any(),
          :changePasswordAtNextLogin => boolean(),
          :isMailboxSetup => boolean(),
          :organizations => any()
        }

  field(:ims)
  field(:posixAccounts)
  field(:etag)
  field(:orgUnitPath)
  field(:suspensionReason)
  field(:agreedToTerms)
  field(:customSchemas, as: GoogleApi.Admin.Directory_v1.Model.UserCustomProperties, type: :map)
  field(:externalIds)
  field(:gender)
  field(:recoveryPhone)
  field(:deletionTime, as: DateTime)
  field(:keywords)
  field(:isEnrolledIn2Sv)
  field(:includeInGlobalAddressList)
  field(:addresses)
  field(:kind)
  field(:sshPublicKeys)
  field(:languages)
  field(:password)
  field(:thumbnailPhotoEtag)
  field(:hashFunction)
  field(:name, as: GoogleApi.Admin.Directory_v1.Model.UserName)
  field(:suspended)
  field(:lastLoginTime, as: DateTime)
  field(:relations)
  field(:recoveryEmail)
  field(:websites)
  field(:primaryEmail)
  field(:ipWhitelisted)
  field(:creationTime, as: DateTime)
  field(:customerId)
  field(:archived)
  field(:isDelegatedAdmin)
  field(:locations)
  field(:nonEditableAliases, type: :list)
  field(:emails)
  field(:isAdmin)
  field(:aliases, type: :list)
  field(:id)
  field(:isEnforcedIn2Sv)
  field(:thumbnailPhotoUrl)
  field(:phones)
  field(:notes)
  field(:changePasswordAtNextLogin)
  field(:isMailboxSetup)
  field(:organizations)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.User do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.User.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.User do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
