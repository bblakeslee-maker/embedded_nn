onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib imageRAM_opt

do {wave.do}

view wave
view structure
view signals

do {imageRAM.udo}

run -all

quit -force
