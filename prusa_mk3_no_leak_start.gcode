M862.3 P "[printer_model]" ; printer model check
M862.1 P[nozzle_diameter] ; nozzle diameter check
M115 U3.11.0 ; tell printer latest fw version
G90 ; use absolute coordinates
M83 ; extruder relative mode
M140 S[first_layer_bed_temperature] ; set bed temp
M104 S170 ; set extruder temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
G28 W ; home all without mesh bed level
G80 N7 ; mesh bed leveling 7x7
M104 S[first_layer_temperature] ; set extruder temp
M109 S[first_layer_temperature] ; wait for extruder temp
G1 Z0.2 F720
G1 Y-3 F1000 ; go outside print area
G92 E0
G1 X60 E9 F1000 ; intro line
G1 X100 E12.5 F1000 ; intro line
G92 E0
M221 S{if layer_height<0.075}100{else}95{endif}
