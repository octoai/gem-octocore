require 'cequel'
require 'octocore/record'

module Octo
  module Cassandra

    # Store adapter details of Enterprise
    class AdapterDetails
      include Cequel::Record
      include Octo::Record

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      key :adapter_id, :int
      key :enable, :boolean

      column :settings, :text

    end
  end

end

