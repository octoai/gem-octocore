require 'cequel'

require 'octocore/counter'
require 'octocore/trendable'
require 'octocore/schedeuleable'

module Octo
  module Cassandra

    class ApiHit
      include Cequel::Record
      extend Octo::Counter
      extend Octo::Scheduleable

      COUNTERS = 30

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      countables

    end
  end

end

