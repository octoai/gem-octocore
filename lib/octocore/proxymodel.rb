
module Octo
  module ProxyModel

    DB_SUPPORTED = Set.new([:Cassandra])

    def ProxyModel.included(base)
      DB_SUPPORTED.each do |db|
        if base.constants.include?(db)
          base.const_get(db).constants.each do |klass|
            klazz = base.const_get(db).const_get(klass)
            base.const_set(klass, klazz)
          end
        end
      end
    end

  end
end

