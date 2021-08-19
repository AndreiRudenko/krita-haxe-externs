package krita;

enum abstract Actions(String) from String to String{

	// About Krita
	var help_about_app = "help_about_app";
	
	// Active Author Profile
	var settings_active_author = "settings_active_author";
	
	// Select all layers
	var select_all_layers = "select_all_layers";
	
	// Alpha into Mask
	var split_alpha_into_mask = "split_alpha_into_mask";
	
	// Apply Filter Again
	var filter_apply_again = "filter_apply_again";
	
	// as Paint Layer
	var import_layer_as_paint_layer = "import_layer_as_paint_layer";
	
	// Auto Contrast
	var krita_filter_autocontrast = "krita_filter_autocontrast";
	
	// Blur
	var blur_filters = "blur_filters";
	
	// Blur
	var krita_filter_blur = "krita_filter_blur";
	
	// Border Selection
	var borderselection = "borderselection";
	
	// Burn
	var krita_filter_burn = "krita_filter_burn";
	
	// Clone Layer
	var add_new_clone_layer = "add_new_clone_layer";
	
	// Close All
	var file_close_all = "file_close_all";
	
	// Color
	var dual = "dual";
	
	// Color Balance
	var krita_filter_colorbalance = "krita_filter_colorbalance";
	
	// Plugin to change color space of selected documents.
	var color_space = "color_space";
	
	// Color to Alpha
	var krita_filter_colortoalpha = "krita_filter_colortoalpha";
	
	// Colorize Mask
	var add_new_colorize_mask = "add_new_colorize_mask";
	
	// Colors
	var color_filters = "color_filters";
	
	// Configure Krita
	var options_configure = "options_configure";
	
	// Convert Image Color Space
	var imagecolorspaceconversion = "imagecolorspaceconversion";
	
	// Convert Layer Color Space
	var layercolorspaceconversion = "layercolorspaceconversion";
	
	// Convert to Vector Selection
	var convert_to_vector_selection = "convert_to_vector_selection";
	
	// Copy selection to clipboard
	var edit_copy = "edit_copy";
	
	// Create Template From Image
	var create_template = "create_template";
	
	// Desaturate
	var krita_filter_desaturate = "krita_filter_desaturate";
	
	// Deselect
	var deselect = "deselect";
	
	// Show the canvas on a separate window
	var view_detached_canvas = "view_detached_canvas";
	
	// Dockers
	var settings_dockers_menu = "settings_dockers_menu";
	
	// Document Information
	var file_documentinfo = "file_documentinfo";
	
	// Plugin to manipulate properties of selected documents.
	var document_tools = "document_tools";
	
	// Duplicate Layer or Mask
	var duplicatelayer = "duplicatelayer";
	
	// Edge Detection
	var edge_filters = "edge_filters";
	
	// Edge Detection
	var krita_filter_edge_detection = "krita_filter_edge detection";
	
	// Edit metadata
	var EditLayerMetaData = "EditLayerMetaData";
	
	// Emboss with Variable Depth
	var krita_filter_emboss = "krita_filter_emboss";
	
	// Resources Cache Database
	var dbexplorer = "dbexplorer";
	
	// Plugin to export layers from a document.
	var export_layers = "export_layers";
	
	// Feather Selection
	var featherselection = "featherselection";
	
	// File Layer
	var add_new_file_layer = "add_new_file_layer";
	
	// Fill Layer
	var add_new_fill_layer = "add_new_fill_layer";
	
	// Fill with Foreground Color
	var fill_selection_foreground_color = "fill_selection_foreground_color";
	
	// Fill with Foreground Color (Opacity)
	var fill_selection_foreground_color_opacity = "fill_selection_foreground_color_opacity";
	
	// Filter Layer
	var add_new_adjustment_layer = "add_new_adjustment_layer";
	
	// Plugin to filters management.
	var filter_manager = "filter_manager";
	
	// Filter Mask
	var add_new_filter_mask = "add_new_filter_mask";
	
	// Flatten Layer
	var flatten_layer = "flatten_layer";
	
	// Gaussian Blur
	var krita_filter_gaussian_blur = "krita_filter_gaussian blur";
	
	// Gaussian High Pass
	var krita_filter_gaussianhighpass = "krita_filter_gaussianhighpass";
	
	// Gaussian Noise Reduction
	var krita_filter_gaussiannoisereducer = "krita_filter_gaussiannoisereducer";
	
	// Gradient Map
	var krita_filter_gradientmap = "krita_filter_gradientmap";
	
	// Gradients
	var gradients = "gradients";
	
	// Group Layer
	var add_new_group_layer = "add_new_group_layer";
	
	// Grow Selection
	var growselection = "growselection";
	
	// Halftone
	var krita_filter_halftone = "krita_filter_halftone";
	
	// Height to Normal Map
	var krita_filter_height_to_normal = "krita_filter_height to normal";
	
	// HSV Adjustment
	var krita_filter_hsvadjustment = "krita_filter_hsvadjustment";
	
	// Change the background color of the image
	var image_color = "image_color";
	
	// Import Python Plugin
	var plugin_importer = "plugin_importer";
	
	// Index Colors
	var krita_filter_indexcolors = "krita_filter_indexcolors";
	
	// Instant Preview Mode
	var level_of_detail_mode = "level_of_detail_mode";
	
	// Invert
	var krita_filter_invert = "krita_filter_invert";
	
	// Invert current selection
	var invert_selection = "invert_selection";
	
	// Select all invisible layers
	var select_invisible_layers = "select_invisible_layers";
	
	// Isolate Active Group
	var isolate_active_group = "isolate_active_group";
	
	// Isolate Active Layer
	var isolate_active_layer = "isolate_active_layer";
	
	// Lens Blur
	var krita_filter_lens_blur = "krita_filter_lens blur";
	
