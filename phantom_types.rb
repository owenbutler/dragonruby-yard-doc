# :nodoc:
module Typing
  # phantom type denoting a point-like object
  module Point
    # @return [Integer, Float]
    attr_reader :x, :y
  end

  # phantom type denoting a rect-like object
  module Rect
    # @return [Integer, Float]
    attr_reader :x, :y, :w, :h
  end

  # phantom type for the hash returned by a `GTK::Runtime#get_pixels` call
  # not a subclass of `Hash` because you probably(tm) will not use it as a normal hash
  module PixelsHash
    # @return [Integer]
    attr_reader :w, :h

    # @return [Array<Integer>]
    attr_reader :pixels
  end
end
