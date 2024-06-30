transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/HP/Desktop/New\ folder {C:/Users/HP/Desktop/New folder/traffic_controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/HP/Desktop/New\ folder {C:/Users/HP/Desktop/New folder/tb_traffic_controller.v}

