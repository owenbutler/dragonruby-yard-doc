module GTK
  class Controller
    # @return [Boolean] Returns true if a controller is connected. If this value is false, controller properties will not be nil, but return 0 for directional based properties and false button state properties.
    attr_reader :connected

    # @return [String] String value representing the controller’s name.
    attr_reader :name

    # @return [Boolean] Returns true if any of the controller’s buttons were used.
    attr_reader :active

    # @return [Boolean] Returns true if up is pressed or held on the directional or left analog.
    attr_reader :up

    # @return [Boolean] Returns true if down is pressed or held on the directional or left analog.
    attr_reader :down

    # @return [Boolean] Returns true if left is pressed or held on the directional or left analog.
    attr_reader :left

    # @return [Boolean] Returns true if right is pressed or held on the directional or left analog.
    attr_reader :right

    # @return [Integer] Returns -1 (left), 0 (neutral), or +1 (right) depending on results of #left, #right
    attr_reader :left_right

    # @return [Integer] Returns -1 (left), 0 (neutral), or +1 (right) depending on results of #up, #down
    attr_reader :up_down

    # @return [Integer] Returns the raw integer value for the analog’s horizontal movement (-32,767 to +32,767).
    attr_reader :left_analog_x_raw, :right_analog_x_raw

    # @return [Integer] Returns the raw integer value for the analog’s vertical movement (-32,767 to +32,767).
    attr_reader :left_analog_y_raw, :right_analog_y_raw

    # @return [Float] Returns a number between -1 and 1 which represents the percentage the analog is moved horizontally as a ratio of the maximum horizontal movement.
    attr_reader :left_analog_x_perc, :right_analog_x_perc

    # @return [Float] Returns a number between -1 and 1 which represents the percentage the analog is moved vertically as a ratio of the maximum vertical movement.
    attr_reader :left_analog_y_perc, :right_analog_y_perc

    # @return [Boolean] Returns true if up is pressed or held on the dpad.
    attr_reader :dpad_up, :directional_up

    # @return [Boolean] Returns true if down is pressed or held on the dpad.
    attr_reader :dpad_down, :directional_down

    # @return [Boolean] Returns true if left is pressed or held on the dpad.
    attr_reader :dpad_left, :directional_left

    # @return [Boolean] Returns true if right is pressed or held on the dpad.
    attr_reader :dpad_right, :directional_right

    # @return [Boolean] Returns true if the specific button is pressed or held.
    attr_reader :a, :b, :x, :y, :l1, :r1, :l2, :r2, :l3, :r3, :start, :select

    # @ return [Object] Returns a collection of Symbols that represent all keys that are in the pressed or held state.
    attr_reader :truthy_keys

    # @return [Boolean] Returns true if the specific button was pressed on this frame.
    #   button can be one of: (a|b|x|y|l1|r1|l2|r2|l3|r3|start|select)
    #   result will only be true on the frame it was pressed.
    attr_reader :key_down

    # @return [Boolean] Returns true if the specific button is being held.
    #   button can be one of: (a|b|x|y|l1|r1|l2|r2|l3|r3|start|select)
    #   result will be true for all frames after key_down (until released)
    attr_reader :key_held

    # @return [Boolean] Returns true if the specific button was pressed on this frame.
    #   button can be one of: (a|b|x|y|l1|r1|l2|r2|l3|r3|start|select)
    #   result will only be true on the frame it was pressed.
    attr_reader :key_up

    # Returns true if the Left Analog Stick is tilted.
    # The threshold_raw and threshold_perc are optional parameters that can be used to set the minimum threshold for the analog stick to be considered active.
    # The threshold_raw is a number between 0 and 32,767, and the threshold_perc is a number between 0 and 1.
    #
    # @return [Boolean] Returns true if the Left Analog Stick is tilted.
    def left_analog_active? threshold_raw, threshold_perc; end

    # Returns true if the Right Analog Stick is tilted.
    # The threshold_raw and threshold_perc are optional parameters that can be used to set the minimum threshold for the analog stick to be considered active.
    # The threshold_raw is a number between 0 and 32,767, and the threshold_perc is a number between 0 and 1.
    #
    # @return [Boolean] Returns true if the Right Analog Stick is tilted.
    def right_analog_active? threshold_raw, threshold_perc; end

  end
end
