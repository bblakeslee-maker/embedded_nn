onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib lenetSynthMatlab_fixpt_0_opt

do {wave.do}

view wave
view structure
view signals

do {lenetSynthMatlab_fixpt_0.udo}

run -all

quit -force
