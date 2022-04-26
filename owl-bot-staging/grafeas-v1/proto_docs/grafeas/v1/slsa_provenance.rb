# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Grafeas
  module V1
    # @!attribute [rw] builder
    #   @return [::Grafeas::V1::SlsaProvenance::SlsaBuilder]
    # @!attribute [rw] recipe
    #   @return [::Grafeas::V1::SlsaProvenance::SlsaRecipe]
    #     Identifies the configuration used for the build.
    #     When combined with materials, this SHOULD fully describe the build,
    #     such that re-running this recipe results in bit-for-bit identical output
    #     (if the build is reproducible).
    # @!attribute [rw] metadata
    #   @return [::Grafeas::V1::SlsaProvenance::SlsaMetadata]
    # @!attribute [rw] materials
    #   @return [::Array<::Grafeas::V1::SlsaProvenance::Material>]
    #     The collection of artifacts that influenced the build including sources,
    #     dependencies, build tools, base images, and so on. This is considered to be
    #     incomplete unless metadata.completeness.materials is true. Unset or null is
    #     equivalent to empty.
    class SlsaProvenance
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # Steps taken to build the artifact.
      # For a TaskRun, typically each container corresponds to one step in the
      # recipe.
      # @!attribute [rw] type
      #   @return [::String]
      #     URI indicating what type of recipe was performed. It determines the
      #     meaning of recipe.entryPoint, recipe.arguments, recipe.environment, and
      #     materials.
      # @!attribute [rw] defined_in_material
      #   @return [::Integer]
      #     Index in materials containing the recipe steps that are not implied by
      #     recipe.type. For example, if the recipe type were "make", then this would
      #     point to the source containing the Makefile, not the make program itself.
      #     Set to -1 if the recipe doesn't come from a material, as zero is default
      #     unset value for int64.
      # @!attribute [rw] entry_point
      #   @return [::String]
      #     String identifying the entry point into the build.
      #     This is often a path to a configuration file and/or a target label within
      #     that file. The syntax and meaning are defined by recipe.type. For
      #     example, if the recipe type were "make", then this would reference the
      #     directory in which to run make as well as which target to use.
      # @!attribute [rw] arguments
      #   @return [::Google::Protobuf::Any]
      #     Collection of all external inputs that influenced the build on top of
      #     recipe.definedInMaterial and recipe.entryPoint. For example, if the
      #     recipe type were "make", then this might be the flags passed to make
      #     aside from the target, which is captured in recipe.entryPoint. Depending
      #     on the recipe Type, the structure may be different.
      # @!attribute [rw] environment
      #   @return [::Google::Protobuf::Any]
      #     Any other builder-controlled inputs necessary for correctly evaluating
      #     the recipe. Usually only needed for reproducing the build but not
      #     evaluated as part of policy. Depending on the recipe Type, the structure
      #     may be different.
      class SlsaRecipe
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Indicates that the builder claims certain fields in this message to be
      # complete.
      # @!attribute [rw] arguments
      #   @return [::Boolean]
      #     If true, the builder claims that recipe.arguments is complete, meaning
      #     that all external inputs are properly captured in the recipe.
      # @!attribute [rw] environment
      #   @return [::Boolean]
      #     If true, the builder claims that recipe.environment is claimed to be
      #     complete.
      # @!attribute [rw] materials
      #   @return [::Boolean]
      #     If true, the builder claims that materials are complete, usually through
      #     some controls to prevent network access. Sometimes called "hermetic".
      class SlsaCompleteness
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Other properties of the build.
      # @!attribute [rw] build_invocation_id
      #   @return [::String]
      #     Identifies the particular build invocation, which can be useful for
      #     finding associated logs or other ad-hoc analysis. The value SHOULD be
      #     globally unique, per in-toto Provenance spec.
      # @!attribute [rw] build_started_on
      #   @return [::Google::Protobuf::Timestamp]
      #     The timestamp of when the build started.
      # @!attribute [rw] build_finished_on
      #   @return [::Google::Protobuf::Timestamp]
      #     The timestamp of when the build completed.
      # @!attribute [rw] completeness
      #   @return [::Grafeas::V1::SlsaProvenance::SlsaCompleteness]
      #     Indicates that the builder claims certain fields in this message to be
      #     complete.
      # @!attribute [rw] reproducible
      #   @return [::Boolean]
      #     If true, the builder claims that running the recipe on materials will
      #     produce bit-for-bit identical output.
      class SlsaMetadata
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # @!attribute [rw] id
      #   @return [::String]
      class SlsaBuilder
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # @!attribute [rw] uri
      #   @return [::String]
      # @!attribute [rw] digest
      #   @return [::Google::Protobuf::Map{::String => ::String}]
      class Material
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods

        # @!attribute [rw] key
        #   @return [::String]
        # @!attribute [rw] value
        #   @return [::String]
        class DigestEntry
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
