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

defmodule GoogleApi.Admin.Directory_v1.Model.CustomerPostalAddress do
  @moduledoc """


  ## Attributes

  *   `addressLine1` (*type:* `String.t`, *default:* `nil`) - A customer's physical address. The address can be composed of one to three lines.
  *   `addressLine2` (*type:* `String.t`, *default:* `nil`) - Address line 2 of the address.
  *   `addressLine3` (*type:* `String.t`, *default:* `nil`) - Address line 3 of the address.
  *   `contactName` (*type:* `String.t`, *default:* `nil`) - The customer contact's name.
  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - This is a required property. For countryCode information see the ISO 3166 country code elements.
  *   `locality` (*type:* `String.t`, *default:* `nil`) - Name of the locality. An example of a locality value is the city of San Francisco.
  *   `organizationName` (*type:* `String.t`, *default:* `nil`) - The company or company division name.
  *   `postalCode` (*type:* `String.t`, *default:* `nil`) - The postal code. A postalCode example is a postal zip code such as 10009. This is in accordance with - http: //portablecontacts.net/draft-spec.html#address_element.
  *   `region` (*type:* `String.t`, *default:* `nil`) - Name of the region. An example of a region value is NY for the state of New York.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addressLine1 => String.t(),
          :addressLine2 => String.t(),
          :addressLine3 => String.t(),
          :contactName => String.t(),
          :countryCode => String.t(),
          :locality => String.t(),
          :organizationName => String.t(),
          :postalCode => String.t(),
          :region => String.t()
        }

  field(:addressLine1)
  field(:addressLine2)
  field(:addressLine3)
  field(:contactName)
  field(:countryCode)
  field(:locality)
  field(:organizationName)
  field(:postalCode)
  field(:region)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.CustomerPostalAddress do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.CustomerPostalAddress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.CustomerPostalAddress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
