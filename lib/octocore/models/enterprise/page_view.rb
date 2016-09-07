require 'cequel'

module Octo
  module Cassandra

    class PageView
      include Cequel::Record

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      key :userid,     :bigint
      key :created_at, :timestamp, order: :desc

      column :routeurl, :text
    end
  end

end
