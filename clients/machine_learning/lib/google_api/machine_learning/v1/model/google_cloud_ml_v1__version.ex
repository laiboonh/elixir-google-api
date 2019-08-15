# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Version do
  @moduledoc """
  Represents a version of the model.

  Each version is a trained model deployed in the cloud, ready to handle
  prediction requests. A model can have multiple versions. You can get
  information about all of the versions of a given model by calling
  [projects.models.versions.list](/ml-engine/reference/rest/v1/projects.models.versions/list).

  ## Attributes

  *   `autoScaling` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__AutoScaling.t`, *default:* `nil`) - Automatically scale the number of nodes used to serve the model in
      response to increases and decreases in traffic. Care should be
      taken to ramp up traffic according to the model's ability to scale
      or you will start seeing increases in latency and 429 response codes.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the version was created.
  *   `deploymentUri` (*type:* `String.t`, *default:* `nil`) - Required. The Cloud Storage location of the trained model used to
      create the version. See the
      [guide to model
      deployment](/ml-engine/docs/tensorflow/deploying-models) for more
      information.

      When passing Version to
      [projects.models.versions.create](/ml-engine/reference/rest/v1/projects.models.versions/create)
      the model service uses the specified location as the source of the model.
      Once deployed, the model version is hosted by the prediction service, so
      this location is useful only as a historical record.
      The total number of model files can't exceed 1000.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The description specified for the version when it was created.
  *   `errorMessage` (*type:* `String.t`, *default:* `nil`) - Output only. The details of a failure or a cancellation.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - `etag` is used for optimistic concurrency control as a way to help
      prevent simultaneous updates of a model from overwriting each other.
      It is strongly suggested that systems make use of the `etag` in the
      read-modify-write cycle to perform model updates in order to avoid race
      conditions: An `etag` is returned in the response to `GetVersion`, and
      systems are expected to put that etag in the request to `UpdateVersion` to
      ensure that their change will be applied to the model as intended.
  *   `framework` (*type:* `String.t`, *default:* `nil`) - Optional. The machine learning framework AI Platform uses to train
      this version of the model. Valid values are `TENSORFLOW`, `SCIKIT_LEARN`,
      `XGBOOST`. If you do not specify a framework, AI Platform
      will analyze files in the deployment_uri to determine a framework. If you
      choose `SCIKIT_LEARN` or `XGBOOST`, you must also set the runtime version
      of the model to 1.4 or greater.

      Do **not** specify a framework if you're deploying a [custom
      prediction routine](/ml-engine/docs/tensorflow/custom-prediction-routines).
  *   `isDefault` (*type:* `boolean()`, *default:* `nil`) - Output only. If true, this version will be used to handle prediction
      requests that do not specify a version.

      You can change the default version by calling
      [projects.methods.versions.setDefault](/ml-engine/reference/rest/v1/projects.models.versions/setDefault).
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. One or more labels that you can add, to organize your model
      versions. Each label is a key-value pair, where both the key and the value
      are arbitrary strings that you supply.
      For more information, see the documentation on
      <a href="/ml-engine/docs/tensorflow/resource-labels">using labels</a>.
  *   `lastUseTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the version was last used for prediction.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Optional. The type of machine on which to serve the model. Currently only
      applies to online prediction service.
      <dl>
        <dt>mls1-c1-m2</dt>
        <dd>
        The <b>default</b> machine type, with 1 core and 2 GB RAM. The deprecated
        name for this machine type is "mls1-highmem-1".
        </dd>
        <dt>mls1-c4-m2</dt>
        <dd>
        In <b>Beta</b>. This machine type has 4 cores and 2 GB RAM. The
        deprecated name for this machine type is "mls1-highcpu-4".
        </dd>
      </dl>
  *   `manualScaling` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__ManualScaling.t`, *default:* `nil`) - Manually select the number of nodes to use for serving the
      model. You should generally use `auto_scaling` with an appropriate
      `min_nodes` instead, but this option is available if you want more
      predictable billing. Beware that latency and error rates will increase
      if the traffic exceeds that capability of the system to serve it based
      on the selected number of nodes.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name specified for the version when it was created.

      The version name must be unique within the model it is created in.
  *   `packageUris` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Cloud Storage paths (`gs://…`) of packages for [custom
      prediction routines](/ml-engine/docs/tensorflow/custom-prediction-routines)
      or [scikit-learn pipelines with custom
      code](/ml-engine/docs/scikit/exporting-for-prediction#custom-pipeline-code).

      For a custom prediction routine, one of these packages must contain your
      Predictor class (see
      [`predictionClass`](#Version.FIELDS.prediction_class)). Additionally,
      include any dependencies used by your Predictor or scikit-learn pipeline
      uses that are not already included in your selected [runtime
      version](/ml-engine/docs/tensorflow/runtime-version-list).

      If you specify this field, you must also set
      [`runtimeVersion`](#Version.FIELDS.runtime_version) to 1.4 or greater.
  *   `predictionClass` (*type:* `String.t`, *default:* `nil`) - Optional. The fully qualified name
      (<var>module_name</var>.<var>class_name</var>) of a class that implements
      the Predictor interface described in this reference field. The module
      containing this class should be included in a package provided to the
      [`packageUris` field](#Version.FIELDS.package_uris).

      Specify this field if and only if you are deploying a [custom prediction
      routine (beta)](/ml-engine/docs/tensorflow/custom-prediction-routines).
      If you specify this field, you must set
      [`runtimeVersion`](#Version.FIELDS.runtime_version) to 1.4 or greater.

      The following code sample provides the Predictor interface:

      ```py
      class Predictor(object):
      \\"\\"\\"Interface for constructing custom predictors.\\"\\"\\"

      def predict(self, instances, **kwargs):
          \\"\\"\\"Performs custom prediction.

          Instances are the decoded values from the request. They have already
          been deserialized from JSON.

          Args:
              instances: A list of prediction input instances.
              **kwargs: A dictionary of keyword args provided as additional
                  fields on the predict request body.

          Returns:
              A list of outputs containing the prediction results. This list must
              be JSON serializable.
          \\"\\"\\"
          raise NotImplementedError()

      @classmethod
      def from_path(cls, model_dir):
          \\"\\"\\"Creates an instance of Predictor using the given path.

          Loading of the predictor should be done in this method.

          Args:
              model_dir: The local directory that contains the exported model
                  file along with any additional files uploaded when creating the
                  version resource.

          Returns:
              An instance implementing this Predictor class.
          \\"\\"\\"
          raise NotImplementedError()
      ```

      Learn more about [the Predictor interface and custom prediction
      routines](/ml-engine/docs/tensorflow/custom-prediction-routines).
  *   `pythonVersion` (*type:* `String.t`, *default:* `nil`) - Optional. The version of Python used in prediction. If not set, the default
      version is '2.7'. Python '3.5' is available when `runtime_version` is set
      to '1.4' and above. Python '2.7' works with all supported runtime versions.
  *   `requestLoggingConfig` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__RequestLoggingConfig.t`, *default:* `nil`) - Optional. Configures the request-response pair logging on predictions from
      this Version.
  *   `runtimeVersion` (*type:* `String.t`, *default:* `nil`) - Optional. The AI Platform runtime version to use for this deployment.
      If not set, AI Platform uses the default stable version, 1.0. For more
      information, see the
      [runtime version list](/ml-engine/docs/runtime-version-list) and
      [how to manage runtime versions](/ml-engine/docs/versioning).
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies the service account for resource access control.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of a version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoScaling => GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__AutoScaling.t(),
          :createTime => DateTime.t(),
          :deploymentUri => String.t(),
          :description => String.t(),
          :errorMessage => String.t(),
          :etag => String.t(),
          :framework => String.t(),
          :isDefault => boolean(),
          :labels => map(),
          :lastUseTime => DateTime.t(),
          :machineType => String.t(),
          :manualScaling => GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__ManualScaling.t(),
          :name => String.t(),
          :packageUris => list(String.t()),
          :predictionClass => String.t(),
          :pythonVersion => String.t(),
          :requestLoggingConfig =>
            GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__RequestLoggingConfig.t(),
          :runtimeVersion => String.t(),
          :serviceAccount => String.t(),
          :state => String.t()
        }

  field(:autoScaling, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__AutoScaling)
  field(:createTime, as: DateTime)
  field(:deploymentUri)
  field(:description)
  field(:errorMessage)
  field(:etag)
  field(:framework)
  field(:isDefault)
  field(:labels, type: :map)
  field(:lastUseTime, as: DateTime)
  field(:machineType)
  field(:manualScaling, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__ManualScaling)
  field(:name)
  field(:packageUris, type: :list)
  field(:predictionClass)
  field(:pythonVersion)

  field(
    :requestLoggingConfig,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__RequestLoggingConfig
  )

  field(:runtimeVersion)
  field(:serviceAccount)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Version do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Version.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Version do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
