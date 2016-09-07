require 'cequel'

require 'octocore/counter'
require 'octocore/trendable'
require 'octocore/schedeuleable'

module Octo
  module Cassandra

    class TagHit
      include Cequel::Record
      extend Octo::Counter
      extend Octo::Trendable
      extend Octo::Scheduleable

      COUNTERS = 20

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      countables
      trendables

      baseline 'Octo::Cassandra::TagBaseline'
      trends_class 'Octo::Cassandra::TagTrend'

    end
  end

end
