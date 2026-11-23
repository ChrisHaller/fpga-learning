- yosys -p "read_verilog gate.v; synth_gowin -top top -json gate.son"                                                                       
- nextpnr-himbaechel --json gate.json --write gate_pnr.json --device GW2AR-LV18QN88C8/I7--vopt family=GW2A-18C --vopt cst=gate.cst --freq 27
- gowin_pack -d GW2A-18C -o gate.fs gate_pnr.json 

 - openFPGALoader -b tangnano20k gate.fs   



 https://github.com/yvesrob/6502-gate-by-gate/tree/main
 