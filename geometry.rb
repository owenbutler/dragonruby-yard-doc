module GTK
  module Geometry
    class << self
      # Given two rectangle primitives this function will return true or false depending on if the two rectangles intersect or not.
      #
      # An optional final parameter can be passed in representing the tolerence of overlap needed to be considered a true intersection.
      #
      # The default value of tolerance is 0.1 which keeps the function from returning true if only the edges of the rectangles overlap.
      #
      # @param rect_1 [Object] rectangle1
      # @param rect_2 [Object] rectangle2
      # @return [Boolean] return true or false depending on if the two rectangles intersect or not.
      def intersect_rect? rect_1, rect_2, tolerance; end

      # Given two rectangle primitives this function will return true or false depending on if the first rectangle is inside of the second rectangle.
      #
      # @param rect_1 [Object] rectangle1
      # @param rect_2 [Object] rectangle2
      # @return [Boolean] return true or false depending on if the first rectangle is inside of the second rectangle.
      def inside_rect? rect_1, rect_2; end

      # Given a Rectangle this function returns a new rectangle with a scaled size.
      #
      # @param ratio [Float] the ratio by which to scale the rect. A ratio of 2 will double the dimensions of the rect while a ratio of 0.5 will halve its dimensions.
      # @return [Hash] a new rectangle with a scaled size.
      def scale_rect rect, ratio; end

      # The behavior is similar to scale_rect except that you can independently control the scale of each axis.
      #
      # The parameters are all named.
      #
      # @param percentage_x [Float] percentage to change the width (default value of 1.0)
      # @param percentage_y [Float] percentage to change the height (default value of 1.0)
      # @param anchor_x [Float] anchor repositioning of x (default value of 0.0)
      # @param anchor_y [Float] anchor repositioning of y (default value of 0.0)
      # @return [Hash] a new rectangle with a scaled size.
      def scale_rect_extended opts; end

      # @param start_point [Object] a point (a Hash with x and y keys, or an Object that responds to x and y).
      # @param end_point [Object] a point (a Hash with x and y keys, or an Object that responds to x and y).
      # @return [Float] Returns an angle in degrees from the start_point to the end_point (if you want the value in radians call .to_radians on the value returned).
      def angle start_point, end_point; end

      # @param start_point [Object] a point (a Hash with x and y keys, or an Object that responds to x and y).
      # @param end_point [Object] a point (a Hash with x and y keys, or an Object that responds to x and y).
      # @return [Float] Returns an angle in degrees from the end_point to the start_point (if you want the value in radians call .to_radians on the value returned).
      def angle_from start_point, end_point; end

      # @param start_point [Object] a point (a Hash with x and y keys, or an Object that responds to x and y).
      # @param end_point [Object] a point (a Hash with x and y keys, or an Object that responds to x and y).
      # @return [Float] Returns an angle in degrees to the end_point from the start_point (if you want the value in radians, you can call .to_radians on the value returned):
      def angle_to start_point, end_point; end

      # Returns 1 or -1 depending on which direction the angle needs to turn to reach the target_angle most efficiently.
      #
      # The angles are assumed to be in degrees.
      #
      # 1 means turn clockwise, and -1 means turn counter-clockwise.
      #
      # @param angle [Numeric]
      # @param target_angle [Numeric]
      # @return [Integer] Returns 1 or -1 depending on which direction the angle needs to turn to reach the target_angle most efficiently.
      #                   1 means turn clockwise, and -1 means turn counter-clockwise.
      def angle_turn_direction angle, target_angle; end

      # Given an angle and a target_angle, this function will return the smallest angle delta between the two angles.
      #
      # The angles are assumed to be in degrees.
      #
      # @param angle [Numeric]
      # @param target_angle [Numeric]
      # @return [Float] Given an angle and a target_angle, this function will return the smallest angle delta between the two angles.
      def angle_delta angle, target_angle; end

      # Given a test_angle, target_angle, and range (all in degrees), this function will return true if the test_angle is within the range of the target_angle on either side.
      #
      # The range is the number of degrees from the target_angle that the test_angle can be within to return true.
      #
      # @param test_angle [Float]
      # @param target_angle [Float]
      # @param range [Float]
      # @return [Boolean] return true if the test_angle is within the range of the target_angle on either side.
      def angle_within_range test_angle, target_angle, range; end

      # Returns the distance between two points
      #
      # @param p1 [Object] a point (a Hash with x and y keys, or an Object that responds to x and y).
      # @param p2 [Object] a point (a Hash with x and y keys, or an Object that responds to x and y).
      # @return [Float] Returns the distance between p1 and p2
      def distance p1, p2; end

      # Returns true if a point is inside of a circle defined as a center point and radius.
      #
      # @param circle_center [Object]
      # @param circle_radius [Numeric]
      # @return [Boolean] Returns true if a point is inside of a circle defined as a center point and radius.
      def point_inside_circle? circle_center, circle_radius; end

      # Given a target rect and a reference rect, the target rect is centered inside the reference rect (a new rect is returned).
      #
      # @param target_rect [Object]
      # @param reference_rect [Object]
      # @return [Hash] centered rect
      def center_inside_rect target_rect, reference_rect; end

      # Given a point and a line, ray_test returns one of the following symbols based on the location of the point relative to the line: :left, :right, :on
      #
      # @param point [Object] a point (a Hash with x and y keys, or an Object that responds to x and y).
      # @param line [Object] a line (a Hash with x, y, x2, and y2 keys, or an Object that responds to x, y, x2, and y2). 
      # @return [Symbol] returns one of the following symbols based on the location of the point relative to the line: :left, :right, :on
      def ray_test point, line; end

      # Given a line, this function returns a Hash with x and y keys representing a normalized representation of the rise and run of the line.
      #
      # @param line [Object] a line (a Hash with x, y, x2, and y2 keys, or an Object that responds to x, y, x2, and y2). 
      # @return [Hash] returns a Hash with x and y keys representing a normalized representation of the rise and run of the line.
      def line_rise_run line; end

      # Given two lines (:x, :y, :x2, :y2), this function returns point of intersection if the line segments intersect.
      #
      # If the line segments do not intersect, nil is returned.
      #
      # If you want the lines to be treated as infinite lines, use #ray_intersect.
      #
      # @param line_1 [Object] a line (a Hash with x, y, x2, and y2 keys, or an Object that responds to x, y, x2, and y2). 
      # @param line_2 [Object] a line (a Hash with x, y, x2, and y2 keys, or an Object that responds to x, y, x2, and y2). 
      # @rerturn [Hash,nil] returns point of intersection if the line segments intersect, nil if not
      def line_intersect line_1, line_2; end

      # Given two lines (:x, :y, :x2, :y2), this function returns point of intersection if the ray (infinite line) intersect.
      #
      # If the lines are parallel, nil is returned.
      #
      # If you do not want the lines to be treated as infinite lines, use line_intersect.
      #
      # @param line_1 [Object] a line (a Hash with x, y, x2, and y2 keys, or an Object that responds to x, y, x2, and y2).  
      # @param line_2 [Object] a line (a Hash with x, y, x2, and y2 keys, or an Object that responds to x, y, x2, and y2).  
      # @rerturn [Hash,nil] returns point of intersection if the ray(infinite line) intersect, nil if not
      def ray_intersect line_1, line_2; end

      # Given a point and an angle in degrees, a new point is returned that is rotated around the origin by the degrees amount.
      #
      # An optional third argument can be provided to rotate the angle around a point other than the origin.
      #
      # @param point [Object] a point (a Hash with x and y keys, or an Object that responds to x and y).
      # @param angle [Numeric]
      # @return [Hash] a new point is returned that is rotated around the origin by the degrees amount.
      def rotate_point point, angle; end

      # Given a rect and a collection of rects, find_intersect_rect returns the first rect that intersects with the the first parameter.
      #
      # :anchor_x, and anchor_y is taken into consideration if the objects respond to these methods.
      #
      # @param needle [Object] the rect you'd like to check for intersection on
      # @param haystack [Array] the collection of rects you'd like to check against
      # @return [Hash,nil] returns the first rect that intersects with the the first parameter. nil if either parameter is nil.
      def find_intersect_rect needle, haystack; end

      # Given a rect and a collection of rects, find_intersect_rect returns the first rect that intersects with the the first parameter.
      #
      # :anchor_x, and anchor_y is taken into consideration if the objects respond to these methods.
      #
      # @param needle [Object] the rect you'd like to check for intersection on
      # @param haystack [Array] the collection of rects you'd like to check against
      # @return [Hash] returns the first rect that intersects with the the first parameter. Returns an empty Array if either parameter is nil.
      def find_all_intersect_rect needle, haystack; end


      # This is a faster collision algorithm for determining if a rectangle intersects any rectangle in an array.
      #
      # In order to use find_intersect_rect_quad_tree, you must first generate a quad tree data structure using create_quad_tree
      #
      # Use this function if find_intersect_rect isn’t fast enough.
      #
      # @param needle [Object] the rect you'd like to check for intersection on
      # @param quad_tree [Object] the generated quad_tree created with the rects you'd like to check against
      # @return [Hash,nil] returns the first rect that intersects with the the first parameter. nil if either parameter is nil.
      def find_intersect_rect_quad_tree needle, quad_tree; end

      # This is a faster collision algorithm for determining if a rectangle intersects any rectangle in an array.
      #
      # In order to use find_intersect_rect_quad_tree, you must first generate a quad tree data structure using create_quad_tree
      #
      # Use this function if find_intersect_rect isn’t fast enough.
      #
      # @param needle [Object] the rect you'd like to check for intersection on
      # @param quad_tree [Object] the generated quad_tree created with the rects you'd like to check against
      # @return [Array] returns an array of Rects from the quad_tree that intersect with the the first parameter.
      def find_all_intersect_rect_quad_tree needle, quad_tree; end

      # @param line [Object] a line (a Hash with x, y, x2, and y2 keys, or an Object that responds to x, y, x2, and y2). 
      # @return [Numeric] Given a line, this function will return the angle of the line in degrees.
      def line_angle line; end

      # Given two Hashes with x and y keys (or Objects that respond to x and y), this function will return the dot product of the two vectors.
      #
      # @param vec_1 [Object] a Hash with x and y keys (or an Object that responds to x and y). 
      # @param vec_2 [Object] a Hash with x and y keys (or an Object that responds to x and y). 
      # @return [Numeric] return the dot product of the two vectors.
      def vec2_dot_product vec_1, vec_2; end

      # Given a Hash with x and y keys (or an Object that responds to x and y), this function will return a Hash with x and y keys that represents the vector normalized.
      #
      # @param vec_1 [Object] a Hash with x and y keys (or an Object that responds to x and y). 
      # @param vec_2 [Object] a Hash with x and y keys (or an Object that responds to x and y). 
      # @return [Hash] return a Hash with x and y keys that represents the vector normalized.
      def vec2_normalize vec2; end

      # Given an Object with x, y, w, h, (and optionally anchor_x, anchor_y), this function returns a Hash in the following form.
      #
      # ```
      # {
      #   x: ...,
      #   y: ...,
      #   w: ...,
      #   h: ...,
      #   center: {
      #     x: ...,
      #     y: ...,
      #   }
      # }
      # ```
      #
      # @param rect [Object] rect
      # @return [Hash]
      def rect_props rect; end

      # Given a line, this function will return a Hash with x and y keys that represents the vector of the line.
      #
      # @param line [Object] a line (a Hash with x, y, x2, and y2 keys, or an Object that responds to x, y, x2, and y2). 
      # @return [Hash] a Hash with x and y keys that represents the vector of the line.
      def line_vec2 line; end

      # Given a Hash with x and y keys (or an Object that responds to x and y), this function will return the magnitude of the vector.
      #
      # @param vec2 [Object] a Hash with x and y keys (or an Object that responds to x and y). 
      # @return [Numeric] the magnitude of the vector.
      def vec2_magnitude vec2; end

      # Given two Hashes with x and y keys (or Objects that respond to x and y), this function will return the distance squared between the two points.
      #
      # This is useful when you only want to compare distances, and don’t need the actual distance.
      #
      # @param vec_1 [Object] a Hash with x and y keys (or an Object that responds to x and y). 
      # @param vec_2 [Object] a Hash with x and y keys (or an Object that responds to x and y). 
      # @return [Numeric] the distance squared between the two points
      def distance_squared vec_1, vec_2; end

      # Given a Hash with x and y keys (or an Object that responds to x and y), this function will return a Hash with x and y keys that represents the normal of the vector.
      #
      # @param vec2 [Object] a Hash with x and y keys (or an Object that responds to x and y). 
      # @return [Hash] a Hash with x and y keys that represents the normal of the vector.
      def vec2_normal vec2; end

      # Check whether a circle intersects a line.
      #
      # @param circle [Object] a Hash with x, y, and radius keys (or an Object that responds to x, y, and radius).
      # @param line [Object] a Hash with x, y, x2, and y2 keys (or an Object that responds to x, y, x2, and y2).
      # @return [Boolean] true if the circle intersects the line, and false if it does not.
      def circle_intersect_line? circle, line; end

      # @param line [Object] a line (a Hash with x, y, x2, and y2 keys, or an Object that responds to x, y, x2, and y2).
      # @param vec2 [Object] a Hash with x and y keys (or an Object that responds to x and y).
      # @return [Hash] a Hash with x and y keys that represents the normal of the line relative to the point provided.
      def line_normal line, vec2; end

      # @param point [Object] a point (a Hash with x and y keys, or an Object that responds to x and y).
      # @param line [Object] a line (a Hash with x, y, x2, and y2 keys, or an Object that responds to x, y, x2, and y2).
      # @return [Boolean] This function will return true if the point is on the line, and false if it is not.
      def point_on_line? point, line; end

      # Given an Array of rects, returns a Hash of collisions.
      #
      # Each entry in the return Hash maps two rects from the input Array that intersect.
      #
      # Note that in the event of an intersection of rects A and B, the returned Hash will contain two entries: {A=>B,B=>A}
      #
      # @param rects [Array] an array of rects
      # @return [Hash] collisions of rects within array.
      def find_collisions rects; end

      # Given a collection of rects, this function returns the next rect provided a move direction.
      #
      # The function is helpful for navigating controls using a keyboard or controller (like in on a menu screen).
      #
      # @param rect [Object]
      # @param rects [Array] array of Rects
      # @param left_right [Integer] A number that’s either -1, 0, or 1 indicating the x navigation direction.
      # @param up_down [Integer] A number that’s either -1, 0, or 1 indicating the y navigation direction.
      # @param directional_vector [Object] An object that responds to x, and y. The sign of these properties will be used to populate left_right, and up_down parameters.
      # @param wrap_x [Boolean] Determines whether the navigation will wrap around if no navigation is found in the left_right direction. Defaulted to true.
      # @param wrap_y [Boolean] Determines whether the navigation will wrap around if no navigation is found in the up_down direction. Defaulted to true.
      # @param using [Proc] Optional lambda that can be passed in so the function knows which construct contains the properties x, y, w, h properties. If this parameter isn’t provided, then the source rect, rects objects are assumed to have x, y, w, h.
      def rect_navigate opts; end

      # Generates a quad tree from an array of rectangles. See #find_intersect_rect_quad_tree for usage.
      #
      # @param rects [Array] array of rects to form a quad_tree
      # @return [Object] quad_tree to be used with #find_intersect_rect_quad_tree and #find_all_intersect_rect_quad_tree
      def create_quad_tree rects; end

      # Callback based many to many collision check.
      #
      # An implicit block is required for this function. The block will be called with each pair of intersecting rectangles.
      #
      # ```ruby
      # rects_1 = [{ x: 0, y: 0, w: 100, h: 100 }]
      # rects_2 = [{ x: 50, y: 50, w: 100, h: 100 }]
      #
      # args.geometry.each_intersect_rect(rects_1, rects_2) do |rect_1, rect_2|
      #   \# do something with the intersecting rectangles
      # end
      # ```
      #
      # - See [Advanced Usage](https://docs.dragonruby.org/#/api/geometry?id=advanced-usage)
      #
      # @param rects_1 [Object] The first parameter can be an array or a single Hash (or an object that responds to x, y, w, h).
      # @param rects_2 [Object] The second parameter can be an array or a single Hash (or an object that responds to x, y, w, h). The second parameter should be the larger of the two sets of rectangles.
      # @param tolerance [Float] The third parameter is optional and is the tolerance for the intersection. The default value is 0.1.
      # @param using [Proc,Symbol] An optional using: named parameter can be given to specify what function should be used to extract the x, y, w, and h properties from the objects in the first and second parameters.  If it is a Proc, it will be called with the object in the first and second parameters.
      def each_intersect_rect rects1, rect2; end

      # Given a rectangle (a something with x, y, w, h, and optionally anchor\_x, anchor\_y properties), this function returns an array of four lines representing the edges of the rectangle. The lines are ordered as: bottom, right, top, left.
      #
      # @param rect [Hash]
      # @return [Array] array of four lines representing the edges of the rectangle. The lines are ordered as: bottom, right, top, left.
      def rect_to_lines(rect)
      end

      # Given two points (each with x and y properties), this function returns a Hash(x:, y:, x2:, y2:) representing a line. The line starts at point p1 and ends at point p2.
      #
      # @param p1 [Object]
      # @param p2 [Object]
      # @return [Hash] Hash representing a line between p1 and p2.
      def line_to_points(p1, p2)
      end

      # Given a rectangle, this function returns a new rectangle with adjusted dimensions while maintaining the center point.
      #
      # You can zoom using either ratio-based or pixel-based parameters, but not both.
      #
      # Returns Hash(x:, y:, w:, h:, center: Hash(x:, y:)).
      #
      # @param rect [Object]
      # @param ratio [Numeric] uniform scaling ratio for both width and height
      # @param w_ratio [Numeric] scaling ratio for width (overrides ratio for width)
      # @param h_ratio [Numeric] scaling ratio for height (overrides ratio for height)
      # @param px [Numeric] uniform pixel adjustment for both width and height
      # @param w_px [Numeric] pixel adjustment for width (overrides px for width)
      # @param h_px [Numeric] pixel adjustment for height (overrides px for height)
      # @return [Hash]
      def zoom_rect(rect, ratio, w_ratio, h_ratio, px, w_px, h_px)
      end

      # Given two rectangles and an interpolation step, this function returns a new rectangle that represents the linear interpolation between the from and to rectangles.
      #
      # Returns Hash(x:, y:, w:, h:, center: Hash(x:, y:)).
      #
      # @param from [Object] the starting rectangle
      # @param to [Object] the ending rectangle
      # @param step [Numeric] the interpolation step (typically a value between 0.0 and 1.0, where 0.0 returns the from rect and 1.0
      # @param tolerance [Numeric] optional tolerance parameter passed to the underlying lerp function (default 0)
      # @return [Hash]
      def lerp_rect(from, to, step, tolerance)
      end

      # Generates basic 3D Perlin noise at the given coordinates.
      #
      # @param x [Numeric]
      # @param y [Numeric]
      # @param z [Numeric]
      # @param x_wrap [Numeric] Wrapping values for tiling (use 0 for no wrapping)
      # @param y_wrap [Numeric] Wrapping values for tiling (use 0 for no wrapping)
      # @param z_wrap [Numeric] Wrapping values for tiling (use 0 for no wrapping)
      # @return [Numeric] float value representing the noise at the given coordinates.
      def perlin_noise(x, y, z, x_wrap, y_wrap, z_wrap)
      end

      # Generates 3D Perlin noise with a custom seed value for reproducible results.
      #
      # @param x [Numeric]
      # @param y [Numeric]
      # @param z [Numeric]
      # @param x_wrap [Numeric] Wrapping values for tiling (use 0 for no wrapping)
      # @param y_wrap [Numeric] Wrapping values for tiling (use 0 for no wrapping)
      # @param z_wrap [Numeric] Wrapping values for tiling (use 0 for no wrapping)
      # @param seed [Numeric] Integer seed value for reproducible noise generation
      # @return [Numeric] float value representing the noise at the given coordinates.
      def perlin_noise_seed(x, y, z, x_wrap, y_wrap, z_wrap, seed)
      end

      # Generates ridge noise, useful for creating mountain ridges and sharp terrain features.
      #
      # @param x [Numeric]
      # @param y [Numeric]
      # @param z [Numeric]
      # @param lacunarity [Numeric] Controls the frequency increase per octave (typically 2.0)
      # @param gain [Numeric] Controls the amplitude decrease per octave (typically 0.5)
      # @param offset [Numeric] Ridge offset value (typically 1.0)
      # @param octaves [Numeric] Number of noise layers to combine (typically 6)
      # @return [Numeric] Returns a float value representing the ridge noise at the given coordinates.
      def perlin_ridge_noise(x, y, z, lacunarity, gain, offset, octaves)
      end

      # Generates Fractional Brownian Motion (fBm) noise, useful for natural-looking textures like clouds, terrain, and wood grain.
      #
      # @param x [Numeric]
      # @param y [Numeric]
      # @param z [Numeric]
      # @param lacunarity [Numeric] Controls the frequency increase per octave (typically 2.0)
      # @param gain [Numeric] Controls the amplitude decrease per octave (typically 0.5)
      # @param octaves [Numeric] Number of noise layers to combine (typically 6)
      # @return [Numeric] Returns a float value representing the ridge noise at the given coordinates.
      def perlin_fbm_noise(x, y, z, lacunarity, gain, offset, octaves)
      end

      # Generates turbulence noise using absolute values, useful for marble, fire, and liquid effects.
      #
      # @param x [Numeric]
      # @param y [Numeric]
      # @param z [Numeric]
      # @param lacunarity [Numeric] Controls the frequency increase per octave (typically 2.0)
      # @param gain [Numeric] Controls the amplitude decrease per octave (typically 0.5)
      # @param octaves [Numeric] Number of noise layers to combine (typically 6)
      # @return [Numeric] Returns a float value representing the ridge noise at the given coordinates.
      def perlin_turbulence_noise(x, y, z, lacunarity, gain, offset, octaves)
      end
    end
  end
end