	// Levels
	var krita_filter_levels = "krita_filter_levels";
	
	// Local Selection
	var add_new_selection_mask = "add_new_selection_mask";
	
	// Lock or unlock guides
	var view_lock_guides = "view_lock_guides";
	
	// Select all locked layers
	var select_locked_layers = "select_locked_layers";
	
	// Lower
	var object_order_lower = "object_order_lower";
	
	// Manage Resources
	var manage_bundles = "manage_bundles";
	
	// Map
	var map_filters = "map_filters";
	
	// Mean Removal
	var krita_filter_mean_removal = "krita_filter_mean removal";
	
	// Mirror Image Horizontally
	var mirrorImageHorizontal = "mirrorImageHorizontal";
	
	// Mirror View
	var mirror_canvas = "mirror_canvas";
	
	// Motion Blur
	var krita_filter_motion_blur = "krita_filter_motion blur";
	
	// New layer from visible
	var new_from_visible = "new_from_visible";
	
	// New Window
	var view_newwindow = "view_newwindow";
	
	// Create new document
	var file_new = "file_new";
	
	// Normalize
	var krita_filter_normalize = "krita_filter_normalize";
	
	// Offset Image
	var offsetimage = "offsetimage";
	
	// Offset Layer
	var offsetlayer = "offsetlayer";
	
	// Oilpaint
	var krita_filter_oilpaint = "krita_filter_oilpaint";
	
	// Open an existing document
	var file_open = "file_open";
	
	// Other
	var other_filters = "other_filters";
	
	// Turns on warnings for colors out of proofed gamut, needs soft proofing to be turned on.
	var gamutCheck = "gamutCheck";
	
	// Paint Layer
	var add_new_paint_layer = "add_new_paint_layer";
	
	// Painter's Tools
	var paintops = "paintops";
	
	// Palettize
	var krita_filter_palettize = "krita_filter_palettize";
	
	// Paste clipboard content
	var edit_paste = "edit_paste";
	
	// Patterns
	var patterns = "patterns";
	
	// Pixelize
	var krita_filter_pixelize = "krita_filter_pixelize";
	
	// Previous
	var windows_previous = "windows_previous";
	
	// Properties
	var layer_properties = "layer_properties";
	
	// Properties
	var image_properties = "image_properties";
	
	// Create a group layer containing selected layers
	var create_quick_group = "create_quick_group";
	
	// Quit application
	var file_quit = "file_quit";
	
	// Raindrops
	var krita_filter_raindrops = "krita_filter_raindrops";
	
	// Raise
	var object_order_raise = "object_order_raise";
	
	// Random Noise
	var krita_filter_noise = "krita_filter_noise";
	
	// Rasterize Layer
	var rasterize_layer = "rasterize_layer";
	
	// Apply the last G'Mic-Qt action again
	var QMicAgain = "QMicAgain";
	
	// Redo last undone action
	var edit_redo = "edit_redo";
	
	// Remove Layer
	var remove_layer = "remove_layer";
	
	// Render Animation Again
	var render_animation_again = "render_animation_again";
	
	// Report Bug
	var help_report_bug = "help_report_bug";
	
	// Reselect
	var reselect = "reselect";
	
	// Reset Krita Configurations
	var reset_configurations = "reset_configurations";
	
	// Reset zoom
	var zoom_to_100pct = "zoom_to_100pct";
	
	// Rotate All Layers
	var rotateAllLayers = "rotateAllLayers";
	
	// Rotate Image
	var rotateimage = "rotateimage";
	
	// Rotate Layer
	var rotatelayer = "rotatelayer";
	
	// Round Corners
	var krita_filter_roundcorners = "krita_filter_roundcorners";
	
	// Save
	var file_save = "file_save";
	
	// Save Layer/Mask
	var save_node_as_image = "save_node_as_image";
	
	// Save Merged
	var split_alpha_save_merged = "split_alpha_save_merged";
	
	// Scripter
	var python_scripter = "python_scripter";
	
	// Sharpen
	var krita_filter_sharpen = "krita_filter_sharpen";
	
	// Shear All Layers
	var shearAllLayers = "shearAllLayers";
	
	// Shear Image
	var shearimage = "shearimage";
	
	// Shear Layer
	var shearlayer = "shearlayer";
	
	// Show just the canvas or the whole window
	var view_show_canvas_only = "view_show_canvas_only";
	
	// Show Dockers
	var view_toggledockers = "view_toggledockers";
	
	// Shows global selection as a usual selection mask in <b>Layers</b> docker
	var show_global_selection_mask = "show-global-selection-mask";
	
	// Show Krita log for bug reports.
	var buginfo = "buginfo";
	
	// Slope, Offset, Power
	var krita_filter_asc_cdl = "krita_filter_asc-cdl";
	
	// Small Tiles
	var krita_filter_smalltiles = "krita_filter_smalltiles";
	
	// Snap cursor to guides position
	var view_snap_to_guides = "view_snap_to_guides";
	
	// Split Layer
	var layersplit = "layersplit";
	
	// Start G'Mic-Qt
	var QMic = "QMic";
	
	// Assign ten brush presets to ten shortcuts.
	var ten_brushes = "ten_brushes";
	
	// Themes
	var theme_menu = "theme_menu";
	
	// Threshold
	var krita_filter_threshold = "krita_filter_threshold";
	
	// Tile
	var windows_tile = "windows_tile";
	
	// Toggle layer lock
	var toggle_layer_lock = "toggle_layer_lock";
	
	// Toggle Selection Display Mode
	var toggle_selection_overlay_mode = "toggle-selection-overlay-mode";
	
	// Transform Mask
	var add_new_transform_mask = "add_new_transform_mask";
	
	// Transparency Mask
	var add_new_transparency_mask = "add_new_transparency_mask";
	
