require 'cequel'
require 'octocore/trends'

module Octo
  module Cassandra

    # Class for storing trending tag
    class TagTrend
      include Cequel::Record
      extend Octo::Trends

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      trendable

      trend_for 'Octo::Cassandra::TagHit'
      trend_class 'Octo::Cassandra::Tag'
    end
  end
end

