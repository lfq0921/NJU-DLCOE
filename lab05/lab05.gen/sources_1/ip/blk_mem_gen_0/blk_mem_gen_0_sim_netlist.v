// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Oct 26 17:38:27 2022
// Host        : LAPTOP-F8OKT164 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               h:/DigitalLab/lab05/lab05.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20528)
`pragma protect data_block
+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
ccjISIaRvdk=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