	// Trim to Image Size
	var trim_to_image = "trim_to_image";
	
	// Undo last action
	var edit_undo = "edit_undo";
	
	// Select all unlocked layers
	var select_unlocked_layers = "select_unlocked_layers";
	
	// Unsharp Mask
	var krita_filter_unsharp = "krita_filter_unsharp";
	
	// Vector Layer
	var add_new_shape_layer = "add_new_shape_layer";
	
	// Select all visible layers
	var select_visible_layers = "select_visible_layers";
	
	// Wave
	var krita_filter_wave = "krita_filter_wave";
	
	// Wavelet Decompose
	var waveletdecompose = "waveletdecompose";
	
	// Wavelet Noise Reducer
	var krita_filter_waveletnoisereducer = "krita_filter_waveletnoisereducer";
	
	// Window
	var window = "window";
	
	// Wrap Around Mode
	var wrap_around_mode = "wrap_around_mode";
	
	// Write as Alpha
	var split_alpha_write = "split_alpha_write";
	
	// Adjust
	var adjust_filters = "adjust_filters";
	
	// About KDE
	var help_about_kde = "help_about_kde";
	
	// Activate Brush Preset 0
	var activate_preset_0 = "activate_preset_0";
	
	// Activate Brush Preset 1
	var activate_preset_1 = "activate_preset_1";
	
	// Activate Brush Preset 2
	var activate_preset_2 = "activate_preset_2";
	
	// Activate Brush Preset 3
	var activate_preset_3 = "activate_preset_3";
	
	// Activate Brush Preset 4
	var activate_preset_4 = "activate_preset_4";
	
	// Activate Brush Preset 5
	var activate_preset_5 = "activate_preset_5";
	
	// Activate Brush Preset 6
	var activate_preset_6 = "activate_preset_6";
	
	// Activate Brush Preset 7
	var activate_preset_7 = "activate_preset_7";
	
	// Activate Brush Preset 8
	var activate_preset_8 = "activate_preset_8";
	
	// Activate Brush Preset 9
	var activate_preset_9 = "activate_preset_9";
	
	// Activate next layer
	var activateNextLayer = "activateNextLayer";
	
	// Activate next sibling layer
	var activateNextSiblingLayer = "activateNextSiblingLayer";
	
	// Activate previous layer
	var activatePreviousLayer = "activatePreviousLayer";
	
	// Activate previous sibling layer
	var activatePreviousSiblingLayer = "activatePreviousSiblingLayer";
	
	// Activate previously selected layer
	var switchToPreviouslyActiveNode = "switchToPreviouslyActiveNode";
	
	// Align Bottom
	var object_align_vertical_bottom = "object_align_vertical_bottom";
	
	// Align Left
	var object_align_horizontal_left = "object_align_horizontal_left";
	
	// Align Right
	var object_align_horizontal_right = "object_align_horizontal_right";
	
	// Align Top
	var object_align_vertical_top = "object_align_vertical_top";
	
	// Artistic
	var artistic_filters = "artistic_filters";
	
	// as Filter Mask
	var import_layer_as_filter_mask = "import_layer_as_filter_mask";
	
	// as Selection Mask
	var import_layer_as_selection_mask = "import_layer_as_selection_mask";
	
	// as Transparency Mask
	var import_layer_as_transparency_mask = "import_layer_as_transparency_mask";
	
	// Auto Frame Mode
	var auto_key = "auto_key";
	
	// Break at point
	var path_break_point = "path-break-point";
	
	// Break at segment
	var path_break_segment = "path-break-segment";
	
	// Bring to Front
	var object_order_front = "object_order_front";
	
	// Brush composite
	var composite_actions = "composite_actions";
	
	// Brush option slider 1
	var brushslider1 = "brushslider1";
	
	// Brush option slider 2
	var brushslider2 = "brushslider2";
	
	// Brush option slider 3
	var brushslider3 = "brushslider3";
	
	// Brush Smoothing: Basic
	var set_simple_brush_smoothing = "set_simple_brush_smoothing";
	
	// Brush Smoothing: Disabled
	var set_no_brush_smoothing = "set_no_brush_smoothing";
	
	// Brush Smoothing: Stabilizer
	var set_stabilizer_brush_smoothing = "set_stabilizer_brush_smoothing";
	
	// Brush Smoothing: Weighted
	var set_weighted_brush_smoothing = "set_weighted_brush_smoothing";
	
	// Cascade
	var windows_cascade = "windows_cascade";
	
	// Clear
	var clear = "clear";
	
	// Close
	var file_close = "file_close";
	
	// Copy (sharp)
	var copy_sharp = "copy_sharp";
	
	// Copy layer to clipboard
	var copy_layer_clipboard = "copy_layer_clipboard";
	
	// Cross-channel adjustment curves
	var krita_filter_crosschannel = "krita_filter_crosschannel";
	
	// Calligraphy: decrease angle
	var calligraphy_decrease_angle = "calligraphy_decrease_angle";
	
	// Calligraphy: decrease width
	var calligraphy_decrease_width = "calligraphy_decrease_width";
	
	// Calligraphy: increase angle
	var calligraphy_increase_angle = "calligraphy_increase_angle";
	
	// Calligraphy: increase width
	var calligraphy_increase_width = "calligraphy_increase_width";
	
	// Clones Array
	var clones_array = "clones_array";
	
	// Convert to Raster Selection
	var convert_to_raster_selection = "convert_to_raster_selection";
	
	// Color Transfer
	var krita_filter_colortransfer = "krita_filter_colortransfer";
	
	// Color Adjustment curves
	var krita_filter_perchannel = "krita_filter_perchannel";
	
	// Configure Toolbars
	var options_configure_toolbars = "options_configure_toolbars";
	
