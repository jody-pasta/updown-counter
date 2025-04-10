# Up/Down Counter (4bit)

## ✔ Description
4bit up/down counter with enable and synchronous reset.  
Tested via Icarus Verilog + GTKWave.

## 📘 Features
- Up/down mode switch
- Enable control
- Sync reset

## 💻 How to simulate

```bash
iverilog -o sim.out tb_updown_counter.v updown_counter.v
vvp sim.out
gtkwave counter.vcd
