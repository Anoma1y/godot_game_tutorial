extends AnimatedSprite

export(bool) var hideAfterDeath = true

func _ready():
	connect("animation_finished", self, "_on_animation_finished")
	play("Animate")

func _on_animation_finished():
	if hideAfterDeath:
		queue_free()
