require 'cequel'

require 'octocore/counter'
require 'octocore/trendable'
require 'octocore/schedeuleable'

module Octo
  module Cassandra

    class ProductHit
      include Cequel::Record
      extend Octo::Counter
      extend Octo::Trendable
      extend Octo::Scheduleable

      COUNTERS = 30

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      countables
      trendables

      baseline 'Octo::Cassandra::ProductBaseline'
      trends_class 'Octo::Cassandra::ProductTrend'

    end
  end

end
