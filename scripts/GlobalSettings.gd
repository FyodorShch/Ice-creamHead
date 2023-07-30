extends Node

func update_master_vol(idx, vol):
	AudioServer.set_bus_volume_db(idx, vol)
