module RedmineWarehouse
  module Patches
    module IssuePatch
      def self.included(base)
        # base.extend(ClassMethods)
        # base.send(:include, InstanceMethods)
        base.class_eval do
          has_many :products
        end
      end

      # module ClassMethods
      # end
      #
      # module InstanceMethods
      # end
    end
  end
end

base = Issue
patch = RedmineWarehouse::Patches::IssuePatch
base.send(:include, patch)
