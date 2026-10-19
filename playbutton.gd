extends Button

	
func _on_quit_processed():
	get_tree().quit()


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://MainMap.tscn")
