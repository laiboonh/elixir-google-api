# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.YouTube.V3.Model.VideoProcessingDetails do
  @moduledoc """
  Describes processing status and progress and availability of some other Video resource parts.

  ## Attributes

  - editorSuggestionsAvailability (String.t): This value indicates whether video editing suggestions, which might improve video quality or the playback experience, are available for the video. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request. Defaults to: `null`.
  - fileDetailsAvailability (String.t): This value indicates whether file details are available for the uploaded video. You can retrieve a video&#39;s file details by requesting the fileDetails part in your videos.list() request. Defaults to: `null`.
  - processingFailureReason (String.t): The reason that YouTube failed to process the video. This property will only have a value if the processingStatus property&#39;s value is failed. Defaults to: `null`.
    - Enum - one of [other, streamingFailed, transcodeFailed, uploadFailed]
  - processingIssuesAvailability (String.t): This value indicates whether the video processing engine has generated suggestions that might improve YouTube&#39;s ability to process the the video, warnings that explain video processing problems, or errors that cause video processing problems. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request. Defaults to: `null`.
  - processingProgress (VideoProcessingDetailsProcessingProgress): The processingProgress object contains information about the progress YouTube has made in processing the video. The values are really only relevant if the video&#39;s processing status is processing. Defaults to: `null`.
  - processingStatus (String.t): The video&#39;s processing status. This value indicates whether YouTube was able to process the video or if the video is still being processed. Defaults to: `null`.
    - Enum - one of [failed, processing, succeeded, terminated]
  - tagSuggestionsAvailability (String.t): This value indicates whether keyword (tag) suggestions are available for the video. Tags can be added to a video&#39;s metadata to make it easier for other users to find the video. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request. Defaults to: `null`.
  - thumbnailsAvailability (String.t): This value indicates whether thumbnail images have been generated for the video. Defaults to: `null`.
  """

  defstruct [
    :editorSuggestionsAvailability,
    :fileDetailsAvailability,
    :processingFailureReason,
    :processingIssuesAvailability,
    :processingProgress,
    :processingStatus,
    :tagSuggestionsAvailability,
    :thumbnailsAvailability
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoProcessingDetails do
  import GoogleApi.YouTube.V3.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :processingProgress,
      :struct,
      GoogleApi.YouTube.V3.Model.VideoProcessingDetailsProcessingProgress,
      options
    )
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoProcessingDetails do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end
