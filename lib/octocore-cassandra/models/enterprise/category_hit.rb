require 'cequel'

require 'octocore-cassandra/counter'
require 'octocore-cassandra/trendable'
require 'octocore-cassandra/schedeuleable'

module Octo

  class CategoryHit
    include Cequel::Record
    extend Octo::Counter
    extend Octo::Trendable
    extend Octo::Scheduleable

    COUNTERS = 20

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    countables
    trendables

    baseline 'Octo::CategoryBaseline'
    trends_class 'Octo::CategoryTrend'

  end
end
