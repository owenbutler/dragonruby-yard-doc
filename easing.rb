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

      # smooth_start
      #
      # @param :initial [Float] starting value of the easing function (defaults to 0.0).
      # @param :final [Float] ending value of the easing function (defaults to 1.0).
      # @param :perc [Float] current easing percentage (a value over 1.0 will result in a higher final value).
      # @param :power [float] 1 for linear, 2 for quadratic, 3 for cube, etc (defaults to 1.0).
      # @return [Float] value between 0 and 1 that represents a percentage.
      def smooth_start initial, final, perc, power; end

      # smooth_start
      #
      # @param :start_at [Integer] starting tick_count to begin the easing function .
      # @param :end_at [Integer] ending value of the easing function.
      # @param :tick_count [Integer] current tick_count (defaults to Kernel.tick_count)
      # @param :power [float] 1 for linear, 2 for quadratic, 3 for cube, etc (defaults to 1.0).
      # @return [Float] value between 0 and 1 that represents a percentage.
      def smooth_start start_at, end_at, tick_count, power; end

      # smooth_start
      #
      # @param :start_at [Integer] starting tick_count to begin the easing function .
      # @param :duration [Integer] used to compute end_at value.
      # @param :tick_count [Integer] current tick_count (defaults to Kernel.tick_count)
      # @param :power [float] 1 for linear, 2 for quadratic, 3 for cube, etc (defaults to 1.0).
      # @return [Float] value between 0 and 1 that represents a percentage.
      def smooth_start start_at, duration, tick_count, power; end

      # smooth_stop
      #
      # @param :initial [Float] starting value of the easing function (defaults to 0.0).
      # @param :final [Float] ending value of the easing function (defaults to 1.0).
      # @param :perc [Float] current easing percentage (a value over 1.0 will result in a higher final value).
      # @param :power [float] 1 for linear, 2 for quadratic, 3 for cube, etc (defaults to 1.0).
      # @return [Float] value between 0 and 1 that represents a percentage.
      def smooth_stop initial, final, perc, power; end

      # smooth_stop
      #
      # @param :start_at [Integer] starting tick_count to begin the easing function .
      # @param :end_at [Integer] ending value of the easing function.
      # @param :tick_count [Integer] current tick_count (defaults to Kernel.tick_count)
      # @param :power [float] 1 for linear, 2 for quadratic, 3 for cube, etc (defaults to 1.0).
      # @return [Float] value between 0 and 1 that represents a percentage.
      def smooth_stop start_at, end_at, tick_count, power; end

      # smooth_stop
      #
      # @param :start_at [Integer] starting tick_count to begin the easing function .
      # @param :duration [Integer] used to compute end_at value.
      # @param :tick_count [Integer] current tick_count (defaults to Kernel.tick_count)
      # @param :power [float] 1 for linear, 2 for quadratic, 3 for cube, etc (defaults to 1.0).
      # @return [Float] value between 0 and 1 that represents a percentage.
      def smooth_stop start_at, duration, tick_count, power; end

      # smooth_step
      #
      # @param :initial [Float] starting value of the easing function (defaults to 0.0).
      # @param :final [Float] ending value of the easing function (defaults to 1.0).
      # @param :perc [Float] current easing percentage (a value over 1.0 will result in a higher final value).
      # @param :power [float] 1 for linear, 2 for quadratic, 3 for cube, etc (defaults to 1.0).
      # @return [Float] value between 0 and 1 that represents a percentage.
      def smooth_step initial, final, perc, power; end

      # smooth_step
      #
      # @param :start_at [Integer] starting tick_count to begin the easing function .
      # @param :end_at [Integer] ending value of the easing function.
      # @param :tick_count [Integer] current tick_count (defaults to Kernel.tick_count)
      # @param :power [float] 1 for linear, 2 for quadratic, 3 for cube, etc (defaults to 1.0).
      # @return [Float] value between 0 and 1 that represents a percentage.
      def smooth_step start_at, end_at, tick_count, power; end

      # smooth_step
      #
      # @param :start_at [Integer] starting tick_count to begin the easing function .
      # @param :duration [Integer] used to compute end_at value.
      # @param :tick_count [Integer] current tick_count (defaults to Kernel.tick_count)
      # @param :power [float] 1 for linear, 2 for quadratic, 3 for cube, etc (defaults to 1.0).
      # @return [Float] value between 0 and 1 that represents a percentage.
      def smooth_step start_at, duration, tick_count, power; end

      # Return a mixture of eased values.
      #
      # ```
      # \# a 50/50 mix of smooth_start and smooth_stop gives us a smooth_step
      # y_perc = Easing.mix(smoothed_start, smoothed_stop, 0.5)
      # ```
      # 
      # See [More Detailed example](https://docs.dragonruby.org/#/api/easing?id=mix)
      #
      # @param val_1 [Float] first value to mix.
      # @param val_2 [Float] second value to mix.
      # @param perc [Float] mix percentage.
      def mix val_1, val_2, perc; end
    end
  end
end
