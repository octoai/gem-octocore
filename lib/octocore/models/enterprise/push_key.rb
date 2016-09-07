require 'cequel'

module Octo
  module Cassandra

    class PushKey
      include Cequel::Record

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      key :push_type, :bigint
      column :key, :text

      timestamps
    end
  end

end

