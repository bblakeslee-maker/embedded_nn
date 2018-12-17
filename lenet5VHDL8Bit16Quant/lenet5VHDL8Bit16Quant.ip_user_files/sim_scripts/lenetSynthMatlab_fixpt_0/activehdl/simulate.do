onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+lenetSynthMatlab_fixpt_0 -L xil_defaultlib -L secureip -O5 xil_defaultlib.lenetSynthMatlab_fixpt_0

do {wave.do}

view wave
view structure

do {lenetSynthMatlab_fixpt_0.udo}

run -all

endsim

quit -force
