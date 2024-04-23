// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Oct 18 19:58:38 2022
// Host        : DESKTOP-FKMFD8S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/CS/lab/lab05/lab05.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
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
  blk_mem_gen_1_blk_mem_gen_v8_4_5 U0
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
YK3//ZjlE9X+idUbJRih5rmv4cgQeegbUq4nbcrepOoCjJ7s0ek69Ro1CRlH6WVatOWinQu4UvWr
wPOVKYWCKaxN+RBw2qDd6wk2dB6hzRpEv0aIcYCjp2xlvsFXL4F+vb7zW17LEu2Tn17nVAT8TihF
jZzAb9WizEKP46QnTACelygXdCvNLRHXV46bcKS+dWKo4lf8uxFGd3LPHmnQBtfmxsOwmrbBkNmQ
oZA6RfcoaT8qhuftUwD0DzHuPVOyGv+bUDt6j+EIJvD/RqQWPWRI4M4spLcG+UXVMPMd6W1KuiJS
/DZWCOwL601XuQmQu9eWzqNSiOsCtzpiLgaDDmK8D2O/WCKPlpAsy2LXNPWwjtaoApmztit77Wxh
VUu7L5JMHfShVajJYMkeRXIH4JRqto0DnefccPGcTYWTQjwO0XTcHavDo+hyL/KUrt/fZ3bmjENE
GcTPnTxwe1R1B5LfjFg7MOM/CVpUzfjnku5OjqOWIGW4mkdwuADNPdfrjTp+k2dnXsyqndjYGXam
wVQgUIvRPNvWwDbLWVrE0gL0dtsXbcCbVLpGEKIPTKCe28GEawM6z+BYSvfsqtWIo8yloH75/4PU
hCeb+4IwxRaNuoBcA+brSYZid+fniTeRm0jxhxkgHqQVu0GcQBZhR7eotEBys/bfFvBOFjq/9g7u
HQ92RvxsOJXYv35lwpUXEsRZzr6zjcYUZEgcZ6nyPOBvNb0mDNzDUkU/ctugOLWin4+f7BS70zln
dnyA+rsaqpVWuxuF6/twrMSzFK4mVCXTh+p+nrRnJZFRxQZtcJ3mQlg52q/ulA5w4oHo116eo4Zh
W9qcYJNWDCxtTpEc3YGZ0gP1xZbdvenfDx5ilk/JxtxdbNJ5fOLKwOm1Dpv7ZE5XQsb02o/KZaKs
IorjW9pRe0cdDz5OAPe7YKLiBm8Eq3uB5Jvqt1g3J1XnQD+jpVn/hdraDsWK6HtKMA4hAgK9KmGz
IoLqi9v3RANzz+k547/ZXL0WVVFVonnihAiDEF8WXpjTdeoTmaiCSo2mYliU5RwNC4hu/gXw8pjZ
kebUXuFXx9OSxvoxafyOIZGON1qMS2D9j1soYCrdk2n6nG3IuHMrhZ47Bwgr05JUYcEdeV6ZtCeE
26tiuWtkvRl4ID9g51ZoIN+rnl2iLxQXXuPDx6L/O4wzdZu1Cou5UHyHBf/dMQCdvnjB5FzjgQDH
roZKd8DIIW9cEW7wZQEhe841IfcS82iWgdhB8cTRCkXHBJ7nq8aNkuZftC3Q80Y4WfGMx7QQ3VM+
gv2TJNUPZlpCOhvEmfjHWly+X0C1ZdzYXGZzuJ1/jRI2DSwosPUYNZ0LwNDmUNTCY9kfPZBe9dEs
mUegBmL3OzYv9i3iF8Ra0MYZfvQw1cpqGf1i1mx9cHY1c4tf/ywd0Spu060MXNeN9ADs0suRNjE0
ZMNxOe3Uy7fo3msgNCW9RKzX5jGLSqArsQY7JnSLQugYlOpKG+q25sflLGDB41nbjzWzkyUZxUuh
Zk4m9oYreM7Zj2y1uVyMFDKbcCExQ39diUx2cMH33gIa29f818M5EHZZR1fii9ChOWifN8ZEC8Gx
hflBey6QfDoDcuFMivifxKw++/UBC5uJ+aXDWRV53G4ET2hP9KqU5auTWMTgR8Iyf+ibr0gv5coF
ncx1RWeu/NUFeCNQaIhG968nBhTszdwIvqvp35tXqVRUEvCL0+sTllDsKKGdOFKDFFg8ZIJIXyNm
InWtAjNLmYngth0F+rBqjcFMHzThlYk5O2zGqfsXEQo2O724C66Ff17IfYEoOeQSkSXj1z83dwy5
6MNZx5wM+g3/MvhSxP2GRIkM2PT+rVzKxa08g7iS778v21icbwve78yjlv1fh51bj91ZFRS/dRUp
mnIbtjGxa95c0pfBiVhBk7FqNoqoA7KGWdhFLGwtkktRgJuY9q6E8J0Qx7FcrVnFdoqDwT/mN/Uy
wE9P9hP4EGIM22T4c9Wl1NiBEqIw+ntYMWbeNpeZnbPwglHfAx4v2YEvD9KIfMb5KFRYhg8xUpUE
q7GHhJmt6zi5JFwfQwJiOgxZp4fuNWUkNEegSLnYiLpYNBOq1PVER16pqY4pXR/afTiQVJjR/ijg
SvBk6P7FdhqArjd/ugs9Dq9lSRCbpy8kEOErQkQAshTcueRcg0lbzvNDhsXwMvB0up593DjOeWzy
Y5N74W63oBWkEGp4jyZJnFzx4mbbIaj+8k9HulnLHKiT6kNG29VhR3R+IC1ZdNgBEWUYyO21eeb3
WiBWeUi3HH1tv16pxkcx8r6essnjktdR4TnDkd6vBn0y8NDZMXtaYivn9CWsZhdk32ImCKTtlDal
fuvRFR2xHEEn2E9DbSmH3isqrR0WewI2WeJ6Bh/ed3NuQHrp/LpeVz5qDcsA9Qh/nz7FyOtqFj6g
8KOs7Lgl9u6o1um70bjBMb/0x9QSvKYk/s+E2hxgujFCDTcQhERYlcpn8RXWpf1at28E7AVYQvVd
ObDWKSOKRokNtalelQV9yH7XPQiUksyaP0AqoZWh3S0ruPeSe1gwzHYZ1LIIP7iUy1J/j/o3Mgru
Kr6PTDkPMD5cNi+0XtzwaeyZP7V2ZEbZ0w1mso2MIMe9Ai+Ex1uAJUDz/CRQm6Fp4L/ahoV958JE
WDVC93RhGTtA3IkJ4w/Dj13qDYUHTUVdBicAXZzYFX7TXIqAuoxsuoRW6M2XJUIbTi71A3M6Y/Kt
hyIJskZ0zzOmKA2SSLnJeXOQlqbwJ49LmtluscrCpnhhjBg47xR1V+KJxfZSM0Tv4j+1/0mYxDMC
KhOWQQwyqaMvrNuNfrFZT3VN5wjGE/jnBbrMRrx7lh2+wESyFXqRkiwN3A1/vs/KTgepi8ruhaYo
nI1r2d9lNsTSI5U1L2JUU5Oap6tJlBWFbG5r1rhJApNehMa/VnscZbLofv+TAHfdafqqbXdcFB48
PN2DFGNlGOnjAaoNErchYDAFqv0pe8EuBRZVbHtIv+VlDYZKE42ukCsnvAABsMu5i2RexobSnKmP
oXEyU8DcIM6FfKzMxKSDdBIiW9XRzagFn7auhUWqSH17+KIkFBRhbKsY1x517BSHaoImJOzO+esP
8bq2MsPlxthUHEswpllBL7XVGeOPi4OMaVBcxw/sJqhUQO/M5UdZVDHVLbxe/jo6D7EZtwQ5vn/R
kTHS8sifvzdbOFDgFsA37eT9H99xQTwxW678IxZKv9BziEz+VeUPPRUsqWIjQnjK/vbe72Sw5UDA
Q52hNOx6lV/VPyr2MEIbDkiVuCXKfGvlrMT1ztpCpFhpQCUAn/owQWE7Rxg6c/Y0E9g71866O8ib
Z1Q/67Oup24fjzl5BPssif0NeVTXzBKWpdl3u/x2s9QUPFlHAFNCZfEYAxFjkrLEIpDSCeEgbk5J
2hJe3L6sRsKyMrscLXh82I7w4EEenIDjOInzZAr7tgGYOdrWWl7UxUQzVpZHfo7ih5TAoRnFN64R
ZRaNQ4SeyjNlRq5gUexD5uMl5eHPci4ghvoGoPfEgpdvC8oXpZyvTnFAhxkmtcGh7gkq2FxCp7m1
f1e7UMms2RI0U7ulLsGpV2tjnSu8ZkTosjZ0uIPw4ar6x7MW9sqXoLORU8V6RtQ2H/OV2W6x19pt
ArNw0M4QknG+ApR+/+pk70yUJenIgnc42/JvG0OKfvBfYqv0FjoSgO1ZmONNafAl0kfHDBx9Ztfd
mXvcL5gf8i5gISBllK6yIuJ30E8cjzSdvHHlla0xJxh88S8gCETbFZhuUM9B+fFAJBQxT8mScEpH
YRNyxwxgZXToSsBHyargajlvBryuI/uMXaj/k3lMXDLPH3wLmDU6vlHZFKsPghFL1Rt6SigjQTAU
um9fkJgrSZF7oCAp9Qin0CquC4m55TADWrAQanCPLcZm7KIMQco2ZpSpOXrV6XNWFMQzgQ/Bmp1U
O0x349J3SbisJoiy6BYngv+VbxiKOkPK3Wk0MV9Fk2/xsfWb48aU3UiSbA4rR6uCRV7rEsxC101k
Tlnm5MQQXifln6jVx5VLMOmez+2eSdq02dW/7jcmaPGjxJYbAe8lD6dOEJB3v6sL8KA0mcNOqoC8
rLMNVqXHv61ubeQRGneJVLfVdLxp1adBJYyuU8tkm4XZRZs8UJQthnjztcg2VUgNaQlzlOGR/n1+
xSunluQoCDMOEECvNcHj8d+R3yki5K/SfibkO0xaW0KgljZOV8vQcWf09p9k+LCqsD/2SSOQrUTG
g4c1vvHPBYkfhWAFKGlw7ciyuBmrnYeEU04hNworfNpnScWo0GfV95orSFIl9GpNrT+mjKau88/b
xpy7q9XvnQJa1z/WCy67M5Ln0XX7GMgV8Ivk0Ai5aOnITm/zWxEIXBnJs0uSE0zZ8MmI2DKBH55V
c4ye3Gr/iajGPc7fzWAX0FRiKdjIa39GmJp/KO5mk9ebi3QaKRwTDZG2rVKTrtkA5VKH/RI9WIwU
s31XL28SlueVpWLkRuusVyQoeyIr29C3qYRiG/aBWu92j2DZU8Ot7FbZ5cX8lk95NrA73srfhT5W
8q0UfF2/0qAon0daud3W7kbcGInBC3sQHoKqAmIGYJQCkYmCL5mOmq/EgqKfrMU9K75VuCEOUoFG
YwL6mScWZzgggBW3x98fPo3Cgu6XIu2uA2tQJ5MNx+3Rw/4adTlQZsAAned2D44lT6y+0kToPPwd
PWJHugZ7t6mu1RO/b+GMhclrlJB98dAnbKjppVZy5HO2ZQC1aTG1qaRsiOPoc8ydSa46a69N8z7m
VCOWCCR0aqh6Etvlvpm7LdBpfFahzz0hR53uQHslj+7XzMD6cRHNXYlNABWh8ZpEBrJZvtv4t1u8
TOgFwseindtblINe5qeLR7391V2esHjtl3k9LAlmiAyuIPrRnqDr1xFGGj7ays7JHxv4h1PW5wD+
9MfSuYAJfetOu/IQoj+eDBolDRYNCOPe8arptMqi5nyj1CMTBzwFBYs0yQwCkioZ2pPKP3KJ8jTJ
tNdMky7L8C1+F/wp9rIxQdmzgHMxaYXhMiMowSaSSTEXWbW2MlMCMR+PCHdNHdLzwOqBFZJiSSrL
CCSAKzkzHNh0S7laWTh1y5+L90043JP+nU3fk74wV8ChdDaN94JRdJHX4kjP065qh+oBXDp/KkQG
cqgFbZOJYslkTndI9gzHzqkT+QV26QW8rPR96PA1VkIWAxPsD64AUg1dBk8ReYr13rhgmF6hWlwH
8Nm7EydBveNEbGCR467qq+C8ti3rZFRH5tw+iwtqU767T+OMkiSpuOwoDkRHMwqY+kCgPWuV4m0D
huTaHCCJc8+tONT4xTs3dlstNm+TlPSEqlyQyNgm90CEUn9hgx10J2HWsPPNONsKH0b96WCqKdMW
S1xG45cISYQbWjfrfW5+75cNRT2GhfXydQOwCQnIETYuUD52B9m51u8LUMMlur47IoOtdpipdNz+
V3Nz25SngDrceeDhGmCTNbJILjdU6d7w9enXcpFs7wkWsLqYRqFpZhqqpuRJ+msYGmanC8/R4Jt3
sWHN0NRQdS9sShKL8RGuLswMSLTfed2CKbE17/CTiJ3YdFCeHBZ7H2nGQRKKCb24IBNMgO+3cikD
MjKnGbuKSgJLLZRhA3Up4Gz3lNwpLGe0dCRPj0sMruc9ktaDVhjujQV1gHCUdyv+thWNH9eIMZv8
Niw0Tyj2sJv72k2UlsbKna2MdaCB4yraLvJ3jmP5wqnTEwuT90a+EPxaJnxbK5ISXVHmxfe8HwxU
/TZof8ZtL2QeD5pLsIWWOPEWhvmE9iueDczve4Y8VmyrNuB0PEzHMPHG3zz3ZgKoa8+Ip8Ubhi1E
D/i2bLyjrATaE2PD5QoUjlrXIhqbpDt0zFKfHDNsIkT+nitv4KmaaU3iTumZmUSJU5FI6urmQqs1
MoU+WA1FnBfFANGuw9SwASnah6fYdeCGji+Tk6Ue3SGQyyb1hSRUGR9SB0rYIAlINjx0C0d9iZ4d
mZkP2O7SS+3PYsChU5mO4EsZrY+1A+Byo/q3qId83XDfOOTWnbSdQqOtlDhpFIjFFUfGAPQ0xuIG
oNBInECLs9wJYuggHYLg90SxYCkeBOw9G36kmJI+utLEqMD8WuITFhlZT+m+BkzhXrf2gXv2WhZ4
mNeaXKLLjQA4PdRYMjKgCtqvcrZqebWXdSHqzvN0r0UBN79o84vHLto1zWD6lXqWa2EtffRw0Mvs
lvsUEyR7ZdFYlu68ATW6nKMSP9trxLcbZFEjkcGTCkyNQPDwQyiHvV+8KVbRGe4C2+EVKutiHjyg
wLs3tt7wG2EF77hq1HA/IyoMu/+y8USGxZ3QECUdxArd6H42qLoAPZ9kr8v26LUI5/H3oyt9Psty
1dB8zMOjTAKroBI+IXvZHw50IOq3BB4hvX967v3SO6Gpbp/Rvl3O3A+svxkw9v0dtEtfTovzRBIO
dquuE9PMWvrUgHtfB4U1/0TUH9VGUEmE1pYIin7YpEK48iusezK8TKjXpSxJQs8Jam4ShCvy9HVW
FMh3KYbm7znmgVbG6TMdXVfAGBVZ3I9R+JhnQ8ruQ9qlWB72qlDmmubxB5AXl/37SEp3PDOluHa3
kjiUeSkCCLmOVwbgmcKvDEDJfJq2EPYroliIxYnrcnSn39++Kk6PaQut1XH8w0kKYCZajtGwaRVs
lx05HTLhV7xTLkdzFT04Dju9WXJC5ZXFNj/WCBcQKPhXwRXzaB/u5ZDHxQi9QxK6bwZru/frepyM
4nzC3TO2AFZSq01t9fCrcs5g9joGSpY+JCoMRkNS4+WezA8K/+6a4TSBQsK7n+KCsTLYAmuylO1i
JHmc91nO8GbhXkw1TqBfOKFehUPbpku0UelEYaVR34YUOPTole3nD1Q3yVfjeS9nHC16HFKS/5F9
rQ71Y+qJSnxjVZw+tci5I4R+Ptgs/cl40W47CDWdCyGp6U/FhmftFquhNRV1/WUchkHH4PHuKDxN
AEyAJROOz9Y4JycPqosqQf+95FeeIeuKcXPCEeADctPcVzuetD/FP+4Gku2hsTlaUxrSW9/QnHK6
mD0NDuDClJGnpqkZeDezWD4UY+5VocGde/pA8BmXLwuFAnbgBTMn2ufiMHaOXjUoi3akbe3mlbjn
3bY1QQssOywVRVZkvnRqQj2NRMWQ2FiCu7nTg4SYT3wF3ruOGrm65mXlPK30pSbgqkVMvvhb/IfJ
36g8mqPgRESjPDOiRvXLebM4vjDk95Pi7oMIkoP2BpCiD/P41WctwzFwNfr/zjuvqxNoTjOdBPig
CotFoZ1ZfeK4rjnX2asKZ6UckXx0jW08s+gZpZq0CRayv09sSJSxBriSesnRZkX9uf8PTyQBXo5E
ma784MWz7NjE+0yB82wy92k96bL6t3+oDNVxK2B66P8+z6zMgQTq5/zNCKY+bGfwUemgcmX8k+81
Wja4gADAZarvU8xxpqd3EImrgULqZ66r2a+KrTMge1bLUae2jidGKzZspZ5wF8EHewz8em9lS1Tm
CmT4eeU/EDvCgr1POPRxfRhDgb/RsxEp9laB01g4ucBgKF+cV1axz8xlG8QcKXOHGkkjcspMwN/q
lNWtr0RMa8Hel5hv+XxANtGcJR7rEKMljtlcEI82zNcnfxGztDzjy/L1dr2vZ69YMMfT6ePmSUpp
QrCDV2M1YOePr9y1roZRcomj7GA4XycWff6eWdWlmNvXYRVFngY5vNy48YcqTnh8FCtCjDY/pvkp
7Bx2gVTCH6h1yqPTenwe/XENvG1DV3FLt9v8HOILLwv+K5KQ4Bso7Y0Trh0MyW79IBT45RMfDfjc
Hv78cPOBZYAjoVnaGCIHtlt4j/Zh3wzgI9So+fhuF7JE8rZ0ksOLmrdNwSfGdp2A/g3JC9xOh3gp
R87XBB6I+3KsD+P4rgatwpUoITbwuUsjRK/R5Jk29TjQF3+v55v2AeN7GQUqZIvWMkYZ3s+rqHK+
bhK3WS1HewOim5O/l2+OHjt5NyX21UCOw9NnoVFNLpMJWwFI34nKu4Jz0fqAjMe4piM+0FnDwVFC
GvX5YZZ0yApnlIe5OO63bdg2kI3la9admSkY2P+34S9aZSNoWkpigQ/4MsD/8Hlz7kil+IPodjZ+
+yxsjmRORJbNg195HqtQ0osWJ/c3lNAFLAKR2QB0vx4pnLGRIZ7TIGiqg7FDGnuxIOi25Z5Y9lHC
zxzyoYbEBjUXjsP/71foIjQpf06irF4p/NyPWB2/DKOtcCSctp5TW48vBEDTgzwkNrJ8YuFJCL1X
FrgwLSBVtynnXwFn2nF6JZ6jANrQEGPLErNy8J4Lxmcaa2r8vwS9EKtx2Qio4wXnuTPWaIONMQpb
p0JN7dHqbydAug/4dpfu2ZwFaRU5tuS3YzLySgfAs15zp0ack7XO4ZHUC2w4jv7IdyRuLlG3qLlj
FXzV4yiYi7GUhd4klhUTjY0GS3z8s5Pk1moPWuO5JqA0WXLnBf2PWOI97dn6qeW4eCjjumKN1XIl
AEu/0WgCegXj+ZrHGC6JBXmUxmUdU4yw9EnaMJB5iesvjgUm8kAeeu+HHHTubYEgBoeBEAsnUzMA
ThU61A3RrrDz2ydWYHz/7yrbRmNSFV9cE2d9nvZlht4r9+iQ3zHzhK+rFO5fwwHLGk2g0LnjJfqW
GFIIu3pUF8uGwp6PbWSBeYggvsmLTsg4sCy0MTtnInjQtxxDgOBnt1ZwwxJt1E4wP8N0HyO0+Ogt
1zw5mchIdyhTc1XIKdXFBfakiluWkPdoU91OauSxAG+RtOti6c1rv1l/QLun5TXV5ge6ykDEBByP
pYqZQ8tA42MMmjXQRNPsjfqHY3ExSafpJh39r8H4zXvQUkjG/4qTAO15/qQVeFXLc1QUS6NCuhJb
nnBJFaWIRbMxcnvUB+NEAvupVTEY0WaLWNvaevoQ5AxDBaPGl2vc8B2+G0X389tBRNiqDbFd5PtH
FyCdBqWwIyVyXlU1Gqetaj8ZjRgOrr7FVERdPxxGTlhuBad0u4lfrFesWgAdAtJ9MMi3hzrp79+w
DQEKGZEA9qqbhYa6KWpwUVvwUcsDPwnj8Ammk2U8n3mEMbyMbUeKWVLTB3J6mgmhTTFvK7qaLHmy
gNakEczwGht6RVD6IhogpQVsgSb4slhJNnsiNYv0XyVnLMapbRn6op88MRfBNvfj0YWR9w7+yQMe
F1TjH8DLOUXxxvHY3NxUiY9xHLiee4zHmV9XvvqPkHCYGLJ6JbcLIgI1ZQde36nAgoJwsw1OTX6/
zrhidLiUvQqUpKS65HHe9l5GoLojFJK5bT6kV7OhNdc8jIN6sXDzAED7QskTU43bQz1mBh6rnEYM
iKXG2kbhc2DVQlA8wNZiOOWIKG3U6y9Dm61uwASb4leZltMULeBs7XTq/B+iHz2Q0V2wzKD5DPYJ
3F1D2qNaBMcTChxuV64+IvJoQCwmEC5XWhOcaO5mhjXN1ClHcS8IVNUHbMNZ71nhfqXggRmK/KFF
SIdh1nANS+WDlxPnNyu/Gtry2PHzY4+g7n6DBzBOR4GY5J66/ZkHbVhsYAKmaT7XcVbY+GRNzn1e
rk/jnrsPbR3P/9fgDq5Lu6+GDjkEYRBxUP4g7iIwSavf2DoN4Cz8IFqPFC9B3RbdfdmHfB4nNIIP
N/nLjVhux8bF8ITaL5cZz2d1Z8bJll4TvuL8TXvGTqbDCFsWlszZn9j49yznVan7K0KX4rLrpJdF
cn7KHC7rGeIwxV0ZLAkUfufE8RVbkLT9wnMMdaSWta0df/o8a09n9wTtqXZdpcY6yIUZjTJJOHf0
Vg560JtrdGBvNGtSf5z14SFg1TI5AFi/T13ARBzN/QT5dCMmIWf+yFRNC2f42nKUjQtGNqcFF9wa
T5IMsokHBGpVdQEubMmA08rRQyYEvTXTj47RhAtblwkWtSMfOWUaJkDITXR8QK2D8UGX/BhxYvEU
aYQ6YWcYuoiyp5GFDmj+dHDW8XmxHsp1RGMwUCV6nyVvPuyYrmI0whG4yLErlZhx2/rEsKlpKPSy
MmlV6dj8jtvdFmIUlQji+EfFJ2/Q3tCYizqSxWOAUVviFl656stCwhcjyCe+rOxqoKVFr07oBJUe
MY2uWjKuIHIFchXQjk1RyJQZVgISOclgmDX0itIDJlrR7QmHOdhluC42n8hwYS+Y33+UAR+5/uUE
r4HKkVaJl+Up9HnJSGJxb8SfoDwZxkwAb16OOKY8sgF/1crNirt/T6FHWmBenHhSAJzRLfqXM0jW
L5DRH2ODQ9LOswFmdmCULojzi7EmJQJaRm9ln966HxjOhx85dl5f6BVrBvHoFgUUj9DsIRjoojLX
uKDNafCUSf9Zz5xu0ORk0DqZ4/SP3MYT+MfXZj8Fve+KorJfzOs7x0CtQsg4GAzj0o8uld4tN5yW
9rtcBDVE6hbLlFeNreitVv6xA9L4Waa2YvRcaLXQ5fxdHfCwJ3qtV7bHBI147M1aaRl7wXV32R7/
7Dcr6QdwD9G9NXSBcYIbFG4Ay8XkP6K50a58u2at8LJHC1krar7kjNGTw0loPfC5+s8RbOUICmMj
3zaoEYw6fztiM/NHwAItwSraRGbTXfDUi64sbuZr/tNl5sVzQ7cMtljrIlKnovVQ1NLX8CvXO15M
V5qT1ACdbXJpr/u26Gy6BBXJhkxqwjdl9CNFwo/eDeQtkUD/hFBXxuLHrwwR+s12bFI+zxWMO6NH
QEJkwPji0oruNll8GxN4uIqkVNVCKUziWZG/zBuFEDsV10E0lbAm1hYAd6ibtv3cuHWXQOMIg0q5
B3ZRyBoIBo+DuZZWPWKSakkT8XcnMpDB7kmjjH91Hqkw7MqkqBdV7Ddj1mFm22ZbLIutakv10wQP
cc6MQFUshIb3zj4Fnint81sbdwXOY+OYADR+qQlmbHxeurFPOJZPDseUlRHMelzyWs6XHlFvvJ3D
6jp4fChCuZMrcIYbvfLR1k1NiJTUXZ1Y4UMjlFHj9ChgP8cP2nol/Q7ueraI7celm+yoZyHEHb5S
FdnO/qdE4VPrDGYKsIYNjJkdgLE5NI4aykH2021P8WtC+1ehH/xhus6DuDDcXV1EDFWi5gScPxDS
pdvddP6epdGfRun15jdc6aA9wFGx3YQUHQDQDbvarF3ma/KNYVka7pXTOvj7a5TeFrJ4uieSADsi
onXfcm+JVduI90h0+XXWWX+BebhO52gkchOb9I9VSWXv2BhVQ6ttO6F6uy4uOS1O2PQzw4ze0tht
NTHxOVxFgja0sIQHqmIqE64VMyFeOsU4i6so/NdjA+6HKUN5+IgNvwCtghmccSQPnvE36R6B5hY6
5gGD0QJHEdHLRVTYsvU0Bc7lMbfou0fEpOF/y7p8ZaxT3qryojV34xi9xOS89eqVnSCGw+sFrxrP
qpcUj8lAv0OSwk5uTbpRLWC24tk4wQ3BOv4nCBYvM3ohPH1GLb1gptg1RN8G0CK5yVIBlu9LpGwl
40Pv+IKQ0jFct3uJRLpTDh31sY607XQgo9fTz0Hp7FTsaRI6uulQ34ydOaTvtAALESkdDqnJQYXQ
S+NkDuDikY8/niaP4NCm/RfXKtgZQFQ/odTDVf5HjCL1Z7LFkr5oQFxptZbHkPP+LaIj3C1fUmKm
bTcFgoxwo2u/tc1OkjmA1T5/GaoVaGqQdBWggzpuMNUWbwtinYgYVhB1YtqsFLR6flzxiBNvBTyY
JNRkR0lfLCE3rh5WBJIa0oB5q0bccNv/WldzlGvoE4MRMG9qaDBqU3I1UA+CTKbcAXXBjhqXWyC3
Hq1TY90VvzbO+i/8BGvM/hlSCXuTl9lwcG2wAJMFJAQcBcsZysR8mY0q8qRc8J/i8VxkO/t5yiEd
X+/402b93PiYYNW2EinEvnHBS88v2J2KtgUgW1kPa0QaAiQig3IpzqzBXhklI3pMh1NSFq1nbngV
VKwAjs8Z3CGKpj5JYkS8NkyB2uk46M8gtz9Ki6BQ2gwUuOoIYexqdtbulVpyDiBdr6eiTjndd2v2
+zvScua+B/rzOcphHcefIhTW4l/smog2XgJAv5XFIBe1HPmOroUOMYbUkGM2QZ2x9JBT/ExFv7hq
ghLhribFAMsfQeaOyw2iIAryH+m/vZto0tDHc/uEHBKNRhZ3aci1QH+49ZFqhBxVSvO2Y3kdbNZe
2YF3wpGsA8fildR3yj90lHp3mali7DL7CZPdpsNhW4GdNfiavJocLxrj/7ZYZrAXksudmZBw6jYS
oYgTZqQWrhlu+truPU4ISBe18ctPY7xUfez/Swl/lSsVKWfCLUS8RMsUmvudBDGxweE3wfigYIpY
TX4wGC8JbPFp7Baw4RyVm6mydx54M7GkBbB8QONHWeypG/2oNwh7Z7/nxkioyJ+lEerqTeEqtZF4
uKkJP0bIBAkTV+c+U3t25ZY+7BvOJEBk+APt0coWBimjT7nzvI2/8ggZMl2aU6HPjdMT5slc07RT
szqxBhyKUdWqsTKCUh/via7pjYNPdGxlxGXhKr+6M0XH3lQxGp67UIRslurPcuEPTQRUZT3o86Ql
yKSfMuqLR7o9zOPWEgjQyHtfIunPNbpe70OTbYS6eSOta/7h87BWVWurAoxtQ1muVYvHq0csb+aM
l5O7V0zPAcbqPxQVjXnDzhFqTiN2pkHKM6QC6bWQGC23HUXn9gQtqwvcv1t5NKFABnpYrSHgZyN8
Lp9dQs8rPHY47q/KM/DmxUBo2NEHxHKapeoKPJjzgef7CGKPL4gQ4mkRn1fMCa18Ok7oe+B16kvQ
8+w4ENcFEF+jwWftD9aioSoQyBsPuyVSKcTnM4L6tr3lyNKDs/kPsXSRb4SbxBDI3cEguzZQi+0u
mCCytal0OxWGvhC+9LGKPWmWYXWKGlOcVIzFwfmwcn3SCoq+LQ2wteCtqfczZNHXWY2IhlP2tPgI
kLnMZzfOR5OtIKQCNd5zBKmMpj/u4rRfWNwTiz71mFWdu7zw+jtOyDeUt/+cCEBAJcQfytF5TWfn
4/5b7sfWAxT9Bx7uSepmfYM/8Cb+nqrCsL6AAOUesW7WO+yGL44UzOR2I4CplUQUdOCPscJAhBHo
PwmyFNeZQX53/ZccpJnCyiMHq06A7LLFckskSu9Gwh882Uy3Cia9E/+2YIytCheV92NxyZ6hw406
lZy2fFs9otGzQ55oD6XPOVJn+KiDhVUkANHRsc8R3Wy0iZ/cBoe/+ZThmSd0NTrr/u2fJgyRxJbC
4VY1KrCDTLvNzE9kAqchDp8qN19xUTagWwQBWV9T9slFqA6ABdTPpICssqFgW2OKpUfwlGL00IDI
PzYDIKoiwN3CSI12+b6jTurxaX3AJ9uwcihhjgu8To28IFdR8+5sGPUyd9yDAoetuythiejtG/Vw
jHp9gjnl67W3rklBPBP5llH28B+J9wCiRMjlhcc5CEvGEwEAfUCvV7SS6PnoSAuZeNRuiXLV26sO
GF7nabv61BVmmmZn1cL8z4IuUrxugKzjd4E5D3hSoTwOl/uPqTZCfsjxG5/IEeNAWeB3YzUHs+UC
roU2fRO/ue1SkQtgg9vOAVtWTEe4dXzMkjfi2OI+FBizLh7ZA1LLopvJJfppYhRcrJViAMDqEyia
7vd3ufB+4cp9Vn+tLNnNZ259zZLdCejfFC261Jefl+Kefd4XrMUG2EiZYqFOSrQTZcw/Yw28q+ZU
ZWneiHuCu6Gv9TK+20/nOcVcDgXCYK+PvCns3wngYrh4ACFJ6+H/gfjy1Sc0Bbm8fviqqHvJblWr
xtb/F6Ya2d0lgMc9U81p9bjRlkF8TcUCQ8T6Bq6t1L7pFg45zD2dXL+T0Wf4Ga31YsbA3nhAqPvr
wueoR5hSmOE/QjHR5YCf6xl7M4HvFnoINdFKUnL1BWY9Awk09ykDjSn8iYI68c5UvNxx3tJffMg7
bTzgl+iuC9JvnXlVjMh8IeNBuCMsT3dLL5at7WSU5S2CkhAlzIT52SBQiYPpk5IaRzzWKYY3oP+k
aIfYWYyti7UGu2MLEpApSGlHOYczykcnMH3gm807a9FUcI3TorAUPiPLqmV1e7XMYYtalCjfraV1
RFFbwhXFPzgMdN9/sW+d+th+Ro2J/QIg9iAjuAQGZq4FqMhOQdkcEEwus5cEuam0ADKpFSpIyf1c
A9urHc9cHdmQxx5/YsP4tMc4/joeYCNYZPYlzbkGYLGENzi3Nu0y0yGUe0jrYxFyx6jHc/8L/+4F
KGJ8KsKJm0S8QLHzE0014OzyH0hC0zK/QMK4FkcpW8vZkjUBoct/63UruOIOHa76noK4JhT5CSiu
Kz5n3keeLDgpVDNFqsJyh+tCCON5Ggp26WFc31uaDVGUBBq4kVgpyIwq0WYvmEP7SJSwbrKi3IR3
VDBoOfLB+irPJH1DpahEcE+0mshkQzD8noAKKgd5mwDUEb538JZTKAt8q9CTb/lAax6d2OA1kw4n
Pb/V/Xdk4+vjB60JmUcUxeF7lDMDZZmz8aIscGnd5y+FfDiRb6xPQ5vQ0jj157vST+Vq8n+mjBvJ
q3H45bIC60WJxiIPb8qTz8lzC6dhZ448ayuqmidknzvkdMYlF+ZMQQl4QVg6PKZ1hP1AmO3iUIvA
nf/SJuCS31nLkAfpYkUlEIojfNJmo6s36ePl3OrqjLvETltZEUUMm8BzaVvAjO4QsZebatk50yaL
QU4iFluaBiPm+amB9tUtQDBsJg8HmB9NZ4ygUVzsmtTm6hxKiQ8QajdjbT+0bE1exdKJBelnfJkU
PM3KN69iNQ/YGQftYj3RTCRQcbxETaPWLZaCGDOk8f68e8KmIfGswtVQpuaNgzd/CabX+9OCWxdq
BBpfrLzZB/YeSlFku9vxzQO6nqTu8QMKbvzlXf9FbAqeWZDmdzl0Ipzf0K/5CKYScUwOjXufccIb
ST4WsVbE4/oB/dOrALEjuGHAYTlpis1UTrXDclACI+h/oT+itx0GcRXaUeGL7lfGfkl1iwBJkV0z
ituIks8FOTV5huF2GJq7Mpw1XTAveMBH/CcNGx+pLfh7sp75hphoHmMmb1Roi/hVW/armRY19RdJ
vHkVtadoIfM1zDv/q92WIdulCeFy0lj/HVRPR3rYXP2X3qcoIGXbozE6zFpHDrVb5uxsY6plUOK+
+mTOdyIndxJs+fvaYiolpanbtybhGcV8zQYVcubV4a5zQbbFBgHwtyrHBWTPt/jFVmiKOrWkUxMg
/gtmTlDGoZfn7ukxKIPC3tmOvc22IwCdKZJmsqL/JmWm7/U0E/Th03T+GU2dkTCAu7+8QOH4stv7
UbJe4YrRBH1M3vb3sLIEf/MAAxtO3NI/liWXAMNU8nBKpPie9Hmi8Cw2ESLyF5o2tHwwHFnQPngP
U7e61KBRmHOKnfR84RLQLZ/JQOBHkDpoVuqBdeH/E/WogrjTlFcp4eaEnFjRiQjqcfTrvpAHx8al
Y3l/27L39uTFPGvcbBs5xcXJPeveYOSS4FVsBtUVn64ASnPpr104ggByJf0SvZcXClBZ9HjuSEg2
uur8+OGAf/1tTQzTyaI7jPtAQFwjx99WgZIc8rPxmPZh7s1gwHqiDETDr/2dSHaUEzgvhrgn4SRE
r/IibW/+FHNft+Mn/Hg4HlWc2ncfjTKSLd37xrNu2V1tCL7hy2NBv8tKf0y9NMto+rnSSMLnQ2AT
cVEI6cvNyYUrDtf9B2Ox+b7ZJkN6/AN5WUZOkwgwTrfXgY6e7sr7lTZn0yuFLYefCosmKcHh58uQ
bBzQiSeCcGw34ipWbgZphIaG+WL9jcURU4YfS2tPlRB9a94A5YYCdciEx6i3mibWg+lo9sSKpM8U
PiRqGIlmmzN40l1G34lWbo5Vo6JMrLdqsKZ6Z8bYz6TqcVNIU+4IQ+E8XMEgJ3/Kx7E+enT3pzuX
5NwfwRHnO2lNZI6ZY7sWI4usVS5r1qj42JfV9HlwE5v6inTVYBKzoo1oUXTNemN3FcRvqJNM1mwg
GFglurRCGTgTtGt41MPHdMFMnvyxDKrpGeDi8NaUQJAChjWGYkEe15+hleCDl1gvLfMLiavgK9Bo
vjhBqri2sUOTVBq8d7IxdKyLyAQwkCZTN0/Ha23Vn/cSY+uChijpr75mPRxyxAdQch0z5RII6sjW
cE8yTqfwnkznzKDPHMy0daKIZhrYUrtLxcdpiKpJoH/59U7kUrGIWKIxP8KRWfe8kPu8JDu+L+z8
wjZwUgdkabTXNuILV2IwQvWCbmXeDeBF6eYPwHmYm0eeITebhLc+lU5VCEX1h0Uc4y5xdQ1IzTY0
0dAn4feMhaYxzs5X9J2mxYsok9HDOwi2KOrGVdAci2vIcyaVPcsEFx3pIg4ILvISmIaXpOtH2AOU
zhlnzNS9H+J6R9GMr8RaU2tnipawZcFrk2CKhmFviP/vkdYf7sWv7fkYqc5EjQJC3mcSgcw92zFf
PBmVlDEaoxvV1MMht1MUn0aZcBwHjBq5LeD+4sY/saRJFoYYCBIr5onYzEhg/AoTgoKE/a43H1g0
dJNtMX2QGtJcmssRmYRNun0LTeJK+xi1gkETNt/lQrtgsCB0AD9yTcubRuOd5ZXtyUGb67PWc1JL
1UwGXtpeqyHXITzUz9RviC8WcijHX8TDZTi3NQQd9JuAVPXgBwi7y/zUt8yeG6aQORfFeTEgLoZw
IfyPZThz8dsGSkHSkSFAcSyOPrYLrfxhnnfXBhUfOF2Uz8Cug6BxFJS1dGWGVLNekTqCuOUoeE7m
tFAREhn9SYezOdUfIsegPteqJ6Sg+FGbBytfbpNXjraJX+gdkHXoquO95d03Cck/pnos+C+i+dQ+
kF/XWlxIAqxKFac811xiuNszCeMtEd5mModY968zR9PsDcMZpNgKXFRGyzPp47zj7GAnzj6AsBS2
xaVHzB+HXgXq0uVqjedZ65WwAy7Jv3lfhmftlkALUMQgxSruSs/YBQs3BjAtTOa78tl6bsm3fyuk
yfcczIAoIExEdUoY4FMgXafAyKcjlqmLTfTp7H0c+yqp6JVGTB9qusy5aisNe9TcDiHQVOvbV3JM
qPOO9n3DneUNzNFxd4rUsJGd/tSVc8hMPk4m+TSlSWTRoDUKegTc9gbazr9Lyby8rKpEbwx7dEWL
rHQdnQ6bDAkOd1igTmvHyXJaNKIk1klzUFkjb6YRBudboTLfaIhaGyG+M0AMdMsOY2A5xt0049W3
aGRy5WFXMTjVmN9MQKFQqziYiyOu3gQcokI+dxePfhDDWYOWOQ9JcdO8ol1KeBSDf5wcDV+8e97d
OVK1QcDMbNnagIEnaieGSXRytOgZcGAfmPv15V4PVNGRmCHfanY0uAaqxv7yngh8kI1qZJYNiQzw
okxgnWL9oyG5NXXm6Zq39h+DLptP+QjxGulfdEFAnTRgzDIefqe7OkbxPoKNopVEwX7wVoFHlTAA
39euLowU8RPgTZv50Xsz81SLaZxlJvQi4/0xgbMgCBHQHMYNdW4QM4eVjY0VuXTc53XqlXrwMero
SYtEp5RwlgjCNPImAVvmRhZIIaqFqOEEW1Dl3oSZZYI3U0ENm5PHwFne5EEIg3MgBcpMBejVW2/I
a8nfSg+/vJO96YmMctqk0YcUrKxX+8YNySFXQxo75MBZf3yPPJ3mWKS9LfsyRC2BGx2WTRt7lKki
sD28skzIf8lD7w7KbhcEDpDr0p/TkgTmxRNi/u1Z78Oz5T7JGZ3oPIGN4BhuWRyGQ+OwrZ2rUIw7
rzu/AP+e+jJTz0qF2j+AikwhML7PcXXdxdm5bn1JH00t3aQnb2tp4oPxqkhEBcVTMN8zBjvGGZMh
gSZggMirKMaHdkPwLhwfYdVD7yl6jCDRk71Y32lrqcomG9Qf6R85K2oPX8jQYvtns60QVQOdzXDK
U5ZK1tsxm35XBU8e1sXJwwNoSqBA2/bGYWKJA8036ROtST57JwUGX5amvnEKMY1rSXt//nlB4XG4
oWm9pd6o3YQGCUhF4ytmVHCRfyCyrfjf0rNcYmO7e/PFXHSWg9hnA33hVHMFF6WJE2CVysxDXZDx
Y6pU7JPdS3pmFIN5FNNKiG9DWAMd0gMrkQgdTtSSeSZdaYLbzegkjgbm2H4fRS/Qbc4HPcln+1gQ
xeG3AW9qD//rA/ZagwFaOYPKWHgnFrbX4AsGOpoGIlBhqBUDAvjye+LKG5LXcxQEEz9S0+CQoa1Q
mUKkIU2nPQAnJXHMxJKdgIJG02h4cdxr4+Gc47yme8Do0pf4iPihx5pByF0TWttcsvQTk7agHwcl
+tPhhB71s8hQFGmpOYScH7XNoN7iZSCSTYzoC5GLl6KddBidxHN2v7pl+hQ/edM51y6391SGuHZa
y1hrhX0C9QgZEsDHQG7n48hc82+TILFqtQ+qKe4PvOhN0K+zcEXgpbLwEVWWX7i0p+/0SyTZFg93
wdM4twM4OOJG5/i035j7kqDY7NPge9HAJZA8MDLp2Sp1TP6EiuttTo3YbNpNSZKW7shgLHizCUPW
fPa8OqoSSJG9HnZhfT1p02cI9kISoDyZWaftkn38vUufSW6xqXG5UngOkerCodr0TnBzRnVD2+id
2bOe+6L4Eo1ce1mAdmS4vNmRnFW5moQLwfAovoY6GiC0fjMhEnvBOblAATpQoiptHR7nkaq/rwdr
yAukDlIrHpArdnf3s5uxW6c7KvpXfnMG/1EpPg8EhT1EmDXxLN7r+2vN75f50eF4zDSb36Kflqt/
yjjwdQUY8ssp0FmMNsNIyEuqy6w8LyoNGvedA3WHmNTCLzr3xBMn4o3Y+q453wtt1p+pROQukLNA
xUB+qwyV2d6CJuokwkzzg3tC6VA0owpTERahSbzi6pjbDwOI5IqKk2RFm9cMlHGY9gtSp3v39gUP
MjDcEhaquJWrcuv0GRAecTET91KCDa0t7LWhsXNeWB/vCa4TokNuPOF7cpTww4rxNbcldNB+fmIE
u70olv865XEXfFrGY4q+/jtPEqvfd6fQM2tebdoLbo4tr55wzUt5TcXTh8kDzmee3JzG3+c1nRDW
NGKUWNQsLl/y3AmSfaobzKDNWwLqLm/hJ+tjEsT0dVH1o7NYLG74W7eCIx+dYS6boxZa3DeGMkq3
m4t+1blBXpiPcb0FtJxpf54nIbGTBNtTswy2lvcvmJgIioMp65Q/waqeBGtBK9KBlC3e8mjdM2h/
1amGPMzU+mOt1Q+H/i0IhgFOwNrZEFzWQxzoz/GXXyAK2wi2hUriqKrlmIUbftQaf6TrmKh0pwiJ
vds0f7Fl7nehwDybGEoiZnDHh5Z7peqSyzh6/dUMQvIs0J0i2x5A5xR6nHvgfYi/y3AEOpCwjnrS
vS/bRHxPnn7v//P7bd3pwcEYX5ZppJsIHQRPrrWs6YBak1tTYd7nWv5ccCbWGFfm4ZvCppaQaIxM
LdzXbn7cF9oVs0mF8MZ5luYpRojM0Ii5RnrqgpJeYlr1Qsg/IPhdf1g/gwjbnEToCY4iIdSNcC3u
SibXZE+aINqZcxzuDR7cyUL7vTrrzRkI8L1Gyjy27YT0IrDIUsjJlozJhjtO37hYYZsuLw8JLe/8
W58ziOVkAXcIjZtFIlqbKfpddUfPvri9dzKvS5vAEw+Jq3j2J+sSuEVyPVoiVIJiTWN4kfwlj2eu
NwDrxVo3kt2ncG5sK4KYqhRjosAybxVFiXM9Iyg2RD7LF2nS77Ni9wu1GD0sDAjutwKvqXpCBuR2
y7el2u7U8Ny8IeOg1WPdvtKaSWMkhXJflyj1EgLS9Y539skHzR3Z8kqduvUewnwJjdF9N/Ogay0+
GzkbgMhqWIawpGHJfGvrG52ZFkrQdjq7O0WEuGkksHa3mq8hGCDyHyJBjh8K8Vpcun9qVbW0+UdC
QIK4FxNkmzq+35POaKTzTYNkx5pd6YbPRd6GbO2gm8YEexDQbSwZX3VNy4KUmjGbaX+PaJziPs6j
pSk/WntVR1B7PaRSMJDIsucY0JSAdpQMGgYpJ3zUsJEUFqSDMEXvsFj1lUWu0N2wOkM3RjsYPq8M
BardQTDECqVqV3v5PT0QB4cWi5+41VxRKs4g+/xpWot2dq5cr3OkMEou26uENgfdrRR9lMyiYn4o
8aW9Uv5aw14GhXqv01KLYEaDrs1zkPVZI1LMuPeaHlyq5LYv0WMX1kLGv1oilbBwP71MwRvwz4nE
ru0U7sAiMeiM1YNWK/XPf+WHOfwIWCLElfgAEVATRxjjEyTK1PM3tkDFUAaZOtCMyPHmeSeaAOvY
TuKcn32fp9OUmgmyrkbl+PmMLnJiUPmKk+xn2WH0tpTBlvR/M4zkqBOQxRLrlKB0XQYky8N0+Z0t
FExa4uPuN5dx6eNd2Jl/uRjC/vVAcuC6IxY6kgirjA9fTIHdY3/5jxV0FAL+m5LZ26nmbgDKMykV
tVXIfkSIF9eVJhPnyszUGx22iH3VD/5iAvI2XXVH+HGaVdsebmy1B8p85mnDPVr/kmCXGITEMfI3
cT5l7flqUndCABjFzq8EG2mgbbtgrrR2WDHMpJdXG4dl/fGvAG8r7aaLytQ9baLQPGk4XypQ2cer
r2Jc2+FFO9PkELscBR00URIfbm96LDGmXGXi+nDKAYYPi1nHiCXrUb+/Oqs4tqPbYZtkFNTmIAkX
hjwLQgNVSWaIYF9c+08p1sE3cibH5m+/h2t5Uwedzahuo2lOX2LZw6hzAJSUAEgNQOf3lz2MjfWb
z4ix6+b9PuUfRltf6SEkPClx3iF60xwfVfAAmbMh6RWk3sfbpZUWRAuCNAxp1ZbmIyuyRu4QOWxu
eW9s4tMbCh5M/Iwqeaba34Ol11qCSqznK3SePkGupob5w7zu708TuMSy5QToIq8Y4oUzTQ0kMAMs
YnpALcjO0JRCMhzHddwMpfjg9vO5siqcKj+fPLnaCjAK8X1MgIgecJDKLB0zgT0x5mtfZlgxZILe
Fd8iNQFwplw5oPX0YJfHjSC2VxEReuiF8YHU85uYjtQR6GCnOl6zxgxoQWBj5aCe58g5H6zgTOmr
dQVKpC5bp7ht5mYqHcWF0zxxR+HuXBH5hFBYHIMDKFTBgNUzjp4cvjmmVmonxiPlSURdb1+MTmuW
YGV/lrmQCH1mxM7FToPxvUtIjM+MUfOn6kOPbE+EBoWtCVauKG/e4dG05YHQziqfK84kcfdK9QtH
EYMrNPEX+2rrJP6L2+TWs6PgIduyYrEMbYSyV3t68OqzsBQeH+xUFZkRYoamCnCHeRGgvsD/bpQq
mfjP9gyLYvAVvnumFjqbjbQAShV/J4Z43jx8lITWILF2r/nDkGHBmft4cXStPY2YUjGgzHhtVDil
kA5bInVG/ifM4JrrTMZheititdd7t/WihG9gTOaboqwCnbIbTmguqz/eqbQfngMwNsdRIqrjX34g
5FdCFqZCV2/Neo3jt3H7lrpvbHaUdrPdqcTWTDC+LEfMfXnsozEBvmvqeDh6bkVK5iloeMWLNYdI
M27d3ltHPt8Cryk8ZYB67mNN6JUziD6Qk/69f8XeMM195RdXNi0PUtf4l2aG+3ZBziwmrJ6FrIk7
99wqNIFUUAO/PNGI2Bwbq5IEzTbZbN1GB3nSW0OYymRtiXlNpgagS7WguCXmy1SqC1jmEJPljMX1
dujfvhM8PLhst7n1qb7L+WAhW48FOMzSREgxH2Rq2lsGYGe0QW2lfrPOjpCpMj/XdW60LTYjWSsA
pLQaOcrRYajnaJnkownKAd9oh2AaAnSMY4a+9nJln9Fw2cwyBDir/J/AgJAUxwI5z50UQBUwUgJl
s8HFBm+bbi5RtUQhbLiE7QE3ciwhO89ZRtTkOPkX2Tw71C7PVDnnp+sWk6bq6dV1McYBZ3ybrWek
FHtX9iJOWNDsp82pt/Pl7Syk/QrmamSvXHQ1F0hQDMUgboM5uW5l+5FnM4qQVMlyeBtz0Lwo8D80
bL0c1IBIZrVxgi4xLtrtymFrBp13nqU3P5qXG3z3gPuk4b7Yt6Alj+xt3KWi9hFP+AygQ+6HpFAz
wSBGIJXQbw8832Iyp16Pf+lEulkHOLqhLLietGSg7Son1CR+qYcQ6E2mV4w4OmsxlkLuCldnxLVQ
JvfAdYQygEvkVC+6L2pqAM4+6ryJM3WYBZ6QUwThcqivCNBHpNYJolfbepU90hwyzwgZNIkbczT+
XkPoqPQflbkgjkoARiPWEKK0cK1KhTlq7lKZ7wAtwkWbFwWqQFg8P6IMrBXdWme9p/aJ/vwjd1RY
7n2Cy7HR+Za2LzRzGipNc9+8YVb/0nSLyCV4siwRI7D9LuYg6R/Slk3TAgr+vwFSc6DaWBS9KPvN
8LFd3TClKLWhxuCBfO7j65FE6G4sc14piBASJZ68fZGrojXby+wjnWlxbygTffHy7zJYPPoe5vpO
JRM2ZMKKKTvZPxYZIVc+0mo/EnzbQGtvxXohsXOQ0qA0hmGY62fVeHtGkllhnRMujacFLvKWb/te
o4w/5AFhmUto/d2Dh0BHDcwx7Qb/4EO88yMNtp2boceyKT9jPIsFBpYY9WbpIgv7XVI/BKjC8S7i
oTA+WAdS58aBtXhACsdTNzYvI9DSIst7+azN7nuVTUDsrfbwiWkxz2sTNABbg16vvauuYw3sN78X
H4FPNgy6mkyCoBonJtsCL7z+YvwnZAFXOTlbIyFbb0Onp3xMWpK/Wv9quqxHoNviNhVVEjTKH0n+
Kwx88m81YuZ84iFFnhtmVKkTl3DNfw2/kBjilzTEQvXccT7C+0Jzqd7Go0wZAZJzqsbk4NVJ9CLP
Fm2NJmNc2JCeptczYWyUtvms7hNxBrJ2jwBsxC1FeAY/zO7McD5XdusbaJT56sRhp5EC6GT/RGoo
wDQQvwNzCNWqSPNutE9nkZrbVG0GMtLeJED4ItgtxIfb7pfbo03mhDOPGjmYlWrh1XJGY0tTXd5F
AlHPZevNnClXfOpyHKaat3o0XI/tKbpUiSYTDs7ZUgGVF+Zqn6sbu4Q6ePOMYsyRoJsLPm/MzbmL
RqqTs98KPbHG1TR5DHysT/gKohTJPM2CumyWhof3TD3KxrkgHx647mKeHPPhz7Ee2u9DAioNLxZt
5sV0G4OV2EeqUr/kcaV8N++swVCxwOxWRHGD0kDzTdA9IUaAZ4RJxoRiUXUKoYZvIG3qbpVaGqN2
tT0EJvMSfN+1yUL13VI8dPgdpsK14XAo0tvz28ouxMJ5T3UBlobOT7EgTaig1afebQNvKytzGq+9
W7KpkPSc64HjUnK4zyB6ND7kW35z+N8I+LKJvZ/HISHc3prIdKcK12H1zLmXHzaJvu3KnA9Y5W5o
qQBRgbdS5FT+NCAJQ/IJW/y3ddL3e5QEXqYpEyZOs7yFf/NMFi1YK2QYRJIqB5Xhymh9OCkjRrWO
uXhyiUBDRzezzKJ9ISaO/mFGtW8b8lZ3BjQb7lbYfBimSaNMZqUXd8Ud4DNRLsN2KQckQdq3OJQ0
AuZFbCzPE9r61TCuB+GvYOp4wh9PWGokb7PSag+wm+Hze61onN7EqDx/RIo57+mpG84+FZr7Ega6
gs+AO1r/bSiowOoc+BDggKZVkp6C2zhwMptRNviEqBQveObg+f+fdGnwPa+2wwXKTK7oRRcedPJv
mZGRxvyFnYs98U5BPwDGZK7yGGabFf0jbfciqbdj9aNiDDIep0F9JsU7ZGwg/F8JWisN/UIr4T+6
NCA6GaLrXLFCytGopmjyy8Bvga4Cqk29E5x6XQ5q+ihGl/uzFKl6FpvYdPLBKWOUJ+OY7w93Y3fQ
QximOcgHlH2hfvbOTIj8R+qVT3esO4CHyNP5DBxllEu87K1JY63xUuQ6mLp+x1S3wkR+y25uMsbw
X/G2oBNLP+OiuOVDjjfwrNlWI5GAx9tnM28p/+tRbcQYTiQA+xU8LD1n7TJQfqyjRHFxq50QDTBO
dXk/2dv0zdGEBz91LHN61KQOhcmp5c5fdn10rbRWTaF+YzXQHDUsQ+coyjqJPd7axfHt5NSGUa5L
Sfquusi739M/NxbpDYt5UzujNNnJbCmfuDaGHnMQbklTRfEqa1k2JHLQM3uqKOOG+nytqF5oYaB3
Dy8XclRxWevJaA45Rx3CH+r0GT8t1GfAbdGJYaa0c/wjgwGi2OlmULJzHMipI2/N7gunVpcmw8So
SxVLm3Thj7hgyUTdrS2iZL/+jCbQPfMW1/OLtZApzMgXzzsp1ijx2S8mCM4uzOlYnq+BAI387i1H
FfE0fdBWbRcLsFuTQ5w2wCRKBIQToEMvIrwjjZn967Vjhw2HA3Cx+vLZMh9zy0CRYlCdLPR7zKxQ
U36wdDRemIM4XNnLr8cmMqIvliA6+OeUV27ytCPXSaKdyefv3bAWoNV5bIXJqQ1EObqTydXBM7aS
Eq5Gv1SMuH8Op9CHCFWLDepBgUEfVRB8+ddlVWCJiP9B088nyxvjqWsW8WIFt24y5dy5Q0McPg5T
gwOuRngfeVTYP4nrjy+lDvXLJnFjbZxTf7opxmnyVA9Fxl5QIWLM5dgVq0rCEsY4Y+Zei5QD2FFT
ZVqqIQo7AqsuTtOEVrGzCwt5Y9JVlWvwm95slXixWMQvWVIDbpstb2qeW2uGkAn34K7538krHvNH
4vFGvMTFfoM0FgEexA+6EPSpqhtLX5eZeqti2zhOyTPoLep5gaHm0UPnjB9ctOmnpqL59IS1m5tG
zyPnyDE0gIqF0CZdUEmJGo+9yebs1hnitc333q5grsTKeE6sfOD1KfnLjtOIynqbpUTO4oDCRu5K
YA2VWzxfEHdk85UsZq8W2KSou0HHcPeQG9rQSffE5pAIpXh7wA7aqfaazjFRb9dgomwtJON57Wvd
ZcZWsKUXbrk16KtnTAOZs1Vk2w5G69JqI0GFrcNuxtTQjKiDjoI4PxkxrPpEOmto1WVQWyXKHAh2
CkxVSxwYRx1T9K4hhvvdfhdhfz0a5ZC3Xs4RfOrb2CaN5mhn8FuuPKRlTKp+eTggJbU6DzRiBycZ
G9RPrcxwWwLECHXJtu9/ezbfto1U3Se7xRGSCLMqcxa/G3ohIdRoxOQNppqvO6iPk+RUU/tK6U2y
dJC15j0/WRyUyhZ6cfTsrvoAUCRiXRHl07GH3aSWaEl5LmgQi5BSfjcy83QyseZIPP+EN49tJW22
sCm+cpDtXvSIluId8pgJ1PzYQEChkBQom+hm+EZJly3aIakbl44WM2aTUJ2KYFJzKRU6vuWnjUiL
y+dmvwS+Ff1jEBZG8aI43QlTwDzmpJDCVKmamQ48IKCIP0o69lrU4CJ527/7i/dzN+uBd35f+VEo
A/O5fBJlug60l7QvlwWF6f7XJ+FOcZZQr1NHEX1WJqHJrRA4E3ru/QiLcGqZprkYhtcvQBsg0Vvd
yWKrp3cfPJuBULJBjPmWKCoSGwbjlQI+YVU464FkKs42tXi70Kpf42Ypi5aig6mY3HOOBYJNmya0
fPDTdAn8anXbudm5zfBPbUG6uSjjc4pTRJHEBhPPrqwPt+fW0vl6hpYHfli/XwUsKCDUuDYIwK6R
4xdgb/3CfpPIcX6cvyrDKfhA882LSdN1wIrGI2w3aIcKE53N2iZPnsMw1fMZU/EZCyZJbm2hcKvr
MVO0bMrQx4d8SQWbHZA6XqhYei3iTtBXLeLnS3jJ7c7KeDEQ1Q+J1nt+bzH+jzQ5GqAhW8iKpbtf
MYB1aq+U3q4737v/9dbV+TqKpMdQvkb+VaEki+pAgyPYqwdNVLqQWMvjpBlbkXnJgI7GjOgPi0o3
gQlsn/c8bNK9DJi3PovuZJSN1+/VDFS0qeeVXIWTSlMazvMg0nyP6cBck+PoR3FvOzoUeDRW4a9P
QDMx76yt5865zfhWW9xCVelK8UBfdKn4ka79x3ybWWA1ONpvcIlYfD9+P8lI9m+IwS8XGJJl1AbX
0rh63zYr13O2tBu+4hh87oGiHioJd1SElAvNngYybqxnv+VsOCuX/PwzrVpRJirGBMq4YJwoxZFO
2FRazqbk2+xu04eUvNE5DO7wB8YiTpdZlBROYk88Z5oH9uvOG2wWIh0uLXOzbnlxVydGecMNHL3J
qOYtsiUKy79mrpApTiECcqWPM7FliwZauBbr/y2SxFMtdiHJFkoMxJLC/jjXU0fiqcWcqmg5PbWX
j8ynVAbs1SCSscZh2KTqnYVwx6DuHbKwuVUDkqVtjKwbLN4qOVqgBxIaJTGCWoSv4CsShZbAp3bS
lKtuWUO32IexKjG5f5bYcC58x4XLVl/X33CFBIbumEsG9lAfcHyWijFwZwLCb27lTj7O8aXa4xwO
mviTJY3EowSm0DmMqFG09uCtV0wFWktQHdFZohLX4J7AlePgjHyqgL8mFazrBW0Pe6SYpIM2HW5I
yiX1IjIv41bSAgaYNUwkM80Gxa6GX0md3LxBy8jD7NxklM9CYLYFi+D+kdo3ruMG7ggpUIkqqE60
zqNfgyf7i9S24CO8fcXgxSQK/ZMDv9EY+XXxnBvEfyDxgKepE3v60vqTfg+yzPbtfga8YfphWJl9
84YH02sggBTn+7QZUvodGTAvdr7NPl2FjoNO7hvbQrJa91zzmXQrHo9ZLO0etFefTxXyqaVBhh6X
dimnug3luH+YlcDnq+YTRmVzv5comakhTCTN8VDW+NqAfks2cjXIEIpprgtyuB8TBY6DKuKW18Bu
Vb0VTOmiz+5oIDob1kCxl0Has1KW7RZGm6jpEaZxsAR1PLO4poA+QNiaPfvarWcK0quFAXJbvQFm
u+GpuqjGLOh6G09iQwkmC96SXQqJYLdCgdSzs+E6I8+JBGdeS5Q8P/1xbMaca5gysd0nRhJD6WZt
n2bTRvAR1glsNF9WgGPRzMVl56UPRaJz6NtPEkAUTQ3ANP2NeeqcxqSkh7LPdaG1pg0z4iZPYx5S
3WB93GtZioEJLl/95ffSyR705ahAiX1srCGKB3zydO/WMG/KlllMPpwVNE1UFsH2b/RIw232qJW7
g+G5xVXHT8C4vYQd8ocS98Va+ysdj2oby/q2QKLdEoYcpZxarqTTiH3fxPlPWCWUZnQFPlAPCRWN
oSIZosYpXjXxP3ooafCEf0kkaoe3hAG+mnx6BRJayaX3NTDe6/rAHzBn7GsgRaDlwJ6cc7bkU3G3
s+OY82e6N2Nv321PdJDjdIBvn8tCmCDY9b5LUQMlo3wxaUuTMUEQNFnBtd73qDuS0YCowx4FkZTU
anzmeHDyP/XaRFy2Yqyope4WPHh7Y7sKJmz9U3AzFA2LVZbXu5/cOHS9b+toHGzTyb4o2IvNcji6
GzbOErijUrvm1wPp172fRH3Pc3aQ3vfSxaU7gskfg7fWMYGJJ1xsNAbgPEBJEqOlrsiY9ST7L5+W
uiZpqLAG6TESmNbAhGWgOqKJXFPdiFEZIuq+qVllTROs/1EwdK5+8pokNKHzNvG5SojoUdTFSUv3
VZqG4pN0UrY=
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
