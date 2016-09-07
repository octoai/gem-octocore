require 'cequel'
require 'octocore/record'

module Octo
  module Cassandra

    # Choices for dimensions
    class DimensionChoice

      include Cequel::Record
      include Octo::Record

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      key :dimension, :int
      column :choice, :text

      timestamps

    end
  end

end

