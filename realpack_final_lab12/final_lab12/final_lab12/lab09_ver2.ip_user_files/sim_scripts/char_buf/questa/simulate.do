onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib char_buf_opt

do {wave.do}

view wave
view structure
view signals

do {char_buf.udo}

run -all

quit -force
