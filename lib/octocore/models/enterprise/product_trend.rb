require 'cequel'
require 'octocore/trends'

module Octo
  module Cassandra

    # Class for storing trending product
    class ProductTrend
      include Cequel::Record
      extend Octo::Trends

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      trendable

      trend_for 'Octo::Cassandra::ProductHit'
      trend_class 'Octo::Cassandra::Product'
    end
  end

end
