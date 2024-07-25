module GTK
  # A set of functions that allow you to determine the current progression of an easing function.
  module Easing
    class << self
      # Given a start, current, duration, and a multiple bezier values, this function returns a number between 0 and 1 that represents the progress of an easing function.
      #
      # @param start_tick [Integer]
      # @param current_tick [Integer]
      # @param duration [Integer] duration in ticks
      # @param spline [Array] multiple bezier values
      # @return [Float] returns a number between 0 and 1 that represents the progress of an easing function.
      def ease_spline start_tick, current_tick, duration, spline; end

      # Given a start, current, duration, and easing definitions.  This function returns a number between 0 and 1 that represents the progress of an easing function.
      #
      # @param start_tick [Integer]
      # @param current_tick [Integer]
      # @param duration [Integer] duration in ticks
      # @param definitions [Object] easing definitions
      # @return [Float] returns a number between 0 and 1 that represents the progress of an easing function.
      def ease start_tick, current_tick, duration, definitions; end
    end
  end
end
