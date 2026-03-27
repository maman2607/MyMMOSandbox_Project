extends CharacterBody2D

@export var speed := 200.0
@export var jump_force := -400.0
@export var gravity := 900.0

func _physics_process(delta):
    var velocity = self.velocity

    # Horizontal movement
    var direction = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
    velocity.x = direction * speed

    # Apply gravity
    if not is_on_floor():
        velocity.y += gravity * delta

    # Jump
    if Input.is_action_just_pressed("ui_accept") and is_on_floor():
        velocity.y = jump_force

    self.velocity = velocity
    move_and_slide()
