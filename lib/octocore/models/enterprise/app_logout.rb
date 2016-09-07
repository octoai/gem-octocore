require 'cequel'

module Octo
  module Cassandra

    class AppLogout
      include Cequel::Record

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      key :created_at, :timestamp
      key :userid, :bigint
    end
  end

end
