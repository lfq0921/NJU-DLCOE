// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Oct 26 17:38:25 2022
// Host        : LAPTOP-F8OKT164 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20544)
`pragma protect data_block
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
nZL+keJr3UuJvt+uQktwwQfbUM1ay5Cf
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
