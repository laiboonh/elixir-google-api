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

defmodule GoogleApi.VectorTile.V1.Model.FirstDerivativeElevationGrid do
  @moduledoc """
  A packed representation of a 2D grid of uniformly spaced points containing elevation data. Each point within the grid represents the altitude in meters above average sea level at that location within the tile. Elevations provided are (generally) relative to the EGM96 geoid, however some areas will be relative to NAVD88. EGM96 and NAVD88 are off by no more than 2 meters. The grid is oriented north-west to south-east, as illustrated: rows[0].a[0] rows[0].a[m] +-----------------+ | | | N | | ^ | | | | | W <-----> E | | | | | v | | S | | | +-----------------+ rows[n].a[0] rows[n].a[m] Rather than storing the altitudes directly, we store the diffs between them as integers at some requested level of precision to take advantage of integer packing. The actual altitude values a[] can be reconstructed using the scale and each row's first_altitude and altitude_diff fields. More details in go/elevation-encoding-options-for-enduro under "Recommended implementation".

  ## Attributes

  *   `altitudeMultiplier` (*type:* `number()`, *default:* `nil`) - A multiplier applied to the altitude fields below to extract the actual altitudes in meters from the elevation grid.
  *   `rows` (*type:* `list(GoogleApi.VectorTile.V1.Model.Row.t)`, *default:* `nil`) - Rows of points containing altitude data making up the elevation grid. Each row is the same length. Rows are ordered from north to south. E.g: rows[0] is the north-most row, and rows[n] is the south-most row.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :altitudeMultiplier => number() | nil,
          :rows => list(GoogleApi.VectorTile.V1.Model.Row.t()) | nil
        }

  field(:altitudeMultiplier)
  field(:rows, as: GoogleApi.VectorTile.V1.Model.Row, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.VectorTile.V1.Model.FirstDerivativeElevationGrid do
  def decode(value, options) do
    GoogleApi.VectorTile.V1.Model.FirstDerivativeElevationGrid.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VectorTile.V1.Model.FirstDerivativeElevationGrid do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
