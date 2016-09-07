require 'cequel'

module Octo
  module Cassandra

    class UserLocationHistory
      include Cequel::Record

      belongs_to :user, class_name: 'Octo::Cassandra::User'

      key :created_at, :timestamp

      column :latitude, :float
      column :longitude, :float
    end
  end


end

