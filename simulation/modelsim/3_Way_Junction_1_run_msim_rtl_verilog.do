transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/HP/Desktop/Sem\ 3/1_Electronic\ Cirucits\ and\ Analysis/T-Junction-Traffic-Light-System {C:/Users/HP/Desktop/Sem 3/1_Electronic Cirucits and Analysis/T-Junction-Traffic-Light-System/traffic_controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/HP/Desktop/Sem\ 3/1_Electronic\ Cirucits\ and\ Analysis/T-Junction-Traffic-Light-System {C:/Users/HP/Desktop/Sem 3/1_Electronic Cirucits and Analysis/T-Junction-Traffic-Light-System/tb_traffic_controller.v}

