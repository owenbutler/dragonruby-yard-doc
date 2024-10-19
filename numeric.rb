class Numeric
  # converts `self` from seconds to ticks
  # @return [Float]
  def seconds
  end

  # returns `self` clamped to the `[0; 255]` range and converted to an integer
  # @return [Integer]
  def to_byte
  end

  # wrapping clamp
  # examples:
  # ```rb
  # 5.clamp_wrap(2, 4)     # =>  2
  # 5.clamp_wrap(10, 20)   # => 16
  # 123.clamp_wrap(10, 20) # => 13
  # ```
  # @param min [Numeric]
  # @param max [Numeric]
  # @return [Numeric]
  def clamp_wrap(min, max)
  end

  # linear interpolation from `self` to `to` at `step`
  # @param to [Numeric] number to lerp to
  # @param step [Numeric] time; often denoted `t`
  # @return [Numeric]
  def lerp(to, step)
  end

  # map `self` from one range to another
  # @param r1_begin [Numeric] the beginning of the source range
  # @param r1_end [Numeric] the end of the source range
  # @param r2_begin [Numeric] the beginning of the result range
  # @param r2_end [Numeric] the end of the result range
  # @return [Numeric]
  def remap(r1_begin, r1_end, r2_begin, r2_end)
  end

  # calls the block with successive integers up to `self.to_i` (exclusive)
  # shorthand for `self.times.each`
  # @yieldparam i [Integer] successive integers
  # @return [self]
  def each(&blk)
  end

  # calls the block with a pair of integers
  # shorthand for `self.times.each_with_index`
  # @yieldparam i [Integer]
  # @yieldparam idx [Integer]
  # @return [self]
  def each_with_index(&blk)
  end

  # calls the block with successive integers up to `self.to_i` (exclusive)
  # and constructs an array of the yielded values
  # shorthand for `self.times.map`
  # @yieldparam i [Integer] successive integers
  # @return [Array]
  def map(&blk)
  end

  # calls the block with a pair of integers
  # and constructs an array of the yielded values
  # shorthand for `self.times.map_with_index`
  # @yieldparam i [Integer]
  # @yieldparam idx [Integer]
  # @return [Array]
  def map_with_index(&blk)
  end

  # calls the block with a pair of integers
  # and constructs an array resulting from the concatenation
  # of the yielded arrays
  # shorthand for `self.times.flat_map`
  # @yieldparam i [Integer]
  # @yieldreturn [Array]
  # @return [Array]
  def flat_map(&blk)
  end
end