	// Convert to Shape
	var convert_selection_to_shape = "convert_selection_to_shape";
	
	// Convert child layers into animation frames
	var convert_group_to_animated = "convert_group_to_animated";
	
	// Convert Shapes to Vector Selection
	var convert_shapes_to_vector_selection = "convert_shapes_to_vector_selection";
	
	// Convert layer into animation frames
	var convert_to_animated = "convert_to_animated";
	
	// Copy merged
	var copy_merged = "copy_merged";
	
	// Copy Selection to New Layer
	var copy_selection_to_new_layer = "copy_selection_to_new_layer";
	
	// Copy columns to clipboard
	var copy_columns_to_clipboard = "copy_columns_to_clipboard";
	
	// Copy frames to clipboard
	var copy_frames_to_clipboard = "copy_frames_to_clipboard";
	
	// Corner point
	var pathpoint_corner = "pathpoint-corner";
	
	// Add blank frame
	var add_blank_frame = "add_blank_frame";
	
	// Create Copy From Current Image
	var create_copy = "create_copy";
	
	// Add duplicate frame
	var add_duplicate_frame = "add_duplicate_frame";
	
	// Create Resource Bundle
	var create_bundle = "create_bundle";
	
	// Create Snapshot
	var create_snapshot = "create_snapshot";
	
	// Cut selection to clipboard
	var edit_cut = "edit_cut";
	
	// Cut layer to clipboard
	var cut_layer_clipboard = "cut_layer_clipboard";
	
	// Cut (sharp)
	var cut_sharp = "cut_sharp";
	
	// Cut columns to clipboard
	var cut_columns_to_clipboard = "cut_columns_to_clipboard";
	
	// Cut Selection to New Layer
	var cut_selection_to_new_layer = "cut_selection_to_new_layer";
	
	// Cut frames to clipboard
	var cut_frames_to_clipboard = "cut_frames_to_clipboard";
	
	// Dodge
	var krita_filter_dodge = "krita_filter_dodge";
	
	// Decrease Brush Size
	var decrease_brush_size = "decrease_brush_size";
	
	// Decrease opacity
	var decrease_opacity = "decrease_opacity";
	
	// Display Selection
	var toggle_display_selection = "toggle_display_selection";
	
	// Distribute bottom edges equidistantly
	var object_distribute_vertical_bottom = "object_distribute_vertical_bottom";
	
	// Distribute centers equidistantly horizontally
	var object_distribute_horizontal_center = "object_distribute_horizontal_center";
	
	// Distribute centers equidistantly vertically
	var object_distribute_vertical_center = "object_distribute_vertical_center";
	
	// Make horizontal gaps between objects equal
	var object_distribute_horizontal_gaps = "object_distribute_horizontal_gaps";
	
	// Distribute left edges equidistantly
	var object_distribute_horizontal_left = "object_distribute_horizontal_left";
	
	// Distribute right edges equidistantly
	var object_distribute_horizontal_right = "object_distribute_horizontal_right";
	
	// Distribute top edges equidistantly
	var object_distribute_vertical_top = "object_distribute_vertical_top";
	
	// Make vertical gaps between objects equal
	var object_distribute_vertical_gaps = "object_distribute_vertical_gaps";
	
	// Drop FramesEnable to preserve playback timing.
	var drop_frames = "drop_frames";
	
	// Enhance
	var enhance_filters = "enhance_filters";
	
	// Export
	var file_export_file = "file_export_file";
	
	// Edit Selection
	var edit_selection = "edit_selection";
	
	// Emboss
	var emboss_filters = "emboss_filters";
	
	// Emboss Horizontal & Vertical
	var krita_filter_emboss_horizontal_and_vertical = "krita_filter_emboss horizontal and vertical";
	
	// Emboss in All Directions
	var krita_filter_emboss_all_directions = "krita_filter_emboss all directions";
	
	// Emboss Vertical Only
	var krita_filter_emboss_vertical_only = "krita_filter_emboss vertical only";
	
	// Emboss (Laplacian)
	var krita_filter_emboss_laplascian = "krita_filter_emboss laplascian";
	
	// Emboss Horizontal Only
	var krita_filter_emboss_horizontal_only = "krita_filter_emboss horizontal only";
	
	// Execute Script 1
	var execute_script_1 = "execute_script_1";
	
	// Execute Script 10
	var execute_script_10 = "execute_script_10";
	
	// Execute Script 2
	var execute_script_2 = "execute_script_2";
	
	// Execute Script 3
	var execute_script_3 = "execute_script_3";
	
	// Execute Script 4
	var execute_script_4 = "execute_script_4";
	
	// Execute Script 5
	var execute_script_5 = "execute_script_5";
	
	// Execute Script 6
	var execute_script_6 = "execute_script_6";
	
	// Execute Script 7
	var execute_script_7 = "execute_script_7";
	
	// Execute Script 8
	var execute_script_8 = "execute_script_8";
	
	// Execute Script 9
	var execute_script_9 = "execute_script_9";
	
	// Expanding Spacer
	var expanding_spacer_1 = "expanding_spacer_1";
	
	// Expanding Spacer
	var expanding_spacer_0 = "expanding_spacer_0";
	
	// Fill with Pattern
	var fill_selection_pattern = "fill_selection_pattern";
	
	// Display the window in full screen
	var fullscreen = "fullscreen";
	
	// Fill with Background Color
	var fill_selection_background_color = "fill_selection_background_color";
	
	// Fill with Background Color (Opacity)
	var fill_selection_background_color_opacity = "fill_selection_background_color_opacity";
	
	// Fill with Pattern (Opacity)
	var fill_selection_pattern_opacity = "fill_selection_pattern_opacity";
	
	// Flatten image
	var flatten_image = "flatten_image";
	
