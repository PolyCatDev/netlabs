extends Node3D

@export var net: Array[PackedScene] = []

var xr_interface: XRInterface

func _ready():
	xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		print("OpenXR initialized successfully")

		# Turn off v-sync!
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)

		# Change our main viewport to output to the HMD
		get_viewport().use_xr = true
	else:
		print("OpenXR not initialized, please check if your headset is connected")
		
	Global.current_scene.connect(spawn_objects)

func spawn_objects(slide):
	if slide > 0:
		var playnet = net[slide].instantiate()
		playnet.position = Vector3(0.0, 1.065, -1.8)
		playnet.rotation.y = deg_to_rad(-90) #-1.57
		playnet.scale =  Vector3(0.8, 0.8, 0.8)
		add_child(playnet)
	
