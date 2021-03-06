extends VBoxContainer

func _on_cursor_node_info(info, X, Y):
	if typeof(info) == TYPE_DICTIONARY:
		$climate_text.text = str(info["climate"])
		var height = info["ground_level"]*300
		$nodeheight/height_number.text = str(stepify(height,1))
		$nodetemperature/temperature_number.text = str(stepify(info["temperature"],0.1))
		$noderainfall/rainfall_number.text = str(stepify(info["rainfall"],0.1))
		$nodeXY/x_number.text = str(X)
		$nodeXY/y_number.text = str(Y)
	else:
		$climate_text.text = "none"
		var height = 0
		$nodeheight/height_number.text = str(stepify(height,1))
		$nodetemperature/temperature_number.text = "0"
		$noderainfall/rainfall_number.text = "0"
		$nodeXY/x_number.text = "-"
		$nodeXY/y_number.text = "-"
		
func _on_Map_map_generated():
	show()