	// Group
	var object_group = "object_group";
	
	// Hide Brushes and Stuff Toolbar
	var BrushesAndStuff = "BrushesAndStuff";
	
	// Hide File Toolbar
	var mainToolBar = "mainToolBar";
	
	// Hide Mirror X Line
	var mirrorX_hideDecorations = "mirrorX-hideDecorations";
	
	// Hide Mirror Y Line
	var mirrorY_hideDecorations = "mirrorY-hideDecorations";
	
	// Horizontal Mirror Tool
	var hmirror_action = "hmirror_action";
	
	// Horizontally Center
	var object_align_horizontal_center = "object_align_horizontal_center";
	
	// Import animation frames
	var file_import_animation = "file_import_animation";
	
	// Import Layer
	var import_layer_from_file = "import_layer_from_file";
	
	// Image Split
	var imagesplit = "imagesplit";
	
	// Import Brushes
	var import_brushes = "import_brushes";
	
	// Import Bundles
	var import_bundles = "import_bundles";
	
	// Import Gradients
	var import_gradients = "import_gradients";
	
	// Import Palettes
	var import_palettes = "import_palettes";
	
	// Import Patterns
	var import_patterns = "import_patterns";
	
	// Import Presets
	var import_presets = "import_presets";
	
	// Import Workspaces
	var import_workspaces = "import_workspaces";
	
	// Increase Brush Size
	var increase_brush_size = "increase_brush_size";
	
	// Increase opacity
	var increase_opacity = "increase_opacity";
	
	// Insert column to the left of selection, moving the tail of animation to the right
	var insert_column_left = "insert_column_left";
	
	// Insert column to the right of selection, moving the tail of animation to the right
	var insert_column_right = "insert_column_right";
	
	// Insert a hold column into the frame at the current position
	var insert_hold_column = "insert_hold_column";
	
	// Insert a hold frame after every keyframe
	var insert_hold_frame = "insert_hold_frame";
	
	// Insert keyframes to the left of selection, moving the tail of animation to the right.
	var insert_keyframe_left = "insert_keyframe_left";
	
	// Insert keyframes to the right of selection, moving the tail of animation to the right.
	var insert_keyframe_right = "insert_keyframe_right";
	
	// Insert several columns based on user parameters.
	var insert_multiple_columns = "insert_multiple_columns";
	
	// Insert N hold columns into the frame at the current position
	var insert_multiple_hold_columns = "insert_multiple_hold_columns";
	
	// Insert N hold frames after every keyframe
	var insert_multiple_hold_frames = "insert_multiple_hold_frames";
	
	// Insert several keyframes based on user parameters.
	var insert_multiple_keyframes = "insert_multiple_keyframes";
	
	// Insert point
	var pathpoint_insert = "pathpoint-insert";
	
	// Create boolean intersection of multiple objects
	var object_intersect = "object_intersect";
	
	// Join with segment
	var pathpoint_join = "pathpoint-join";
	
	// Krita Handbook
	var help_contents = "help_contents";
	
	// Layer Style
	var layer_style = "layer_style";
	
	// Lock X Line
	var mirrorX_lock = "mirrorX-lock";
	
	// Lock Y Line
	var mirrorY_lock = "mirrorY-lock";
	
	// Maximize Channel
	var krita_filter_maximize = "krita_filter_maximize";
	
	// Minimize Channel
	var krita_filter_minimize = "krita_filter_minimize";
	
	// Make brush color darker
	var make_brush_color_darker = "make_brush_color_darker";
	
	// Make brush color lighter
	var make_brush_color_lighter = "make_brush_color_lighter";
	
	// Make brush color more blue
	var make_brush_color_bluer = "make_brush_color_bluer";
	
	// Make brush color more desaturated
	var make_brush_color_desaturated = "make_brush_color_desaturated";
	
	// Make brush color more green
	var make_brush_color_greener = "make_brush_color_greener";
	
	// Make brush color more red
	var make_brush_color_redder = "make_brush_color_redder";
	
	// Make brush color more saturated
	var make_brush_color_saturated = "make_brush_color_saturated";
	
	// Make brush color more yellow
	var make_brush_color_yellower = "make_brush_color_yellower";
	
	// Make curve point
	var pathpoint_curve = "pathpoint-curve";
	
	// Make line point
	var pathpoint_line = "pathpoint-line";
	
	// Merge points
	var pathpoint_merge = "pathpoint-merge";
	
	// Merge with Layer Below
	var merge_layer = "merge_layer";
	
	// Mirror
	var mirror_actions = "mirror_actions";
	
	// Mirror All Layers Vertically
	var mirrorAllNodesY = "mirrorAllNodesY";
	
	// Mirror All Layers Horizontally
	var mirrorAllNodesX = "mirrorAllNodesX";
	
	// Mirror columns' position
	var mirror_columns = "mirror_columns";
	
	// Mirror frames' position
	var mirror_frames = "mirror_frames";
	
	// Mirror object horizontally
	var object_transform_mirror_horizontally = "object_transform_mirror_horizontally";
	
	// Mirror Image Vertically
	var mirrorImageVertical = "mirrorImageVertical";
	
	// Mirror Layer Vertically
	var mirrorNodeY = "mirrorNodeY";
	
	// Mirror Layer Horizontally
	var mirrorNodeX = "mirrorNodeX";
	
	// Mirror object vertically
	var object_transform_mirror_vertically = "object_transform_mirror_vertically";
	
	// Move down
	var movetool_move_down = "movetool-move-down";
	
	// Move down more
	var movetool_move_down_more = "movetool-move-down-more";
	
	// Move into next group
	var LayerGroupSwitcher_next = "LayerGroupSwitcher/next";
	
	// Move into previous group
	var LayerGroupSwitcher_previous = "LayerGroupSwitcher/previous";
	
