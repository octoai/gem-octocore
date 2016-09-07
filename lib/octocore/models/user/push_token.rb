require 'cequel'

module Octo

  module Cassandra
    class PushToken
      include Cequel::Record

      belongs_to :user, class_name: 'Octo::Cassandra::User'

      key :push_type, :bigint
      column :pushtoken, :text

      timestamps
    end
  end
end

