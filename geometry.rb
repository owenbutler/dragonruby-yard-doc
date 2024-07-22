module GTK
  class Geometry

    def intersect_rect? rect_1, rect_2, tolerance; end

    def inside_rect? rect_1, rect_2; end

    def scale_rect rect, ratio; end

    def scale_rect_extended opts; end

    def angle start_point, end_point; end

    def angle_from start_point, end_point; end

    def angle_to start_point, end_point; end

    def angle_turn_direction angle, target_angle; end

    def angle_delta angle, target_angle; end

    def angle_within_range test_angle, target_angle, range; end

    def distance p1, p2; end

    def point_inside_circle? circle_center, circle_radius; end

    def center_inside_rect target_rect, reference_rect; end

    def ray_test point, line; end

    def line_rise_run line; end

    def line_intersect line_1, line_2; end

    def ray_intersect line_1, line_2; end

    def rotate_point point, angle; end

    def find_intersect_rect needle, haystack; end

    def find_all_intersect_rect needle, haystack; end

    def find_intersect_rect_quad_tree needle, quad_tree; end

    def find_all_intersect_rect_quad_tree needle, quad_tree; end

    def line_angle line; end

    def vec2_dot_product vec_1, vec_2; end

    def vec2_normalize vec2; end

    def rect_props rect; end

    def line_vec2 line; end

    def vec2_magnitude vec2; end

    def distance_squared vec_1, vec_2; end

    def vec2_normal vec2; end

    def circle_intersect_line? cirlce, line; end

    def line_normal line, vec2; end

    def point_on_line? point, line; end

    def find_collisions rects; end

    # todo
    def rect_navigate opts; end

    def create_quad_tree rects; end
  end
end
