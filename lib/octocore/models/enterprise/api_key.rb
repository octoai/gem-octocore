require 'cequel'

module Octo
  module Cassandra

    class ApiKey
      include Cequel::Record

      key :enterprise_key, :text
      key :enterprise_id, :uuid

    end
  end

end
