require 'cequel'

module Octo
  module Cassandra

    class ProductPageView
      include Cequel::Record
      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      key :userid, :bigint
      key :created_at, :timestamp, order: :desc

      column :product_id, :bigint
    end
  end

end

