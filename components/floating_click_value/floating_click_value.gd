extends Marker2D

@export var value: float

func _ready():
	$Label.text = '+' + str(value)
	$AnimationPlayer.play("default")

func _on_animation_player_animation_finished(anim_name):
	queue_free()
