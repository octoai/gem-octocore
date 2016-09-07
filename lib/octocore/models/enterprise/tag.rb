require 'cequel'
require 'octocore/record'

module Octo
  module Cassandra

    class Tag
      include Cequel::Record
      include Octo::Record

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      key :tag_text, :text
      timestamps
    end
  end

end
