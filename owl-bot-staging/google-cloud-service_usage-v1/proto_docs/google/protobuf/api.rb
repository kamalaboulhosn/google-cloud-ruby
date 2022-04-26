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


module Google
  module Protobuf
    # Api is a light-weight descriptor for an API Interface.
    #
    # Interfaces are also described as "protocol buffer services" in some contexts,
    # such as by the "service" keyword in a .proto file, but they are different
    # from API Services, which represent a concrete implementation of an interface
    # as opposed to simply a description of methods and bindings. They are also
    # sometimes simply referred to as "APIs" in other contexts, such as the name of
    # this message itself. See https://cloud.google.com/apis/design/glossary for
    # detailed terminology.
    # @!attribute [rw] name
    #   @return [::String]
    #     The fully qualified name of this interface, including package name
    #     followed by the interface's simple name.
    # @!attribute [rw] methods
    #   @return [::Array<::Google::Protobuf::Method>]
    #     The methods of this interface, in unspecified order.
    # @!attribute [rw] options
    #   @return [::Array<::Google::Protobuf::Option>]
    #     Any metadata attached to the interface.
    # @!attribute [rw] version
    #   @return [::String]
    #     A version string for this interface. If specified, must have the form
    #     `major-version.minor-version`, as in `1.10`. If the minor version is
    #     omitted, it defaults to zero. If the entire version field is empty, the
    #     major version is derived from the package name, as outlined below. If the
    #     field is not empty, the version in the package name will be verified to be
    #     consistent with what is provided here.
    #
    #     The versioning schema uses [semantic
    #     versioning](http://semver.org) where the major version number
    #     indicates a breaking change and the minor version an additive,
    #     non-breaking change. Both version numbers are signals to users
    #     what to expect from different versions, and should be carefully
    #     chosen based on the product plan.
    #
    #     The major version is also reflected in the package name of the
    #     interface, which must end in `v<major-version>`, as in
    #     `google.feature.v1`. For major versions 0 and 1, the suffix can
    #     be omitted. Zero major versions must only be used for
    #     experimental, non-GA interfaces.
    # @!attribute [rw] source_context
    #   @return [::Google::Protobuf::SourceContext]
    #     Source context for the protocol buffer service represented by this
    #     message.
    # @!attribute [rw] mixins
    #   @return [::Array<::Google::Protobuf::Mixin>]
    #     Included interfaces. See [Mixin][].
    # @!attribute [rw] syntax
    #   @return [::Google::Protobuf::Syntax]
    #     The source syntax of the service.
    class Api
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Method represents a method of an API interface.
    # @!attribute [rw] name
    #   @return [::String]
    #     The simple name of this method.
    # @!attribute [rw] request_type_url
    #   @return [::String]
    #     A URL of the input message type.
    # @!attribute [rw] request_streaming
    #   @return [::Boolean]
    #     If true, the request is streamed.
    # @!attribute [rw] response_type_url
    #   @return [::String]
    #     The URL of the output message type.
    # @!attribute [rw] response_streaming
    #   @return [::Boolean]
    #     If true, the response is streamed.
    # @!attribute [rw] options
    #   @return [::Array<::Google::Protobuf::Option>]
    #     Any metadata attached to the method.
    # @!attribute [rw] syntax
    #   @return [::Google::Protobuf::Syntax]
    #     The source syntax of this method.
    class Method
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Declares an API Interface to be included in this interface. The including
    # interface must redeclare all the methods from the included interface, but
    # documentation and options are inherited as follows:
    #
    # - If after comment and whitespace stripping, the documentation
    #   string of the redeclared method is empty, it will be inherited
    #   from the original method.
    #
    # - Each annotation belonging to the service config (http,
    #   visibility) which is not set in the redeclared method will be
    #   inherited.
    #
    # - If an http annotation is inherited, the path pattern will be
    #   modified as follows. Any version prefix will be replaced by the
    #   version of the including interface plus the [root][] path if
    #   specified.
    #
    # Example of a simple mixin:
    #
    #     package google.acl.v1;
    #     service AccessControl {
    #       // Get the underlying ACL object.
    #       rpc GetAcl(GetAclRequest) returns (Acl) {
    #         option (google.api.http).get = "/v1/{resource=**}:getAcl";
    #       }
    #     }
    #
    #     package google.storage.v2;
    #     service Storage {
    #       rpc GetAcl(GetAclRequest) returns (Acl);
    #
    #       // Get a data record.
    #       rpc GetData(GetDataRequest) returns (Data) {
    #         option (google.api.http).get = "/v2/{resource=**}";
    #       }
    #     }
    #
    # Example of a mixin configuration:
    #
    #     apis:
    #     - name: google.storage.v2.Storage
    #       mixins:
    #       - name: google.acl.v1.AccessControl
    #
    # The mixin construct implies that all methods in `AccessControl` are
    # also declared with same name and request/response types in
    # `Storage`. A documentation generator or annotation processor will
    # see the effective `Storage.GetAcl` method after inheriting
    # documentation and annotations as follows:
    #
    #     service Storage {
    #       // Get the underlying ACL object.
    #       rpc GetAcl(GetAclRequest) returns (Acl) {
    #         option (google.api.http).get = "/v2/{resource=**}:getAcl";
    #       }
    #       ...
    #     }
    #
    # Note how the version in the path pattern changed from `v1` to `v2`.
    #
    # If the `root` field in the mixin is specified, it should be a
    # relative path under which inherited HTTP paths are placed. Example:
    #
    #     apis:
    #     - name: google.storage.v2.Storage
    #       mixins:
    #       - name: google.acl.v1.AccessControl
    #         root: acls
    #
    # This implies the following inherited HTTP annotation:
    #
    #     service Storage {
    #       // Get the underlying ACL object.
    #       rpc GetAcl(GetAclRequest) returns (Acl) {
    #         option (google.api.http).get = "/v2/acls/{resource=**}:getAcl";
    #       }
    #       ...
    #     }
    # @!attribute [rw] name
    #   @return [::String]
    #     The fully qualified name of the interface which is included.
    # @!attribute [rw] root
    #   @return [::String]
    #     If non-empty specifies a path under which inherited HTTP paths
    #     are rooted.
    class Mixin
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end
  end
end
