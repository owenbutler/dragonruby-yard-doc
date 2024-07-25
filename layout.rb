module GTK
  # Layout provides apis for placing primitives on a virtual grid that’s within the “safe area” accross all platforms.
  #
  # This virtual grid is useful for rendering static controls (buttons, menu items, configuration screens, etc).
  #
  # The virtual grid is 12 rows by 24 columns (or 24 columns by 12 rows in portrait mode).
  class Layout

    # Given a row:, col:, w:, h:, returns a Hash with properties x, y, w, h, and center (which contains a Hash with x, y).
    #
    # The virtual grid is 12 rows by 24 columns (or 24 columns by 12 rows in portrait mode).
    #
    # @param row [Integer]
    # @param col [Integer]
    # @param width [Integer]
    # @param height [Integer]
    # @return [Hash] returns a Hash with properties x, y, w, h, and center (which contains a Hash with x, y).
    def rect row, col, width, height; end

    # Function returns an array of primities that can be rendered to the screen to help you place items within the grid.
    #
    # @return [Array] an array of primities that can be rendered to the screen to help you place items within the grid.
    def debug_primitives; end

    # @return [Boolean] Returns true if orientation is :portrait.
    def portrait?; end

    # @return [Boolean] Returns true if orientation is :landscape.
    def landscape?; end
  end
end
