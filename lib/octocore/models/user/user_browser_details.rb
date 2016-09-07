require 'cequel'

module Octo
  module Cassandra

    class UserBrowserDetails
      include Cequel::Cassandra::Record

      belongs_to :user, class_name: 'Octo::User'

      column :cookieid, :text
      column :name, :text
      column :platform, :text
      column :manufacturer, :text

      timestamps
    end
  end

end
