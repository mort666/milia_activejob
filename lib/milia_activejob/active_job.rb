module Milia
  module ActiveJob
    extend ActiveSupport::Concern

    class_methods do
      def execute(job_data)
        Tenant.set_current_tenant(job_data['milia_tenant']) do
          super
        end
      end
    end

    def serialize
      super.merge('milia_tenant' => Tenant.current_tenant.id)
    end
  end
end
