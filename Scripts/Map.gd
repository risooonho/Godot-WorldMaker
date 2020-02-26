extends Node2D

signal map_generated
signal node_action(action,data)

export(Resource) var node
export(Resource) var continent

var creation_thread

var state = "none"

var nodes = []
var nodes_2 = []
var nodes_3 = []
var nodes_4 = []
var continents_array = []

var node_scale = 8
var rng = RandomNumberGenerator.new()
var map_generated = false

var continents
var sea_level = 9
var width = 128
var height = 80

func _ready():
	rng.randomize()

func _process(delta):
	match state:
		"start generating":
			creation_thread = Thread.new()
			creation_thread.start(self, "_creation")
			state = "generating"
			
func get_quarter(quarter):
	match quarter:
		1: return nodes
		2: return nodes_2
		3: return nodes_3
		4: return nodes_4

func get_sea_level():
	return sea_level
	
func get_node_info(nodeX,nodeY):
	if map_generated:
		var quarter
		if nodeX < width/2 and nodeY < height/2-1:
			quarter = get_quarter(1)
		elif nodeX >= width/2 and nodeY < height/2-1:
			nodeX = nodeX - width/2
			quarter = get_quarter(2)
		elif nodeX < width/2 and nodeY >= height/2-1:
			nodeY = nodeY - (height/2)
			quarter = get_quarter(3)
		else:
			nodeX = nodeX - width/2
			nodeY = nodeY - height/2
			quarter = get_quarter(4)
		var row = quarter[nodeX]
		if nodeY+1 <= row.size():
			return row[nodeY].get_info()
		else:
			return 0
	else:
		return 0
			
func make_quarter(imod,jmod,quarter,nodescale):
	var quarter_nodes = []
	for i in range(width/2):
		var slice = []
		for j in range(height/2):
			var elevation = rng.randf_range(0,2)
			var new_node = node.instance()
			add_child(new_node)
			new_node.init(i+imod,j+jmod,nodescale,quarter,elevation)
			connect('node_action', new_node, '_on_node_action')
			slice.append(new_node)
		quarter_nodes.append(slice)
	return quarter_nodes
	
func make_continents():
	continents = get_parent().get_continent_amount()
	for i in range(continents):
		var source = find_empty(i)
		var new_continent = continent.instance()
		add_child(new_continent)
		new_continent.init(i,source)
		continents_array.append(new_continent)
	var spreading = true
	while spreading:
		spreading = false
		for continent in continents_array:
			if continent.spread():
				spreading = true
	for continent in continents_array:
			continent.set_height()
	emit_signal("node_action","set_conflictzone","none")
	
func find_empty(i):
	while true:
		var quarter = rng.randi_range(1,4)
		var a = rng.randi_range(0,width/2-1)
		var b = rng.randi_range(0,height/2-1)
		var row 
		match quarter:
			1: row = nodes[a]
			2: row = nodes_2[a]
			3: row = nodes_3[a]
			4: row = nodes_4[a]
		var node = row[b]
		if node.continent == null:
			node.set_continent(i)
			return node

func smooth_node_values(target,top_value):
	for i in range(0,top_value):
		var min_ele = top_value-i-0.5
		var max_ele = top_value-i+0.5
		emit_signal("node_action",target,[min_ele,max_ele])

func color_nodes(mode):
	emit_signal("node_action","change_color_mode",mode)

func toggle_shadows(on):
	emit_signal("node_action", "toggle_shadows", on)

func make_geology():
	smooth_node_values("smooth_elevation_differences",30)
	for i in range(3):
		emit_signal("node_action","erosion","none")
	for i in range(5):
		emit_signal("node_action","water_erosion","none")
	emit_signal("node_action","erosion","none")
	emit_signal("node_action", "set_ground_level","none")

func make_climate():
	emit_signal("node_action","set_sea_rainfall","none")
	emit_signal("node_action","set_mountain_rainfall","none")
	emit_signal("node_action","set_winds","none")
	smooth_node_values("set_wind_rainfall",20)
	smooth_node_values("spread_rainfall",12)
	emit_signal("node_action","set_basic_temperature","none")
	smooth_node_values("set_wind_temperature",7)
	emit_signal("node_action", "set_climate", "none")

func make_nodes():
	nodes = make_quarter(0,0,1,node_scale)
	nodes_2 = make_quarter((width/2),0,2,node_scale)
	nodes_3 = make_quarter(0,(height/2),3,node_scale)
	nodes_4 = make_quarter((width/2),(height/2),4,node_scale)
	
func _on_generate_button_pressed():
	if map_generated: get_tree().reload_current_scene()
	elif state == "none": state = "start generating"
	
func _creation(userdata):
	get_parent().set_info_label("Building Map Nodes")
	make_nodes()
	emit_signal("node_action","find_neighbours","none")
	get_parent().set_info_label("Making Continents")
	make_continents()
	color_nodes("continent")
	get_parent().set_info_label("Making Geology")
	make_geology()
	get_parent().set_info_label("Making Climate")
	color_nodes("sea")
	make_climate()
	get_parent().set_info_label("")
	color_nodes("satellite")
	get_parent().view_mode()
	map_generated = true
	state = "none"
	emit_signal("map_generated")

func _exit_tree():
	creation_thread.wait_to_finish()

func _on_color_mode_button_pressed(mode):
	color_nodes(mode)
	$guide.view(mode)
	
func _on_smooth_button_pressed():
	emit_signal("node_action","erosion","none")
	color_nodes("elevation")
	
func _on_smooth_ele_button_pressed():
	smooth_node_values("smooth_elevation_differences",30)
	color_nodes("elevation")
	
func _on_water_erosion_button_pressed():
	emit_signal("node_action","water_erosion","none")
	color_nodes("sea")
	
func _on_apply_settings_button_pressed():
	sea_level = get_parent().get_sea_level()
	emit_signal("node_action", "set_ground_level","none")
	color_nodes("sea")

func _on_size_button_pressed(size):
	match size:
		"small":
			width = 80
			height = 50
		"medium":
			width = 128
			height = 80
		"large":
			width = 192
			height = 120

func _on_Wind_mode_button_pressed():
	emit_signal("node_action","show_wind","none")
