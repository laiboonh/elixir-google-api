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

defmodule GoogleApi.Dataproc.V1.Model.Expr do
  @moduledoc """
  Represents an expression text. Example:
  title: "User account presence"
  description: "Determines whether the request has a user account"
  expression: "size(request.user) > 0"


  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  *   `expression` (*type:* `String.t`, *default:* `nil`) - Textual representation of an expression in Common Expression Language syntax.The application context of the containing message determines which well-known feature set of CEL is supported.
  *   `location` (*type:* `String.t`, *default:* `nil`) - An optional string indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
  *   `title` (*type:* `String.t`, *default:* `nil`) - An optional title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :expression => String.t(),
          :location => String.t(),
          :title => String.t()
        }

  field(:description)
  field(:expression)
  field(:location)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.Expr do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.Expr.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.Expr do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
