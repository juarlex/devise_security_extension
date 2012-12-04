module DeviseSecurityExtension
  module Orm
    # This module contains some helpers and handle schema (migrations):
    #
    #   create_table :accounts do |t|
    #     t.password_expirable
    #   end
    #
    module Mongoid
      module Document
        include DeviseSecurityExtension::Schema


      end
    end
  end
end