	// Move Layer or Mask Down
	var move_layer_down = "move_layer_down";
	
	// Move Layer or Mask Up
	var move_layer_up = "move_layer_up";
	
	// Move left
	var movetool_move_left = "movetool-move-left";
	
	// Move left more
	var movetool_move_left_more = "movetool-move-left-more";
	
	// Move right
	var movetool_move_right = "movetool-move-right";
	
	// Move right more
	var movetool_move_right_more = "movetool-move-right-more";
	
	// Move to Canvas Center X
	var mirrorX_moveToCenter = "mirrorX-moveToCenter";
	
	// Move to Canvas Center Y
	var mirrorY_moveToCenter = "mirrorY-moveToCenter";
	
	// Move up
	var movetool_move_up = "movetool-move-up";
	
	// Move up more
	var movetool_move_up_more = "movetool-move-up-more";
	
	// Next
	var windows_next = "windows_next";
	
	// Next Favourite Preset
	var next_favorite_preset = "next_favorite_preset";
	
	// Move to next frame
	var next_frame = "next_frame";
	
	// Open a document which was recently opened
	var file_open_recent = "file_open_recent";
	
	// Open existing Document as Untitled Document
	var file_import_file = "file_import_file";
	
	// Opens a file browser at the location Krita saves resources such as brushes to.
	var open_resources_directory = "open_resources_directory";
	
	// Paste at cursor
	var paste_at = "paste_at";
	
	// Paste as Reference Image
	var paste_as_reference = "paste_as_reference";
	
	// Paste columns from clipboard
	var paste_columns_from_clipboard = "paste_columns_from_clipboard";
	
	// Paste frames from clipboard
	var paste_frames_from_clipboard = "paste_frames_from_clipboard";
	
	// Paste into New Image
	var paste_new = "paste_new";
	
	// Paste layer from clipboard
	var paste_layer_from_clipboard = "paste_layer_from_clipboard";
	
	// Phong Bumpmap
	var krita_filter_phongbumpmap = "krita_filter_phongbumpmap";
	
	// If checked, layer becomes pinned to the timeline, making it visible even when inactive.
	var pin_to_timeline = "pin_to_timeline";
	
	// Play / pause animation
	var toggle_playback = "toggle_playback";
	
	// Posterize
	var krita_filter_posterize = "krita_filter_posterize";
	
	// Preserve Alpha
	var preserve_alpha = "preserve_alpha";
	
	// Previous Favourite Preset
	var previous_favorite_preset = "previous_favorite_preset";
	
	// Move to previous frame
	var previous_frame = "previous_frame";
	
	// Group selected layers and add a layer with clipped alpha channel
	var create_quick_clipping_group = "create_quick_clipping_group";
	
	// Remove grouping of the layers or remove one layer out of the group
	var quick_ungroup = "quick_ungroup";
	
	// Reset Canvas Rotation
	var reset_canvas_rotation = "reset_canvas_rotation";
	
	// Resize Canvas
	var canvassize = "canvassize";
	
	// Random Pick
	var krita_filter_randompick = "krita_filter_randompick";
	
	// Reload Original Preset
	var reload_preset_action = "reload_preset_action";
	
	// Remove columns without moving anything around
	var remove_columns = "remove_columns";
	
	// Remove columns moving the tail of animation to the left
	var remove_columns_and_pull = "remove_columns_and_pull";
	
	// Remove keyframes moving the tail of animation to the left
	var remove_frames_and_pull = "remove_frames_and_pull";
	
	// Remove a hold column from the frame at the current position
	var remove_hold_column = "remove_hold_column";
	
	// Remove a hold frame after every keyframe
	var remove_hold_frame = "remove_hold_frame";
	
	// Remove keyframes without moving anything around
	var remove_frames = "remove_frames";
	
	// Remove N hold columns from the frame at the current position
	var remove_multiple_hold_columns = "remove_multiple_hold_columns";
	
	// Remove N hold frames after every keyframe
	var remove_multiple_hold_frames = "remove_multiple_hold_frames";
	
	// Remove point
	var pathpoint_remove = "pathpoint-remove";
	
	// Remove Selected Snapshot
	var remove_snapshot = "remove_snapshot";
	
	// Rename current layer
	var RenameCurrentLayer = "RenameCurrentLayer";
	
	// Render Animation to GIF, Image Sequence or Video
	var render_animation = "render_animation";
	
	// Reset Foreground and Background Color
	var reset_fg_bg = "reset_fg_bg";
	
	// Reset object transformations
	var object_transform_reset = "object_transform_reset";
	
	// Rotate Canvas Right
	var rotate_canvas_right = "rotate_canvas_right";
	
	// Rotate Image 90° to the Right
	var rotateImageCW90 = "rotateImageCW90";
	
	// Rotate Layer 90° to the Right
	var rotateLayerCW90 = "rotateLayerCW90";
	
	// Rotate object 180°
	var object_transform_rotate_180 = "object_transform_rotate_180";
	
	// Rotate object 90° counterclockwise
	var object_transform_rotate_90_ccw = "object_transform_rotate_90_ccw";
	
	// Rotate object 90° clockwise
	var object_transform_rotate_90_cw = "object_transform_rotate_90_cw";
	
	// Rotate All Layers 90° to the Right
	var rotateAllLayersCW90 = "rotateAllLayersCW90";
	
	// Rotate All Layers 180°
	var rotateAllLayers180 = "rotateAllLayers180";
	
	// Rotate All Layers 90° to the Left
	var rotateAllLayersCCW90 = "rotateAllLayersCCW90";
	
	// Rotate Canvas Left
	var rotate_canvas_left = "rotate_canvas_left";
	
	// Rotate Image 180°
	var rotateImage180 = "rotateImage180";
	
