require 'cequel'
require 'octocore/record'
require 'set'

module Octo
  module Cassandra

    # The segment class. Responsible for segments
    class Segment
      include Cequel::Record
      include Octo::Record

      belongs_to :enterprise, class_name: 'Octo::Cassandra::Enterprise'

      key :name_slug, :text       # Name slug as key
      key :active, :boolean       # Active or Not

      column :intelligence, :boolean # If it is Octo's intelligent segment or manual

      column :name, :text         # Name of the segment
      column :type, :int          # Type of segment
      column :event_type, :text   # Event Type used for events segmentation

      list :dimensions, :int      # list storing dimensions used
      list :operators, :int       # list storing operators on dimensions
      list :dim_operators, :int   # list storing operators between dimensions
      list :values, :text         # list of values for operations on dimensions

      timestamps                  # The usual housekeeping thing

      before_create :create_name_slug, :activate

      # Creates name slug
      def create_name_slug
        self.name_slug = self.name.to_slug
      end

      def activate
        self.active = true
      end

      def data(ts = Time.now.floor)
        args = {
          enterprise_id: self.enterprise.id,
          segment_slug: self.name_slug,
          ts: ts
        }
        res = Octo::Cassandra::SegmentData.where(args)
        if res.count > 0
          res.first
        elsif self.enterprise.fakedata?
          # populate a poser data
          val = [rand(1000..10000), rand(0.0..70.0)]
          args.merge!({ value: val })
          Octo::Cassandra::SegmentData.new(args).save!
        end
      end

      def self.find_by_enterprise_and_name(enterprise, name)
        where({enterprise_id: enterprise.id, name_slug: name.to_slug})
      end


    end
  end

end

