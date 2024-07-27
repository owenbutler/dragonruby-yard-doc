module GTK
  class Outputs
    # @return [String, nil] name of the render target or `nil` if top-level 
    attr_accessor :target

    # @return [Integer] width of the outputs instance
    attr_accessor :width

    # @return [Integer] height of the outputs instance
    attr_accessor :height

    # @return [Boolean] returns whether the target is transient
    attr_accessor :transient

    # @return [Hash, Array] either a color hash (color keys default to `230` if not passed, alpha defaults to `255`),
    #                       or a color array of the format `[r, g, b]` or `[r, g, b, a]`
    attr_accessor :background_color

    # Whether to clear the render target this frame, before any other operations are added to it.
    #
    # Defaults to True.
    #
    # @return [Boolean]
    attr_accessor :clear_before_render

    # @return [OutputsArray]
    attr_reader :solids, :sprites, :lines, :labels, :borders, :primitives, :reserved, :debug,
                :static_solids, :static_sprites, :static_lines, :static_labels, :static_borders,
                :static_primitives, :static_reserved, :static_debug, :screenshots

    # @param name [String, Symbol]
    # @return [Outputs] render target named by `name`
    def render_target(name); end

    # @param name [String, Symbol]
    # @return [Outputs] render target named by `name`
    def [](name); end

    # sets `transient` to `true`
    def transient!; end

    # pushes `obj` into the `primitives` array
    # @param obj [Object]
    # @return [self]
    def <<(obj); end

    alias w width
    alias w= width=
    alias h height
    alias h= height=

    # @return [Boolean] returns whether a screenshot can be taken on the current tick
    def can_screenshot?; end
  end
end
