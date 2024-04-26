extends Control

var store_item_preload = load("res://components/store_item/store_item.tscn")

var upgrades = {
	'click': 10,
	'farm': 100
}

func _ready():
	for item in upgrades.keys():
		var store_item = store_item_preload.instantiate()
		store_item.upgrade_name = item
		store_item.upgrade_cost = upgrades.get(item)
		$MarginContainer/VBoxContainer.add_child(store_item)

func get_score():
	return get_parent().get_parent().score

func handle_upgrade(upgrade_name):
	var upgrade_cost = upgrades.get(upgrade_name)
	get_parent().get_parent().remove_score.emit(upgrade_cost)

