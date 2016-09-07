require 'cequel'

module Octo

  module Cassandra

    class User
      include Cequel::Record
      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      key :id, :bigint

      timestamps

      has_many :user_location_histories
    end
  end
end

