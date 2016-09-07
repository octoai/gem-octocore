require 'cequel'

module Octo
  module Cassandra

    class UserProfileDetails
      include Cequel::Record

      belongs_to :user, class_name: 'Octo::Cassandra::User'

      key :email, :text
      column :username, :text
      column :dob, :text
      column :gender, :text
      column :alternate_email, :text
      column :mobile, :text
      column :extras, :text

      timestamps
    end
  end

end

