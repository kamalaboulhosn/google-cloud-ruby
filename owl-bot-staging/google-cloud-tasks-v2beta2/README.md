# Ruby Client for the Cloud Tasks V2beta2 API

API Client library for the Cloud Tasks V2beta2 API

Cloud Tasks is a fully managed service that allows you to manage the execution, dispatch and delivery of a large number of distributed tasks. You can asynchronously perform work outside of a user request. Your tasks can be executed on App Engine or any arbitrary HTTP endpoint.

https://github.com/googleapis/google-cloud-ruby

This gem is a _versioned_ client. It provides basic client classes for a
specific version of the Cloud Tasks V2beta2 API. Most users should consider using
the main client gem,
[google-cloud-tasks](https://rubygems.org/gems/google-cloud-tasks).
See the section below titled *Which client should I use?* for more information.

## Installation

```
$ gem install google-cloud-tasks-v2beta2
```

## Before You Begin

In order to use this library, you first need to go through the following steps:

1. [Select or create a Cloud Platform project.](https://console.cloud.google.com/project)
1. [Enable billing for your project.](https://cloud.google.com/billing/docs/how-to/modify-project#enable_billing_for_a_project)
1. [Enable the API.](https://console.cloud.google.com/apis/library/cloudtasks.googleapis.com)
1. [Set up authentication.](AUTHENTICATION.md)

## Quick Start

```ruby
require "google/cloud/tasks/v2beta2"

client = ::Google::Cloud::Tasks::V2beta2::CloudTasks::Client.new
request = ::Google::Cloud::Tasks::V2beta2::ListQueuesRequest.new # (request fields as keyword arguments...)
response = client.list_queues request
```

View the [Client Library Documentation](https://cloud.google.com/ruby/docs/reference/google-cloud-tasks-v2beta2/latest)
for class and method documentation.

See also the [Product Documentation](https://cloud.google.com/tasks)
for general usage information.

## Enabling Logging

To enable logging for this library, set the logger for the underlying [gRPC](https://github.com/grpc/grpc/tree/master/src/ruby) library.
The logger that you set may be a Ruby stdlib [`Logger`](https://ruby-doc.org/stdlib/libdoc/logger/rdoc/Logger.html) as shown below,
or a [`Google::Cloud::Logging::Logger`](https://googleapis.dev/ruby/google-cloud-logging/latest)
that will write logs to [Cloud Logging](https://cloud.google.com/logging/). See [grpc/logconfig.rb](https://github.com/grpc/grpc/blob/master/src/ruby/lib/grpc/logconfig.rb)
and the gRPC [spec_helper.rb](https://github.com/grpc/grpc/blob/master/src/ruby/spec/spec_helper.rb) for additional information.

Configuring a Ruby stdlib logger:

```ruby
require "logger"

module MyLogger
  LOGGER = Logger.new $stderr, level: Logger::WARN
  def logger
    LOGGER
  end
end

# Define a gRPC module-level logger method before grpc/logconfig.rb loads.
module GRPC
  extend MyLogger
end
```


## Google Cloud Samples

To browse ready to use code samples check [Google Cloud Samples](https://cloud.google.com/docs/samples).

## Supported Ruby Versions

This library is supported on Ruby 2.5+.

Google provides official support for Ruby versions that are actively supported
by Ruby Core—that is, Ruby versions that are either in normal maintenance or
in security maintenance, and not end of life. Currently, this means Ruby 2.5
and later. Older versions of Ruby _may_ still work, but are unsupported and not
recommended. See https://www.ruby-lang.org/en/downloads/branches/ for details
about the Ruby support schedule.

## Which client should I use?

Most modern Ruby client libraries for Google APIs come in two flavors: the main
client library with a name such as `google-cloud-tasks`,
and lower-level _versioned_ client libraries with names such as
`google-cloud-tasks-v2beta2`.
_In most cases, you should install the main client._

### What's the difference between the main client and a versioned client?

A _versioned client_ provides a basic set of data types and client classes for
a _single version_ of a specific service. (That is, for a service with multiple
versions, there might be a separate versioned client for each service version.)
Most versioned clients are written and maintained by a code generator.

The _main client_ is designed to provide you with the _recommended_ client
interfaces for the service. There will be only one main client for any given
service, even a service with multiple versions. The main client includes
factory methods for constructing the client objects we recommend for most
users. In some cases, those will be classes provided by an underlying versioned
client; in other cases, they will be handwritten higher-level client objects
with additional capabilities, convenience methods, or best practices built in.
Generally, the main client will default to a recommended service version,
although in some cases you can override this if you need to talk to a specific
service version.

### Why would I want to use the main client?

We recommend that most users install the main client gem for a service. You can
identify this gem as the one _without_ a version in its name, e.g.
`google-cloud-tasks`.
The main client is recommended because it will embody the best practices for
accessing the service, and may also provide more convenient interfaces or
tighter integration into frameworks and third-party libraries. In addition, the
documentation and samples published by Google will generally demonstrate use of
the main client.

### Why would I want to use a versioned client?

You can use a versioned client if you are content with a possibly lower-level
class interface, you explicitly want to avoid features provided by the main
client, or you want to access a specific service version not be covered by the
main client. You can identify versioned client gems because the service version
is part of the name, e.g. `google-cloud-tasks-v2beta2`.

### What about the google-apis-<name> clients?

Client library gems with names that begin with `google-apis-` are based on an
older code generation technology. They talk to a REST/JSON backend (whereas
most modern clients talk to a [gRPC](https://grpc.io/) backend) and they may
not offer the same performance, features, and ease of use provided by more
modern clients.

The `google-apis-` clients have wide coverage across Google services, so you
might need to use one if there is no modern client available for the service.
However, if a modern client is available, we generally recommend it over the
older `google-apis-` clients.