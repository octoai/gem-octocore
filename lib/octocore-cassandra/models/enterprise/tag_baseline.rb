require 'cequel'

require 'octocore-cassandra/baseline'
require 'octocore-cassandra/schedeuleable'

module Octo
  class TagBaseline
    include Cequel::Record
    extend Octo::Baseline
    extend Octo::Scheduleable

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    baselineable

    # Specify the type of counter
    baseline_for 'Octo::TagHit'
  end
end