	// Rotate Image 90° to the Left
	var rotateImageCCW90 = "rotateImageCCW90";
	
	// Rotate Layer 180°
	var rotateLayer180 = "rotateLayer180";
	
	// Rotate Layer 90° to the Left
	var rotateLayerCCW90 = "rotateLayerCCW90";
	
	// Rulers Track Pointer
	var rulers_track_mouse = "rulers_track_mouse";
	
	// Select from Color Range
	var colorrange = "colorrange";
	
	// Open session manager
	var file_sessions = "file_sessions";
	
	// Show Painting Assistants
	var view_toggle_painting_assistants = "view_toggle_painting_assistants";
	
	// Shrink Selection
	var shrinkselection = "shrinkselection";
	
	// Smooth
	var smoothselection = "smoothselection";
	
	// Save document under a new name
	var file_save_as = "file_save_as";
	
	// Save Group Layers
	var save_groups_as_images = "save_groups_as_images";
	
	// Save Vector Layer as SVG
	var save_vector_node_to_svg = "save_vector_node_to_svg";
	
	// Save Incremental Backup
	var save_incremental_backup = "save_incremental_backup";
	
	// Save Incremental Version
	var save_incremental_version = "save_incremental_version";
	
	// Scale
	var selectionscale = "selectionscale";
	
	// Scale Layer to new Size
	var layersize = "layersize";
	
	// Scale All Layers to new Size
	var scaleAllLayers = "scaleAllLayers";
	
	// Scale Image To New Size
	var imagesize = "imagesize";
	
	// Segment to Curve
	var pathsegment_curve = "pathsegment-curve";
	
	// Segment to Line
	var pathsegment_line = "pathsegment-line";
	
	// Select All
	var select_all = "select_all";
	
	// Select Opaque
	var selectopaque = "selectopaque";
	
	// Select Behind Blending Mode
	var select_behind_blending_mode = "Select Behind Blending Mode";
	
	// Select Clear Blending Mode
	var select_clear_blending_mode = "Select Clear Blending Mode";
	
	// Select Color Blending Mode
	var select_color_blending_mode = "Select Color Blending Mode";
	
	// Select Color Burn Blending Mode
	var select_color_burn_blending_mode = "Select Color Burn Blending Mode";
	
	// Select Color Dodge Blending Mode
	var select_color_dodge_blending_mode = "Select Color Dodge Blending Mode";
	
	// Select Darken Blending Mode
	var select_darken_blending_mode = "Select Darken Blending Mode";
	
	// Select Difference Blending Mode
	var select_difference_blending_mode = "Select Difference Blending Mode";
	
	// Select Dissolve Blending Mode
	var select_dissolve_blending_mode = "Select Dissolve Blending Mode";
	
	// Select Exclusion Blending Mode
	var select_exclusion_blending_mode = "Select Exclusion Blending Mode";
	
	// Select Hard Light Blending Mode
	var select_hard_light_blending_mode = "Select Hard Light Blending Mode";
	
	// Select Hard Mix Blending Mode
	var select_hard_mix_blending_mode = "Select Hard Mix Blending Mode";
	
	// Select Hard Overlay Blending Mode
	var select_hard_overlay_blending_mode = "Select Hard Overlay Blending Mode";
	
	// Select Hue Blending Mode
	var select_hue_blending_mode = "Select Hue Blending Mode";
	
	// Select Lighten Blending Mode
	var select_lighten_blending_mode = "Select Lighten Blending Mode";
	
	// Select Linear Burn Blending Mode
	var select_linear_burn_blending_mode = "Select Linear Burn Blending Mode";
	
	// Select Linear Dodge Blending Mode
	var select_linear_dodge_blending_mode = "Select Linear Dodge Blending Mode";
	
	// Select Linear Light Blending Mode
	var select_linear_light_blending_mode = "Select Linear Light Blending Mode";
	
	// Select Luminosity Blending Mode
	var select_luminosity_blending_mode = "Select Luminosity Blending Mode";
	
	// Select Multiply Blending Mode
	var select_multiply_blending_mode = "Select Multiply Blending Mode";
	
	// Select Normal Blending Mode
	var select_normal_blending_mode = "Select Normal Blending Mode";
	
	// Select Opaque (Add)
	var selectopaque_add = "selectopaque_add";
	
	// Select Opaque (Intersect)
	var selectopaque_intersect = "selectopaque_intersect";
	
	// Select Opaque (Subtract)
	var selectopaque_subtract = "selectopaque_subtract";
	
	// Select Overlay Blending Mode
	var select_overlay_blending_mode = "Select Overlay Blending Mode";
	
	// Select Pin Light Blending Mode
	var select_pin_light_blending_mode = "Select Pin Light Blending Mode";
	
	// Select Saturation Blending Mode
	var select_saturation_blending_mode = "Select Saturation Blending Mode";
	
	// Select Screen Blending Mode
	var select_screen_blending_mode = "Select Screen Blending Mode";
	
	// Select Soft Light Blending Mode
	var select_soft_light_blending_mode = "Select Soft Light Blending Mode";
	
	// Select Vivid Light Blending Mode
	var select_vivid_light_blending_mode = "Select Vivid Light Blending Mode";
	
	// Selection Mode: Add
	var selection_tool_mode_add = "selection_tool_mode_add";
	
	// Selection Mode: Intersect
	var selection_tool_mode_intersect = "selection_tool_mode_intersect";
	
	// Selection Mode: Replace
	var selection_tool_mode_replace = "selection_tool_mode_replace";
	
	// Selection Mode: Subtract
	var selection_tool_mode_subtract = "selection_tool_mode_subtract";
	
	// Send to Back
	var object_order_back = "object_order_back";
	
	// Separate Image
	var separate = "separate";
	
	// Set the source for the selected clone layer(s).
	var set_copy_from = "set-copy-from";
	
