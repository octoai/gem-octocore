require 'cequel'
require 'octocore/record'

module Octo
  module Cassandra

    class Rules
      include Cequel::Record
      include Octo::Record

      # Types of conversions
      DAILY               = 0
      WEEKLY              = 1
      WEEKENDS            = 2
      ALTERNATE           = 3

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      key :name_slug, :text       # Name slug as rule
      key :active, :boolean       # Active or Not

      column :name, :text         # Name of the rule
      column :segment, :text      # slug name of segment
      column :template_cat, :text
      column :duration, :int     # Daily, weekly, weekends ,alternate days
      column :start_time, :timestamp
      column :end_time, :timestamp

      timestamps

      class << self

        # Fetches the types of durations
        # @return [Hash] The name and its duration value
        def duration_types
          {
            Octo::Cassandra::Rules::DAILY => 'Daily',
            Octo::Cassandra::Rules::WEEKLY => 'Weekly',
            Octo::Cassandra::Rules::WEEKENDS => 'Weekends',
            Octo::Cassandra::Rules::ALTERNATE => 'Alternate Days'
          }
        end
      end

    end
  end
end

