module GTK
  class Runtime
    # @return [GTK::Args] args
    attr_reader :args

    # Given a file_path to a sprite, this function returns a Hash with w, h, and pixels.
    #   The pixels key contains an array of hexadecimal values representing the ABGR of each pixel in a sprite with item 0 representing the top left corner of the png.
    #
    # @param file_path [String] path to a sprite
    # @return [Typing::PixelsHash] returns a Hash with w, h, and pixels. The pixels key contains an array of hexadecimal values representing the ABGR of each pixel in a sprite with item 0 representing the top left corner of the png.
    def get_pixels file_path; end

    def dlopen file_path; end

    # @return [Boolean] Returns true if the window is currently in fullscreen mode.
    def window_fullscreen?; end

    # @return [Boolean] Returns true if the window can be resized on the platform the game is running on. This is useful for conditionally showing a “Toggle Fullscreen” option in your game.
    def can_resize_window?; end

    # Set the fullscreen state of the game.
    #
    # @param fullscreen [Boolean] true to make the game fullscreen, false to return the game back to windowed mode.
    def set_window_fullscreen fullscreen; end

    # Toggles the fullscreen state of the window.
    def toggle_window_fullscreen; end

    # This function takes in a float value and uses that to resize the game window to a percentage of 1280x720 (or 720x1280 in portrait mode).
    #
    # @param scale [Float] valid scale options are 0.1, 0.25, 0.5, 0.75, 1.25, 1.5, 2.0, 2.5, 3.0, and 4.0. The float value you pass in will be floored to the nearest valid scale option.
    def set_window_scale scale; end

    # Set the title of the game in the Menu Bar
    #   Note: The default title for your game is specified in via the gametitle property in mygame/metadata/game_metadata.txt.
    #
    # @param title [String] the title of the game in the Menu Bar.
    def set_window_title title; end

    # @return [Boolean] Returns true if quitting is allowed on the platform you are releasing to (eg: iOS and Web games do not allow exiting).
    def can_close_window?; end

    # If you have multiple monitors, this function can be used to move the game to the next monitor. The function will cycle back to the first monitor if needed.
    def move_window_to_next_display; end

    # If #can_resize_window? returns true, this functions will maximize the game window.
    def maximize_window; end

    # @return [Boolean] Returns true if the game’s orientation can be altered while the game is running.
    def can_change_orientation?; end

    # If #can_change_orientation? returns true, the orientation of the game will be changed from landscape to portrait (or portrait to landscape) while the game is running.
    #   This function is useful for testing rendering of games that support both portrait and landscape orientations.
    def toggle_orientation; end

    # @param orientation [Symbol] accepts :landscape, or :portrait to set the game’s orientation while the game is running.
    def set_orientation orientation; end

    # Function accepts on of the following Integer values:
    #   see [scale values](https://docs.dragonruby.org/#/api/runtime?id=set_hd_max_scale) for valid values
    #
    # @param scale [Integer] scale value
    def set_hd_max_scale scale; end

    # Adds or removes the letterbox within your game while it’s running. This is useful for testing how your game renders on edge to edge displays.
    def toggle_hd_letterbox; end

    # @param letterbox [Boolean]
    def set_hd_letterbox letterbox; end

    # Returns the render width and render height as a tuple for a piece of text.
    #
    # @param text [String] the text you want to get the width and height of.
    # @param size_enum [Integer]  number representing the render size for the text.
    # @param font [String] path to a font file that the width and height will be based off of.
    def calcstringbox text, size_enum, font; end

    # Call this function to exit your game.
    #   You will be given one additional tick if you need to perform any housekeeping before that game closes.
    def request_quit; end

    # @return [Boolean] will return true if the game is about to exit (either from the user closing the game or if request_quit was invoked).
    def quit_requested?; end

    # You can ask DragonRuby which platform your game is currently being run on.
    #    This can be useful if you want to perform different pieces of logic based on where the game is running.
    #    The raw platform string value is available via args.gtk.platform? which takes in a symbol representing the platform’s categorization/mapping.
    #    You can see all available platform categorizations via the #platform_mappings function.
    #
    # @param cateogry [Symbol]
    def platform? category; end

    # Returns true if the game is being run in a released/shipped state.
    #    If you want to simulate a production build. Add an empty file called dragonruby_production_build inside of the metadata folder.
    #
    # @return [Boolean] Returns true if the game is being run in a released/shipped state.
    def production?; end

    # @return [Hash]
    attr_reader :platform_mappings

    # This fuction will open the uri in the user’s default browser.
    #
    # @param url [String] a uri represented as a string.
    def open_url url; end

    # Given an OS dependent cli command represented as a string, this function executes the command and puts the results to the DragonRuby Console (returns nil).
    #
    # @param command [String] an OS dependent cli command represented as a string
    def system command; end

    # Given an OS dependent cli command represented as a string, this function executes the command and puts the results to the DragonRuby Console (returns nil).
    #
    # @param command [String] an OS dependent cli command represented as a string
    def exec command; end

    # shows the mouse cursor.
    def show_cursor; end

    # Hides the mouse cursor.
    def hide_cursor; end

    # @return [Boolean] Returns true if the mouse cursor is visible.
    def cursor_shown?; end

    # @param mode [Integer] 0: Ungrabs the mouse, 1: Grabs the mouse, 2: Hides the cursor, grabs the mouse and puts it in relative position mode accessible via args.inputs.mouse.relative_x or y.
    def set_mouse_grab mode; end

    # Set cursor if available.
    #
    # @param cursor [String] valid values are "arrow", "ibeam", "wait", or "hand"
    def set_system_cursor cursor; end

    # Replaces the mouse cursor with a sprite.
    #
    # @param path [String] a path to the sprite
    # @param rel_x [Integer] relative positioning the sprite will have to the cursor
    # @param rel_y [Integer] relative positioning the sprite will have to the cursor
    def set_cursor path, rel_x, rel_y; end

    # @return [String] Returns a UUID/GUID as a String value. The UUID uses srand and is not cryptographically secure.
    def create_uuid; end

    # List files within a directory.
    #
    # @param directory [String]
    # @return [Array<String>] returns an Array of String representing all files within the directory.
    def list_files directory; end

    # Get file attributes for a file_path
    #
    # ```ruby
    # {
    #  path: String,
    #  file_size: Int,
    #  mod_time: Int,
    #  create_time: Int,
    #  access_time: Int,
    #  readonly: Boolean,
    #  file_type: Symbol (:regular, :directory, :symlink, :other),
    # }
    # ```
    #
    # @param file_path [String] the path to the FileTest
    # @return [Hash,nil] returns nil if the file doesn’t exist otherwise it returns a Hash with the attributes.
    def stat_file file_path; end

    # Given a file path, a string will be returned representing the contents of the file.
    #
    # @param file_path [String] path to the file to read.
    # @return [String,nil] a string will be returned representing the contents of the file. nil will be returned if the file does not exist.
    def read_file file_path; end

    # Write contents of a string to a file.
    #
    # @param file_path [String] path to write to.
    # @param contents [String] contents to write to.
    def write_file file_path, contents; end

    # Append contents of a string to a file.
    #
    # @param file_path [String] path to append to.
    # @param contents [String] contents to append to.
    def append_file file_path, contents; end

    # Delete a file or directory
    #
    # Here is a list of reasons an exception could be raised:
    # - If the path is still open (for reading or writing).
    # - If the path is not a file or directory.
    # - If the path is a circular symlink.
    # - If you do not have permissions to delete the path.
    # - If the directory attempting to be deleted is not empty.
    #
    # Notes:
    # - Use stat_file to determine if a path exists.
    # - Use list_files to determine if a directory is empty.
    # - You cannot delete files outside of your sandboxed game environment.
    #
    # @param file_path [String] file or directory to delete.
    def delete_file file_path; end

    # @param json_string [String] json blob
    # @return [Hash] hash representing the json data
    def parse_json json_string; end

    # @param file_path [String] file to json
    # @return [Hash] hash representing the json data
    def parse_json_file file_path; end

    # @param xml_string [String] xml blob
    # @return [Hash] hash representing the xml data
    def parse_xml xml_string; end

    # @param file_path [String] file to xml
    # @return [Hash] hash representing the xml data
    def parse_xml_file file_path; end

    # Async http get.
    #
    # @param uri [String] uri
    # @return [Object] Returns an object that represents an http response which will eventually have a value.
    #   Check for completion before attempting to read results.
    def http_get uri; end

    # Async http POST.
    #
    # @param uri [String] uri
    # @param form_content [Hash] form fields to send
    # @param headers [Array] HTTP Headers to send
    #   Note: Content-Type must be form encoded flavor. If you are unsure of what to pass in, set the content type to application/x-www-form-urlencoded
    # @return [Object] Returns an object that represents an http response which will eventually have a value.
    #   Check for completion before attempting to read results.
    def http_post uri, form_content, headers; end

    # Async http POST.
    #
    # @param uri [String] uri
    # @param string_content [String] String that represents body to send
    # @param headers [Array] HTTP Headers to send
    #   Note: Content-Type must be form encoded flavor. If you are unsure of what to pass in, set the content type to application/x-www-form-urlencoded
    # @return [Object] Returns an object that represents an http response which will eventually have a value.
    #   Check for completion before attempting to read results.
    def http_post_body uri, string_content, headers; end

    # Starts a in-game http server that can be process http requests.
    #   When your game is running in development mode, a dev server is started at http://localhost:9001
    def start_server!; end

    # @return [String] Returns a string representing the version of DragonRuby you are running.
    def version; end

    # @return [Boolean] Returns true if the version of DragonRuby is NOT Standard Edition.
    def version_pro?; end

    # @return [String] Returns a version string within mygame/game_metadata.txt.
    def game_version; end

    # Resets DragonRuby’s internal state as if it were just started.
    # 
    # Kernel.tick_count is set to 0 and args.state is cleared of any values.
    #
    # This function is helpful when you are developing your game and want to reset everything as if the game just booted up.
    def reset; end

    # Has the same behavior as reset except the reset occurs before tick is executed again.
    def reset_next_tick; end

    # Reset a single sprite path.
    #
    # @param path [String] path to a previously loaded sprite, invalidates the cache record of the sprite so that updates on from the disk can be loaded.
    def reset_sprite path; end

    # This method invalidates the cache record of all sprites so that updates on from the disk can be loaded.
    def reset_sprites; end

    # @param path [String]
    # @return [Array] Given a path to a sprite, this method returns the width and height of a sprite as a tuple.
    def calcspritebox path; end

    # @return [Integer] Returns a float value representing the framerate of your game.
    #
    #   This is an approximation/moving average of your framerate and should eventually settle to 60fps.
    def current_framerate; end

    # Get detailed information about the speed of your simulation.
    #
    # ```
    # def tick args
    #   args.outputs.primitives << args.gtk.framerate_diagnostics_primitives
    # end
    # ```
    # @return [Array] Returns a set of primitives that can be rendered to the screen which provide more detailed information about the speed of your simulation (framerate, draw call count, mouse position, etc).
    def framerate_diagnostics_primitives; end

    # This function helps you audit your game of usages of array-based primitives.
    def warn_array_primitives!; end

    # Given a string, this function will present a message at the bottom of your game.
    #
    # This method is only invoked in dev mode and is useful for debugging.
    #
    # @param message [String] message to print
    # @param duration [Integer] number of ticks to show message
    def notify! message, duration; end

    def notify_extended! opts; end

    # Given a numeric value representing the factor of 60fps. This function will bring your simulation loop down to slower rate.
    #
    # This method is intended to be used for debugging purposes.
    #
    # ```
    # def tick args
    #  \# set your simulation speed to (15 fps): args.gtk.slowmo! 4
    #  \# set your simulation speed to (1 fps): args.gtk.slowmo! 60
    #  \# set your simulation speed to (30 fps):
    #  args.gtk.slowmo! 2
    # end
    # ```
    #
    # @param factor [Integer] slowmo factor
    def slowmo! factor; end

    # Shows the DragonRuby console. Useful when debugging/customizing an in-game dev workflow.
    def show_console; end

    # Shows the DragonRuby console. Useful when debugging/customizing an in-game dev workflow.
    def hide_console; end

    # Enables the DragonRuby Console so that it can be presented by pressing the tilde key (the key next to the number 1 key).
    def enable_console; end

    # Disables the DragonRuby Console so that it won’t show up even if you press the tilde key or call args.gtk.show_console.
    def disable_console; end

    # Disable the ability to reset via ctrl-r
    def disable_reset_via_ctrl_r; end

    # DragonRuby has a built-in controller configuration/mapping wizard. You can disable this wizard by calling this method.
    def disable_controller_config; end

    # DragonRuby has a built-in controller configuration/mapping wizard. You can re-enable this wizard by calling this method.
    def enable_controller_config; end

    # Resets the game to tick 0 and starts recording gameplay. Useful for visual regression tests/verification.
    def start_recording; end

    # Stop recording gameplay
    #
    # @param path [String] destination file for the currently recording gameplay.
    def stop_recording path; end

    # cancels a gameplay recording session and discards the replay.
    def cancel_recording; end

    # Run a recording against the current codebase.
    #
    # @param replay_file_path [String] a file that represents a recording.
    def start_replay replay_file_path; end

    # Function stops a replay that is currently executing.
    def stop_replay; end

    # Returns the path to the location of the dragonruby binary.
    #
    # In production mode, this value will be the same as the value returned by get_game_dir.
    #
    # Function should only be used for debugging/development workflows.
    def get_base_dir; end

    # Returns the location within sandbox storage that the game is running.
    #
    # When developing your game, this value will be your mygame directory.
    #
    # In production, it’ll return a value that is OS specific (eg the Roaming directory on Windows or the Application Support directory on Mac).
    #
    # Invocations of (write\|append)_file will write to this sandboxed directory.
    #
    # @return [String] a location within sandbox storage that the game is running.
    def get_game_dir; end

    # @return [String] Returns a url encoded string representing the sandbox location for game data.
    def get_game_dir_url; end

    # Opens the game directory in the OS’s file explorer. This should be used for debugging purposes only.
    def open_game_dir; end

    # Given a file path and contents, the contents will be written to a directory outside of the game directory.
    #
    # This method should be used for development purposes only.
    #
    # In production this method will write to the same sandboxed location as write_file.
    #
    # @param filepath [String] filepath to write to.
    # @param contents [String] contents to write to file.
    def write_file_root filepath, contents; end

    # Given a file path and contents, the contents will be appended to a file outside of the game directory.
    #
    # This method should be used for development purposes only.
    #
    # In production this method will append to the same sandboxed location as write_file.
    #
    # @param filepath [String] filepath to append to.
    # @param contents [String] contents to append to file.
    def append_file_root filepath, contents; end

    # Returns a string representing the command line arguments passed to the DragonRuby binary.
    #
    # This should be used for development/debugging purposes only.
    #
    # @return [String] Returns a string representing the command line arguments passed to the DragonRuby binary.
    def argv; end

    # Returns a Hash for command line arguments in the format of --switch value (two hyphens preceding the switch flag with the value seperated by a space).
    #
    # This should be used for development/debugging purposes only.
    #
    # @return [Hash] Returns a Hash for command line arguments in the format of --switch value (two hyphens preceding the switch flag with the value seperated by a space).
    def cli_arguments; end

    # This should be used for development/debugging purposes only.
    #
    # @return [Hash] Returns a Hash representing the code files that have be loaded for your game along with timings for the events.
    def reload_history; end

    # This should be used for development/debugging purposes only.
    #
    # @return [Hash] Returns a Hash representing the code files that have be loaded for your game along with timings for the events.
    def reload_history_pending; end

    # Given a file name, this function will queue the file for reload if it’s been modified.
    #
    # An optional second parameter can be passed in to signify if the file should be forced loaded regardless of modified time (true means to force load, false means to load only if the file has been modified).
    #
    # This function should be used for development/debugging purposes only.
    #
    # @param filename [String] file to reload
    def reload_if_needed filename; end

    # Will print caller alongside each puts, allowing you to locate/hunt down rogue puts.
    def add_caller_to_puts!; end

    # alias for instance variable set
    #
    # @param variable [Symbol] the instance variable to set
    # @param value [String] the value to set to
    def ivar! variable, value; end

    # Invoking `$gtk.reboot`` will reset your game as if it were started for the first time.
    #
    # Any methods that were added to classes during hotload will be removed (leaving you with a pristine environment).
    def reboot; end
  end
end
