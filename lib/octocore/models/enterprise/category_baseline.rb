require 'cequel'

require 'octocore/baseline'
require 'octocore/schedeuleable'

module Octo
  module Cassandra

    class CategoryBaseline
      include Cequel::Record
      extend Octo::Baseline
      extend Octo::Scheduleable

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      baselineable
      # Specify the type of counter
      baseline_for 'Octo::CategoryHit'

    end
  end

end
