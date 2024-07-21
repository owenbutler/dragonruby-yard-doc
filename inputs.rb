module GTK
  class Inputs
    # This function returns the last active input which will be set to either :keyboard, :mouse, or :controller.
    #
    # The function is helpful when you need to present on screen instructions based on the input the player chose to play with.
    #
    # ```ruby
    # if args.inputs.last_active == :controller
    #   args.outputs.labels << { x: 60, y: 60, text: "Use the D-Pad to move around." }
    # else
    #   args.outputs.labels << { x: 60, y: 60, text: "Use the arrow keys to move around." }
    # end
    # ```
    #
    # @return [Symbol] returns the last active controller. Will return one of :keyboard, :mouse, or :controller
    attr_reader :last_active

    # @return [Integer] Returns Kernel.tick_count of which the specific input was last active.
    attr_reader :last_active_at

    # @return [Integer] Returns the Kernel.global_tick_count of which the specific input was last active.
    attr_reader :last_active_global_at

    # Refer to the following link for locale strings: [https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
    #
    # Defaults to 'en' if locale can’t be retrieved (args.inputs.locale_raw will be nil in this case).
    #
    # @return [String] Returns the ISO 639-1 two-letter langauge code based on OS preferences.
    # @see https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes Wikipedia list of ISO 639-1 codes
    attr_reader :locale

    # @return [true, nil] Returns true if: the up arrow or w key is pressed or held on the keyboard; or if up is pressed or held on controller_one; or if the left_analog on controller_one is tilted upwards.
    def up; end

    # @return [true, nil] Returns true if: the down arrow or s key is pressed or held on the keyboard; or if down is pressed or held on controller_one; or if the left_analog on controller_one is tilted downwards.
    def down; end

    # @return [true, nil] Returns true if: the left arrow or a key is pressed or held on the keyboard; or if left is pressed or held on controller_one; or if the left_analog on controller_one is tilted to the left.
    def left; end

    # @return [true, nil] Returns true if: the right arrow or d key is pressed or held on the keyboard; or if right is pressed or held on controller_one; or if the left_analog on controller_one is tilted to the right.
    def right; end

    # This method is aliased to +args.inputs.left_right_with_wasd+.
    #
    # The following inputs are inspected to determine the result:
    #
    # * Keyboard's left, right arrow keys: args.inputs.keyboard.(left\|right)_arrow
    # * Keyboard's a, d keys (WASD): args.inputs.keyboard.(a\|d)
    # * Controller One's DPAD (if a controller is connected): args.inputs.controller_one.dpad_left, args.inputs.controller_one.dpad_right
    # * Controller One's Left Analog (if a controller is connected): args.inputs.controller_one.left_analog_x_perc.abs >= 0.6
    #
    # @return [Integer] Returns -1 (left), 0 (neutral), or +1 (right).
    def left_right; end

    # This method is aliased to args.inputs.left_right_perc_with_wasd
    #
    # The following inputs are inspected to dermine the result:
    #
    # * Controller One’s Left Analog (if a controller is connected and the value is not 0.0): args.inputs.controller_one.left_analog_x_perc
    # * If the left analog isn’t being used, then Controller One’s DPAD is consulted: args.inputs.controller_one.dpad_left, args.inputs.controller_one.dpad_right
    # * Keyboard’s a, d keys (WASD): args.inputs.keyboard.(a\d)
    # * Keyboard’s left/right arrow keys: args.inputs.keyboard.(left\|right)_arrow
    #
    # @return [Float] Returns a floating point value between -1 and 1
    def left_right_perc; end

    # This method is aliased to args.inputs.left_right_arrow.
    #
    # The following inputs are inspected to determine the result:
    #
    # * Keyboard’s left/right arrow keys: args.inputs.keyboard.(left\|right)_arrow
    # * Controller One’s DPAD (if a controller is connected): args.inputs.controller_one.dpad_left, args.inputs.controller_one.dpad_right
    # 
    # WASD and Controller One’s Left Analog Stick are NOT consulted.
    #
    # @ return [Integer] Returns -1 (left), 0 (neutral), or +1 (right).
    def left_right_directional; end

    # The following inputs are inspected to dermine the result:
    #
    # * Controller One’s Left Analog (if a controller is connected and the value is not 0.0): args.inputs.controller_one.left_analog_x_perc
    # * If the left analog isn’t being used, then Controller One’s DPAD is consulted: args.inputs.controller_one.dpad_left, args.inputs.controller_one.dpad_right
    # * Keyboard’s left/right arrow keys: args.inputs.keyboard.(left\|right)_arrow
    #
    # WASD is NOT consulted.
    #
    # @ return [Float] Returns a floating point value between -1 and 1.
    def left_right_directional_perc; end

    # This method is aliased to args.inputs.up_down_with_wasd.
    #
    # The following inputs are inspected to determine the result:
    #
    # * Keyboard’s up/down arrow keys: args.inputs.keyboard.(up\|down)_arrow
    # * Keyboard’s w, s keys (WASD): args.inputs.keyboard.(w\|s)
    # * Controller One’s DPAD (if a controller is connected): args.inputs.controller_one.dpad_up, args.inputs.controller_one.dpad_down
    # * Controller One’s Up Analog (if a controller is connected): args.inputs.controller_one.up_analog_y_perc.abs >= 0.6
    #
    # @return [Integer] Returns -1 (down), 0 (neutral), or +1 (up).
    def up_down; end

    # This method is aliased to args.inputs.up_down_arrow.
    #
    # The following inputs are inspected to determine the result:
    #
    # * Keyboard’s up/down arrow keys: args.inputs.keyboard.(up\|down)_arrow
    # * Controller One’s DPAD (if a controller is connected): args.inputs.controller_one.dpad_up, args.inputs.controller_one.dpad_down
    #
    # WASD and Controller One’s Left Analog Stick are NOT consulted.
    #
    # @return [Integer] Returns -1 (down), 0 (neutral), or +1 (up).
    def up_down_directional; end

    # The following inputs are inspected to dermine the result:
    #
    # * Controller One’s Left Analog (if a controller is connected and the value is not 0.0): args.inputs.controller_one.up_analog_y_perc
    # * If the left analog isn’t being used, then Controller One’s DPAD is consulted: args.inputs.controller_one.dpad_up, args.inputs.controller_one.dpad_down
    # * Keyboard’s up/down arrow keys: args.inputs.keyboard.(up\|down)_arrow
    #
    # @return [Float] Returns a floating point value between -1 and 1.
    def up_down_perc; end

    # @return [String] Returns a string that represents the last key that was pressed on the keyboard.
    def text; end

    # @return [GTK::Mouse]
    attr_reader :mouse
  end

  class MousePoint

    attr_reader x

    attr_reader y

    attr_reader point

    attr_reader created_at

    attr_reader global_created_at

    def created_at_elapsed; end

    def w; end
    def h; end
    def left; end
    def right; end
    def top; end
    def bottom; end

  end

  class Mouse
    # @return [true, false] Return’s true if the game has mouse focus.
    attr_reader :has_focus

    # @return [Integer] Returns the current x location of the mouse.
    attr_reader :x

    # @return [Integer] Returns the current y location of the mouse.
    attr_reader :y

    # @return [Integer] Returns the x location of the mouse on the previous frame.
    attr_reader :previous_x

    # @return [Integer] Returns the y location of the mouse on the previous frame.
    attr_reader :previous_y

    # @return [Integer] Returns the difference between the current x location of the mouse and its previous x location.
    attr_reader :relative_x

    # @return [Integer] Returns the difference between the current y location of the mouse and its previous y location.
    attr_reader :relative_y

    # Check if the mouse is inside a rect
    #
    # @param rect [Object] a primitive that responds to x, y, w, h
    # @return [true, false] Returns true if the mouse is inside the specified rect
    def inside_rect? rect; end

    # Check if the mouse is inside a circle
    #
    # @param center_point [Object] any primitive that responds to x, y
    # @param radius [Float] radius of circle
    # @return [true, false] Returns true if the mouse is inside of a specified circle.
    def inside_circle? center_point, radius; end

    # @return [true, false] Returns true if the mouse has moved on the current frame.
    attr_reader :moved

    # @return [true, false] Returns true if the left mouse button is down.
    attr_reader :button_left

    # @return [true, false] Returns true if the middle mouse button is down.
    attr_reader :button_middle

    # @return [true, false] Returns true if the right mouse button is down.
    attr_reader :button_right

    # @return [Integer] Returns a bitmask for all buttons on the mouse: 1 for a button in the down state, 0 for a button in the up state.
    attr_reader :button_bits

    # @return [Hash, nil]  Returns nil if no mouse wheel actions occurred. Otherwise returns a Hash with x and y (representing movement on each axis).
    attr_reader :wheel

    def click; end

    def down; end

    def previous_click; end

    def up; end
  end
end
