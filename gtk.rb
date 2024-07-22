module GTK
  class Gtk

    # @return [GTK::Args] args
    attr_reader :args

    def get_pixels file_path; end

    def dlopen file_path; end

    def window_fullscreen?; end

    def can_resize_window?; end

    def set_window_fullscreen fullscreen; end

    def toggle_window_fullscreen; end

    def set_window_scale scale; end

    def set_window_title title; end

    def can_close_window?; end

    def maximize_window; end

    def can_change_orientation?; end

    def toggle_orientation; end

    def set_orientation orientation; end

    def set_hd_max_scale scale; end

    def toggle_hd_letterbox; end

    def set_hd_letterbox letterbox; end

    def calcstringbox text, size_enum, font; end

    def request_quit; end

    def quit_requested?; end

    def platform? category; end

    def production?; end

    def open_url url; end

    def system command; end

    def exec command; end

    def show_cursor; end

    def hide_cursor; end

    def cursor_shown?; end

    def set_mouse_grab mode; end

    def set_system_cursor cursor; end

    def set_cursor path; end

    def create_uuid; end

    def list_files directory; end

    def stat_file file_path; end

    def read_file file_path; end

    def write_file file_path, contents; end

    def append_file file_path, contents; end

    def delete_file file_path; end

    def parse_json json_string; end

    def parse_json_file file_path; end

    def parse_xml xml_string; end

    def parse_xml_file file_path; end

    def http_get uri; end

    def http_post uri, form_content, headers; end

    def http_post_body uri, string_content, headers; end

    def start_server!; end

    def version; end

    def version_pro?; end

    def game_version; end

    def reset; end

    def reset_next_tick; end

    def reset_sprite path; end

    def reset_sprites; end

    def calcspritebox path; end

    def current_framerate; end

    def framerate_diagnostics_primitives; end

    def warn_array_primitives!; end

    def notify! message, duration; end

    def notify_extended! opts; end

    def slowmo! factor; end

    def show_console; end

    def hide_console; end

    def enable_console; end

    def disable_console; end

    def disable_reset_via_ctrl_r; end

    def disable_controller_config; end

    def enable_controller_config; end

    def start_recording; end

    def stop_recording path; end

    def cancel_recording; end

    def start_replay replay_file_path; end

    def stop_replay; end

    def get_base_dir; end

    def get_game_dir_url; end

    def open_game_dir; end

    def write_file_root filepath, contents; end

    def append_file_root filepath, contents; end

    def argv; end

    def cli_arguments; end

    def reload_history; end

    def reload_history_pending; end

    def reload_if_needed filename; end

    def add_caller_to_puts!; end

  end
end
