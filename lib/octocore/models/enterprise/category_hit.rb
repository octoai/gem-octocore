require 'cequel'

require 'octocore/counter'
require 'octocore/trendable'
require 'octocore/schedeuleable'

module Octo
  module Cassandra

    class CategoryHit
      include Cequel::Record
      extend Octo::Counter
      extend Octo::Trendable
      extend Octo::Scheduleable

      COUNTERS = 20

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      countables
      trendables

      baseline 'Octo::Cassandra::CategoryBaseline'
      trends_class 'Octo::Cassandra::CategoryTrend'

    end
  end

end
