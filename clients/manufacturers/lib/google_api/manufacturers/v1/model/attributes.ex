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

defmodule GoogleApi.Manufacturers.V1.Model.Attributes do
  @moduledoc """
  Attributes of the product. For more information, see https://support.google.com/manufacturers/answer/6124116. Next tag: 48

  ## Attributes

  *   `productType` (*type:* `list(String.t)`, *default:* `nil`) - The type or category of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#producttype.
  *   `includedDestination` (*type:* `list(String.t)`, *default:* `nil`) - A list of included destinations.
  *   `color` (*type:* `String.t`, *default:* `nil`) - The color of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#color.
  *   `itemGroupId` (*type:* `String.t`, *default:* `nil`) - The item group id of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#itemgroupid.
  *   `size` (*type:* `String.t`, *default:* `nil`) - The size of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#size.
  *   `pattern` (*type:* `String.t`, *default:* `nil`) - The pattern of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#pattern.
  *   `mpn` (*type:* `String.t`, *default:* `nil`) - The Manufacturer Part Number (MPN) of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#mpn.
  *   `gender` (*type:* `String.t`, *default:* `nil`) - The target gender of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#gender.
  *   `additionalImageLink` (*type:* `list(GoogleApi.Manufacturers.V1.Model.Image.t)`, *default:* `nil`) - The additional images of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#addlimage.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#description.
  *   `gtin` (*type:* `list(String.t)`, *default:* `nil`) - The Global Trade Item Number (GTIN) of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#gtin.
  *   `sizeSystem` (*type:* `String.t`, *default:* `nil`) - The size system of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#sizesystem.
  *   `releaseDate` (*type:* `String.t`, *default:* `nil`) - The release date of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#release.
  *   `theme` (*type:* `String.t`, *default:* `nil`) - The theme of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#theme.
  *   `productPageUrl` (*type:* `String.t`, *default:* `nil`) - The URL of the detail page of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productpage.
  *   `productLine` (*type:* `String.t`, *default:* `nil`) - The name of the group of products related to the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productline.
  *   `sizeType` (*type:* `String.t`, *default:* `nil`) - The size type of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#sizetype.
  *   `productDetail` (*type:* `list(GoogleApi.Manufacturers.V1.Model.ProductDetail.t)`, *default:* `nil`) - The details of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productdetail.
  *   `targetClientId` (*type:* `String.t`, *default:* `nil`) - The target client id. Should only be used in the accounts of the data partners.
  *   `material` (*type:* `String.t`, *default:* `nil`) - The material of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#material.
  *   `brand` (*type:* `String.t`, *default:* `nil`) - The brand name of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#brand.
  *   `flavor` (*type:* `String.t`, *default:* `nil`) - The flavor of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#flavor.
  *   `productName` (*type:* `String.t`, *default:* `nil`) - The canonical name of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productname.
  *   `videoLink` (*type:* `list(String.t)`, *default:* `nil`) - The videos of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#video.
  *   `scent` (*type:* `String.t`, *default:* `nil`) - The scent of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#scent.
  *   `suggestedRetailPrice` (*type:* `GoogleApi.Manufacturers.V1.Model.Price.t`, *default:* `nil`) - The suggested retail price (MSRP) of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#price.
  *   `imageLink` (*type:* `GoogleApi.Manufacturers.V1.Model.Image.t`, *default:* `nil`) - The image of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#image.
  *   `ageGroup` (*type:* `String.t`, *default:* `nil`) - The target age group of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#agegroup.
  *   `capacity` (*type:* `GoogleApi.Manufacturers.V1.Model.Capacity.t`, *default:* `nil`) - The capacity of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#capacity.
  *   `productHighlight` (*type:* `list(String.t)`, *default:* `nil`) - The product highlights. For more information, see https://support.google.com/manufacturers/answer/10066942
  *   `featureDescription` (*type:* `list(GoogleApi.Manufacturers.V1.Model.FeatureDescription.t)`, *default:* `nil`) - The rich format description of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#featuredesc.
  *   `richProductContent` (*type:* `list(String.t)`, *default:* `nil`) - Rich product content. For more information, see https://support.google.com/manufacturers/answer/9389865
  *   `format` (*type:* `String.t`, *default:* `nil`) - The format of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#format.
  *   `count` (*type:* `GoogleApi.Manufacturers.V1.Model.Count.t`, *default:* `nil`) - The count of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#count.
  *   `disclosureDate` (*type:* `String.t`, *default:* `nil`) - The disclosure date of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#disclosure.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#title.
  *   `excludedDestination` (*type:* `list(String.t)`, *default:* `nil`) - A list of excluded destinations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :productType => list(String.t()),
          :includedDestination => list(String.t()),
          :color => String.t(),
          :itemGroupId => String.t(),
          :size => String.t(),
          :pattern => String.t(),
          :mpn => String.t(),
          :gender => String.t(),
          :additionalImageLink => list(GoogleApi.Manufacturers.V1.Model.Image.t()),
          :description => String.t(),
          :gtin => list(String.t()),
          :sizeSystem => String.t(),
          :releaseDate => String.t(),
          :theme => String.t(),
          :productPageUrl => String.t(),
          :productLine => String.t(),
          :sizeType => String.t(),
          :productDetail => list(GoogleApi.Manufacturers.V1.Model.ProductDetail.t()),
          :targetClientId => String.t(),
          :material => String.t(),
          :brand => String.t(),
          :flavor => String.t(),
          :productName => String.t(),
          :videoLink => list(String.t()),
          :scent => String.t(),
          :suggestedRetailPrice => GoogleApi.Manufacturers.V1.Model.Price.t(),
          :imageLink => GoogleApi.Manufacturers.V1.Model.Image.t(),
          :ageGroup => String.t(),
          :capacity => GoogleApi.Manufacturers.V1.Model.Capacity.t(),
          :productHighlight => list(String.t()),
          :featureDescription => list(GoogleApi.Manufacturers.V1.Model.FeatureDescription.t()),
          :richProductContent => list(String.t()),
          :format => String.t(),
          :count => GoogleApi.Manufacturers.V1.Model.Count.t(),
          :disclosureDate => String.t(),
          :title => String.t(),
          :excludedDestination => list(String.t())
        }

  field(:productType, type: :list)
  field(:includedDestination, type: :list)
  field(:color)
  field(:itemGroupId)
  field(:size)
  field(:pattern)
  field(:mpn)
  field(:gender)
  field(:additionalImageLink, as: GoogleApi.Manufacturers.V1.Model.Image, type: :list)
  field(:description)
  field(:gtin, type: :list)
  field(:sizeSystem)
  field(:releaseDate)
  field(:theme)
  field(:productPageUrl)
  field(:productLine)
  field(:sizeType)
  field(:productDetail, as: GoogleApi.Manufacturers.V1.Model.ProductDetail, type: :list)
  field(:targetClientId)
  field(:material)
  field(:brand)
  field(:flavor)
  field(:productName)
  field(:videoLink, type: :list)
  field(:scent)
  field(:suggestedRetailPrice, as: GoogleApi.Manufacturers.V1.Model.Price)
  field(:imageLink, as: GoogleApi.Manufacturers.V1.Model.Image)
  field(:ageGroup)
  field(:capacity, as: GoogleApi.Manufacturers.V1.Model.Capacity)
  field(:productHighlight, type: :list)
  field(:featureDescription, as: GoogleApi.Manufacturers.V1.Model.FeatureDescription, type: :list)
  field(:richProductContent, type: :list)
  field(:format)
  field(:count, as: GoogleApi.Manufacturers.V1.Model.Count)
  field(:disclosureDate)
  field(:title)
  field(:excludedDestination, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Manufacturers.V1.Model.Attributes do
  def decode(value, options) do
    GoogleApi.Manufacturers.V1.Model.Attributes.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Manufacturers.V1.Model.Attributes do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
