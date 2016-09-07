require 'cequel'
require 'octocore/record'

module Octo
  module Cassandra

    class Category
      include Cequel::Record
      include Octo::Record

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      key :cat_text, :text
      timestamps
    end
  end

end

