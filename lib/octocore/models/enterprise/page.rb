require 'cequel'

module Octo
  module Cassandra

    class Page
      include Cequel::Record

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      key :routeurl, :text

      set :categories, :text
      set :tags, :text
    end
  end

end

