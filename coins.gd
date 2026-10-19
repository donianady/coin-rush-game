extends Area2D

@export var coin_value := 1
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D 
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D



func _ready():
	animated_sprite_2d.play("Ideal")
	body_entered.connect(_on_body_entered)
	
func _on_body_entered(body):
	if body.is_in_group("player"):
		GameManager.collected_coins += 1
		print("Coins:", GameManager.collected_coins)
		animated_sprite_2d.stop()
		audio_stream_player_2d.play()
		
		await audio_stream_player_2d.finished
		queue_free()
