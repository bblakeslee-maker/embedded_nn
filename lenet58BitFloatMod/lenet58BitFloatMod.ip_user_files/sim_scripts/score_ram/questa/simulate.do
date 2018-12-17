onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib score_ram_opt

do {wave.do}

view wave
view structure
view signals

do {score_ram.udo}

run -all

quit -force
