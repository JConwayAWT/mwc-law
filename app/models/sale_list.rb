class SaleList < ActiveRecord::Base
  def to_param
    mwc_file_name
  end
end
