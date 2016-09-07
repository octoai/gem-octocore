require 'cequel'

module Octo
  module Cassandra

    class UserBrowserDetails
      include Cequel::Record

      belongs_to :user, class_name: 'Octo::Cassandra::User'

      column :cookieid, :text
      column :name, :text
      column :platform, :text
      column :manufacturer, :text

      timestamps
    end
  end

end
