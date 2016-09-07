require 'cequel'
require 'octocore/record'

module Octo
  module Cassandra

    class ApiEvent
      include Cequel::Record
      include Octo::Record

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      key :eventname, :text
    end
  end

end

