require 'cequel'

module Octo
  module Cassandra

    class Template
      include Cequel::Record

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      key :category_type, :text

      column :template_text, :text
      column :active, :boolean

      timestamps

    end
  end

end

