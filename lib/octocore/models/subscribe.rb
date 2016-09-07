require 'cequel'

# Model for Subscribe to us (in the footer), on the microsite
module Octo

  module Cassandra

    class Subscriber
      include Cequel::Record

      key :created_at, :timestamp
      key :email, :text

    end
  end
end

