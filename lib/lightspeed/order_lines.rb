require_relative 'collection'

require_relative 'order_line'

module Lightspeed
  class OrderLines < Lightspeed::Collection
    alias_method :archive, :destroy
  end
end

