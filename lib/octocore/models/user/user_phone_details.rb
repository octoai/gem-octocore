require 'cequel'

module Octo
  module Cassandra

    class UserPhoneDetails
      include Cequel::Record

      belongs_to :user, class_name: 'Octo::Cassandra::User'

      key :deviceid, :text
      column :manufacturer, :text
      column :model, :text
      column :os, :text

      timestamps
    end
  end

end

