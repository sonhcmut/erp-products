module Erp::Products
  class HkerpProduct < ApplicationRecord
    def self.get_product_by_hkerp_product_id(pid)
      self.where(hkerp_product_id: pid).first
    end
    def self.get_status_by_hkerp_product_id(pid)
      hkerp_product = self.get_product_by_hkerp_product_id(pid)

      if hkerp_product.nil?
        '<span class="label label-sm label-danger">new</span>'.html_safe
      else
        '<span class="label label-sm label-success">imported</span>'.html_safe
      end
    end

    def get_data
      JSON.parse(self.data) if self.data.present?
    end
  end
end