	// Set End Time
	var set_end_time = "set_end_time";
	
	// Set eraser mode
	var erase_action = "erase_action";
	
	// Set Start Time
	var set_start_time = "set_start_time";
	
	// Shift brush color hue clockwise
	var shift_brush_color_clockwise = "shift_brush_color_clockwise";
	
	// Shift brush color hue counter-clockwise
	var shift_brush_color_counter_clockwise = "shift_brush_color_counter_clockwise";
	
	// Show Assistant Previews
	var view_toggle_assistant_previews = "view_toggle_assistant_previews";
	
	// Show Grid
	var view_grid = "view_grid";
	
	// Show Rulers
	var view_ruler = "view_ruler";
	
	// Show Brush Editor
	var show_brush_editor = "show_brush_editor";
	
	// Show Brush Presets
	var show_brush_presets = "show_brush_presets";
	
	// Show absolute coordinates and offset while move action
	var movetool_show_coordinates = "movetool-show-coordinates";
	
	// Show or hide guides
	var view_show_guides = "view_show_guides";
	
	// Show Pixel Grid
	var view_pixel_grid = "view_pixel_grid";
	
	// Show Reference Images
	var view_toggle_reference_images = "view_toggle_reference_images";
	
	// Show Snap Options Popup
	var show_snap_options_popup = "show_snap_options_popup";
	
	// Show or hide the status bar
	var showStatusBar = "showStatusBar";
	
	// Show system information for bug reports.
	var sysinfo = "sysinfo";
	
	// Smooth point
	var pathpoint_smooth = "pathpoint-smooth";
	
	// Snap Image Bounds
	var view_snap_image_bounds = "view_snap_image_bounds";
	
	// Snap Bounding Box
	var view_snap_bounding_box = "view_snap_bounding_box";
	
	// Snap Extension
	var view_snap_extension = "view_snap_extension";
	
	// Snap Intersection
	var view_snap_intersection = "view_snap_intersection";
	
	// Snap Node
	var view_snap_node = "view_snap_node";
	
	// Snap Orthogonal
	var view_snap_orthogonal = "view_snap_orthogonal";
	
	// Snap Pixel
	var view_snap_to_pixel = "view_snap_to_pixel";
	
	// Snap To Grid
	var view_snap_to_grid = "view_snap_to_grid";
	
	// Snap Image Center
	var view_snap_image_center = "view_snap_image_center";
	
	// Turns on Soft Proofing
	var softProof = "softProof";
	
	// Split objects with multiple subpaths into multiple objects
	var object_split = "object_split";
	
	// Styles
	var style_menu = "style_menu";
	
	// Stop animation
	var stop_playback = "stop_playback";
	
	// Stroke selected shapes
	var stroke_shapes = "stroke_shapes";
	
	// Stroke selection
	var stroke_selection = "stroke_selection";
	
	// Subtract multiple objects from the first selected one
	var object_subtract = "object_subtract";
	
	// Swap Foreground and Background Color
	var toggle_fg_bg = "toggle_fg_bg";
	
	// Switch Application Language
	var switch_application_language = "switch_application_language";
	
	// Switch to Previous Preset
	var previous_preset = "previous_preset";
	
	// Switch to selected snapshot
	var switchto_snapshot = "switchto_snapshot";
	
	// Symmetric Point
	var pathpoint_symmetric = "pathpoint-symmetric";
	
	// Assign ten scripts to ten shortcuts.
	var ten_scripts = "ten_scripts";
	
	// to Filter Mask
	var convert_to_filter_mask = "convert_to_filter_mask";
	
	// to Paint Layer
	var convert_to_paint_layer = "convert_to_paint_layer";
	
	// to Selection Mask
	var convert_to_selection_mask = "convert_to_selection_mask";
	
	// to Transparency Mask
	var convert_to_transparency_mask = "convert_to_transparency_mask";
	
	// Saves out the layers into a new image and then references that image.
	var convert_to_file_layer = "convert_to_file_layer";
	
	// To Path
	var convert_to_path = "convert-to-path";
	
	// Toggle layer alpha
	var toggle_layer_alpha_lock = "toggle_layer_alpha_lock";
	
	// Toggle layer visibility
	var toggle_layer_visibility = "toggle_layer_visibility";
	
	// Toggle layer alpha inheritance
	var toggle_layer_inherit_alpha = "toggle_layer_inherit_alpha";
	
	// Toggle onion skin
	var toggle_onion_skin = "toggle_onion_skin";
	
	// Toggle Snap to Assistants
	var toggle_assistant = "toggle_assistant";
	
	// Toggle Tablet Debugger
	var tablet_debugger = "tablet_debugger";
	
	// Trim to Current Layer
	var resizeimagetolayer = "resizeimagetolayer";
	
	// Trim to Selection
	var resizeimagetoselection = "resizeimagetoselection";
	
	// Undo Polygon Selection Points
	var undo_polygon_selection = "undo_polygon_selection";
	
	// Ungroup
	var object_ungroup = "object_ungroup";
	
	// Create boolean union of multiple objects
	var object_unite = "object_unite";
	
	// Update Playback Range
	var update_playback_range = "update_playback_range";
	
	// Use multiple of 2 for pixel scale
	var ruler_pixel_multiple2 = "ruler_pixel_multiple2";
	
	// Use Pen Pressure
	var disable_pressure = "disable_pressure";
	
	// Vertical Mirror Tool
	var vmirror_action = "vmirror_action";
	
	// Vertically Center
	var object_align_vertical_center = "object_align_vertical_center";
	
	// Workspaces
	var workspaces = "workspaces";
	
	// Zoom In
	var view_zoom_in = "view_zoom_in";
	
	// Zoom Out
	var view_zoom_out = "view_zoom_out";


}