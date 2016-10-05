require 'cequel'

module Octo
  class CustomEvents
    include Cequel::Record

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :created_at, :timestamp
    key :userid, :bigint

    column :msg_json, :text

  end
end
