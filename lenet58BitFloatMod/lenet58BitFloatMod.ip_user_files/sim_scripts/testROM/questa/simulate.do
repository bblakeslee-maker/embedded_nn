onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib testROM_opt

do {wave.do}

view wave
view structure
view signals

do {testROM.udo}

run -all

quit -force
