extends Button

@export var upgrade_name: String
@export var upgrade_cost: int

func _ready():
	self.text = upgrade_name
	$UpgradeCost.text = str(upgrade_cost)


func _process(delta):
	_handle_disabled()


func _handle_disabled():
	var score = get_parent().get_parent().get_parent().get_score()
	self.disabled = score < upgrade_cost


func _on_pressed():
	get_parent().get_parent().get_parent().handle_upgrade(upgrade_name)
	queue_free()
