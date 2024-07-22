module GTK
  class Keyboard

    # @return [Integer] Returns Kernel.tick_count if any keys on the keyboard were pressed.
    attr_reader :active

    # @return [true,false] Returns true if the game has keyboard focus.
    attr_reader :has_focus

    # @return [Integer, false] Returns the tickstamp of the keypress if up or w is pressed or held on the keyboard.
    attr_reader :up

    # @return [Integer, false] Returns the tickstamp of the keypress if down or s is pressed or held on the keyboard.
    attr_reader :down

    # @return [Integer, false] Returns the tickstamp of the keypress if left or a is pressed or held on the keyboard.
    attr_reader :left

    # @return [Integer, false] Returns the tickstamp of the keypress if right or d is pressed or held on the keyboard.
    attr_reader :right

    # @return [Integer] Returns -1 (left), 0 (neutral), or +1 (right) depending on results of #left and #right.
    attr_reader :left_right

    # @return [Integer] Returns -1 (left), 0 (neutral), or +1 (right) depending on results of #up and #up.
    attr_reader :up_down

    attr_reader :key_down

    attr_reader :key_held

    attr_reader :key_up

    # @return [Hash] Returns a Hash with all keys on the keyboard in their respective state.
    #   The Hash contains the following keys: :down, :held, :down_or_held, :up
    attr_reader :keys
  end
end
