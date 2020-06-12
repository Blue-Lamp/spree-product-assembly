# frozen_string_literal: true

if defined? Spree::Frontend
  module Spree
    module CheckoutControllerDecorator
      # Override because we don't want to remove unshippable items from the order
      # A bundle itself is an unshippable item
      def before_payment; end
    end
  end

  Spree::CheckoutController.prepend Spree::CheckoutControllerDecorator
end
