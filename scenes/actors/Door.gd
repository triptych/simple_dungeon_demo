extends Area

var opening = false

func _ready():
	set_fixed_process(true)
	pass

func _fixed_process(delta):
	if(get_overlapping_areas().size() > 0) and opening == false:
		if get_node("/root/global").player_keys > 0:
			opening = true
			get_node("/root/global").player_keys -= 1
			get_node("AnimationPlayer").play("open")


