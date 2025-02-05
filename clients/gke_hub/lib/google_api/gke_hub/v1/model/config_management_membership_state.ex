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

defmodule GoogleApi.GKEHub.V1.Model.ConfigManagementMembershipState do
  @moduledoc """
  **Anthos Config Management**: State for a single cluster.

  ## Attributes

  *   `clusterName` (*type:* `String.t`, *default:* `nil`) - The user-defined name for the cluster used by ClusterSelectors to group clusters together. This should match Membership's membership_name, unless the user installed ACM on the cluster manually prior to enabling the ACM hub feature. Unique within a Anthos Config Management installation.
  *   `configSyncState` (*type:* `GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncState.t`, *default:* `nil`) - Current sync status
  *   `hierarchyControllerState` (*type:* `GoogleApi.GKEHub.V1.Model.ConfigManagementHierarchyControllerState.t`, *default:* `nil`) - Hierarchy Controller status
  *   `membershipSpec` (*type:* `GoogleApi.GKEHub.V1.Model.ConfigManagementMembershipSpec.t`, *default:* `nil`) - Membership configuration in the cluster. This represents the actual state in the cluster, while the MembershipSpec in the FeatureSpec represents the intended state
  *   `operatorState` (*type:* `GoogleApi.GKEHub.V1.Model.ConfigManagementOperatorState.t`, *default:* `nil`) - Current install status of ACM's Operator
  *   `policyControllerState` (*type:* `GoogleApi.GKEHub.V1.Model.ConfigManagementPolicyControllerState.t`, *default:* `nil`) - PolicyController status
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterName => String.t() | nil,
          :configSyncState => GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncState.t() | nil,
          :hierarchyControllerState =>
            GoogleApi.GKEHub.V1.Model.ConfigManagementHierarchyControllerState.t() | nil,
          :membershipSpec => GoogleApi.GKEHub.V1.Model.ConfigManagementMembershipSpec.t() | nil,
          :operatorState => GoogleApi.GKEHub.V1.Model.ConfigManagementOperatorState.t() | nil,
          :policyControllerState =>
            GoogleApi.GKEHub.V1.Model.ConfigManagementPolicyControllerState.t() | nil
        }

  field(:clusterName)
  field(:configSyncState, as: GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncState)

  field(:hierarchyControllerState,
    as: GoogleApi.GKEHub.V1.Model.ConfigManagementHierarchyControllerState
  )

  field(:membershipSpec, as: GoogleApi.GKEHub.V1.Model.ConfigManagementMembershipSpec)
  field(:operatorState, as: GoogleApi.GKEHub.V1.Model.ConfigManagementOperatorState)

  field(:policyControllerState,
    as: GoogleApi.GKEHub.V1.Model.ConfigManagementPolicyControllerState
  )
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.ConfigManagementMembershipState do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.ConfigManagementMembershipState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.ConfigManagementMembershipState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
