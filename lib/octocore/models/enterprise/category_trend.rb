require 'cequel'
require 'octocore/trends'

module Octo
  module Cassandra

    # Class for storing trending category
    class CategoryTrend
      include Cequel::Record
      extend Octo::Trends

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      trendable

      trend_for 'Octo::Cassandra::CategoryHit'
      trend_class 'Octo::Cassandra::Category'
    end
  end

end

