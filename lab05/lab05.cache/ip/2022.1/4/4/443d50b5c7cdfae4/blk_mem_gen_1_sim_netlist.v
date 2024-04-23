// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Oct 18 19:58:37 2022
// Host        : DESKTOP-FKMFD8S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
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
0FhUJxTLY4Vbgf7mpfmUGM6q0/OPhIGK5/lfEaNCD3kLTFGJ+loFSMNCCrJXSAr1oa8KDddIBqA7
FC/OjTaexdKsQzPvU4cg/yvYeCc567oCv6906PwelrnyyQKR8sdmufGLsAjs3N/0Qjja3eCxFZIk
gdYCwPWlGLtWIIZMg9N+PeibLznuw+Li/88w2afIOSC6eeVJGM6VfWKhAW2fPQdeDuX1Cw55ZcP9
slB9VVhLEZDvXVoUK9vwG5Pj9kbFX91nuWKF9YI/OHPq78e0dBdTt3svX6Vq5Y5KopWXmNizUQM1
Wi7DdfqoK2eQOvGmTbyK9/P7VV+CkeE9BVJ+IDL8TMgNtuzOwGC0VKFqlcd+1lj4dSxaW9W4y9x5
WADNAFofTABkx9AGSFxBohPujIcon5zrvCT/fv8y2Dz6Q2YumPciQwcGyF9RLOGT7Za07R/fsMVw
ZLXDGpG8pD0wsqJLjFRxJZVVB6V0UNzzaZBa2dBszpMHsgOAvpmqBWd+S2NFUvWLDBbb9YqWMdrI
ffLCnL0uWe2CGXO5+PL8jXS9EpPDtVKAnDSz69MhREQGplGzq8nB7vr32I8/6V0J4irUeu3jXgEN
28QfVgSQwmWqPLWg5EpAseJXglVtii+bJHj130o+iR74qDrrS2k7lZdFDnSgETnWjQZeM++RXwSU
Bk1hLnb+MQ8hAdVcJVo+pug+QeuxxHEsTEAmB3T49QbWxWBzbLU73Se8un8ovwCKDitPJxAEt5K8
eiR17UwaBq3VpfiYlJ5Q+eN8gvmPLMFQM/4D4LIx2SA+GxM0pv5lOvGdNzynX+ynBVKkTx7TWNr5
zxAhnAkY/39zlLwfxG69cOdJ/YXAp6rwNxcvCo5Uf+Y3G9Q7uuZOZEydMmw6hkSn9r1CPbsHW6Xn
itshn/JKMVM5ZDj15ICg7zz6Siffl9FO4GNZBaSa/JthNV2x5jlqBakcBclPDs/gu+CzWWiEm56j
A02FEUHvvBfAkkYY1z4js2gWfS2YXdOw4U3ffIlF8WEm7kvPvS2NGbU0cO3C+tmR2V0wI6LSCvGY
Y/j71xUocV9zjwkBqwaPgC5DPaXN2Z8IWe6UFfTP7EONc2KjuQwpTT9YmrYkf3gRAgdw1/vbaXlB
WB2M0WNkwdqaPKibkaTLRuZ10BD3puqG0HrQkTPvNW819F0PE+28G/oB8xJVJmzXiDUHX2pZAe0A
32tc97YdPOCI/Y82jgSovjS6WTjcjcH2iFxDoWxeJvk7R4Nw4SdU2SQ4ONDQg2OeDbFv9X1ZdVLd
krS4vwt856ZvPQWuK5C/8Or5kEIp9ewiZl5v8DF6tzX6Zr8B7VIx6s/hb9KPPIVkPfTX2knGwwnP
o7Baq/w2RQ7wfN6Rtm5hWthSxUHZdqqc9G5dBbYI9gZg7V8GPVW2sZAXBqK3LPdpwUoH/FIqJI2O
0VhF90iKVvfkdqVdawMs2/4YLUU7GIsdV4EVYt1T5WTNEMA2VTFjKA9mYUb9RfeUctwgzdp888iP
ed1gnMUrHklUaU5OGSdYDVCc8Tedg8dWJ076F4Jf3JI9cKrOwsxEbV6rbQ9w3vwwEeaaoKlzpVYs
gSgwfYr8rdSkrW/c0iNFGkmYDHS8g5qvNHYfLZe7se1NXrfN/MT1WXf0jv2gWe/b2R/apCpoePqh
zuokDuswZLP9+9J1Im9KFw88iGmRFp0Ir3gJpr56LXpry/79lAC2r60f+X3Ow3LvRAcYCaqZsBhM
a8ZEJzeNA8GpZUpqsobEp4mFwrZl2eolv5boBBBWnCVXpeuvLwGzmoYsvx3w0Zt340dzouxjWixx
SqR3dZWwCFXSJ9QuRy//TvPHyfgc0FqDK1Xw2IET7Euu708byyi/8HBS4AtbohXmuCb0bcS+rTyQ
RgsVVXX5/qbI/oP26erEhXNdj5sWrMtDaaWIG1NMQu+JiDVkmIySDDSQWNCkjibEdmschKMiJj1g
KIQaEI076HujB1YVNksvS5m816t0QNpK6+62HkFRIH0AyEGfnoWHOVtXf8WHh6TCx0yc5KBrUCKM
IGvkJhA0vxwdILIsRXSdbitgbe8i5AuZWjgFPDAgc4vbWRRjQWkBniOHrmHIZEonCytI32o3fXqf
EwLFj4Yx3HJkLRwM6upf57yjnonWFwEPhuB+jUxagGqUuHbhPq78FKwmye5jLF/cZKEeTthPutpP
yBQIEmo0VZysd5cBGiNi0Ret1mYFukrJG3ZHqhv6/hQL0TY6xbS9AkjAuhCvshc0NVyGw+kuiYFm
VS/24/9ucE4WL0ZhYoq5iCZNeBeeZl2PIDE+4uq6BUBXGZ/lCvF6HZV+UddPe0mUucsVr3Hi1HAQ
Ap6vHUJg/IwZ3T8eqEBuMw3/4+rUxvm4ioNiUlPARbY7+r8ZRfYwHqXuUJenwPjqtabSSyPstOzj
MlEooGwydcv2p/KNaaFV+aHpmg2utHOTJ8+wAPpwq6E402BaDpAqj0NW2Cj7gYMwtXCveApw1PDm
hjZsaIN3FuMceRCQrrIoH2kRR08Ic3M0qs0LP35F3RnJevGU0/MI+4bfflNBLaSex7WJZaQArjPk
fXDbFWK95cmqIQ31rel6uPdsyYH1UlHBUv8aF7qsQg69iHRQ1IwIuroOa9EViGCYdyRLoxqKPbtH
ATauahGFJnLNxn0foVIuMv0QYnNvhrSwFMuz1n81IPHj5NNZNpGVxoMIUU7jB/NulXxlBphpbN+O
hLLQtr4dItJiZgokAoSYkrwa9v5k6VooOy9M+G8zb0iSNm3LHMCq+zwsXkHbd18btBYfxWSCAPbL
yif1BTwY3WJPoCgDWVJYuS8MPPIChB33Xrits7ZBQ52pU2l9kqaaD9tbZ9z51zXneSs6eUui6FrB
00ziYrzh/r/gzZgjyD8yVnGvumauJUcDopFQF4VAOBkOeKiSY4bPd1Y+bTkQ08Pq7DM9I46VTebI
uc/YGVQwdvIH0JkRC359WhUN2G5uckjS4nvTmAkLFX7n2f/wAQLU3ofjuVjsuAi+T4G1cypeC9s6
vPTwF+s6EvxOuV9kBVOzA3EMVsu34l/ZSelY+WIS2I561fpy4ynxYkUNhz49cnowEPFSk5fja44K
F5YcRojbiRZ/fCphQcCSVesDUm8C9pcrUB3+kAFK+HmddXT52to9x4xhpwgTm+wxMWapQdhATPGs
Z9V3Pb4sYwswkuklIVUzS4/q6l2w3xkdze1QCLEUqHYpe9YAHwZtGloYRqKJhfAuzNiK5tpYyo8B
lf7XTIUcPgynq8+uTAEryh3pLoHPD5DPHLbb0rQJ62nsLDdyX9EBQwqqCjOeV7hFmymi5jMmWVlK
/3vjo4R5vjp+2YZWx9pGKUpEBVKefaws0XQqCDXy8uOVaZJfFkT+K5uFs/yY+07w5VSfbxGIpLSa
N3ZgIOwxyRe4HBJBU5i7auRP4me8eMbUwEVr0O+p9LXoQYsJfuk1TBXx+fk8o2NAFOK9QVEH2IsO
0ooHAaSTMgept3fvqpXMxkAzCw6dqC7PlM6qmeIuo4dYulJMjfmImf9IyDHJTFv1Pkmp0ljtI/Xp
a2Qw5OMdPeK29dKt7ZBJ22xTptFI7XVFtjQcggApJPMKD2kJxpObVm+mi3I7JiR8fZvuYyBvoU0t
H4FkjHpNKdAmlCskB1OqbQ4xNJgmMOMQg0F5/a8RTD41tnCqNB6lTXU95kH24O7BXuRZey1/MHPA
kBMYsmFmIyAf9qBQnDfbNcvhKZwkPV+LM+8HpP0C02xROSgG1ueo8ibvJ2DoL8qbLwAnq5YluVKY
ImUtHhLz0fk34kQqhyzWLLEknjd9qsV15Mdx+lt4h7LGMKWF2dUNFZ3/urb4xsjuaPDsXRcKihZ9
kqLLN4PV04UsS7R/TiWxC034+/yiJT6X7PboafTK+2NuXmo97w8Kw9pQQ8Mv3QUnM2asYx3Rv0V6
2frU6NA9tHIzTQb/5jdP7SnmkdUoo3jGdZtoLNm0uj6T1Dcb2JHwW25DsODvtIY2GK0hLDQKenni
NzAwnit0FV8JyM5VeIhanqdCHa12glp4RKG0sqfwwkrtvXRIZRPeaorJMj2GO7n38XCG5+7JsxhN
4AGxL8z5ovWz9jQF4s5XyMCGpK5Kj8eM0L2Dxqf8vGu1F3MzMz+lFOZO8iq39okMP3q6YIEvun4s
31HNjj0HGOQnfZjS3eJ7soy8rPP+y9k37DCLXH1e9Ya4YKANGYyO6dAmDcRcS/CGeXjfIU3cOJHB
bGXS46oGRHhQhbkqFU+DEO20LlGe+YgjVBny5+paaPjvRo8QH+4M1c3GLCKEr0rmadS1Wkjc909L
pyaHLAQofo29k1SVd0a9TDnyNWEuuHnT1ABTDSBwWCYF/Bi2dCR4Pjo6GeQ1LivN7LQBvlbIaq2i
7oz8CbjSqplUGFP0spirAWFx5RwANuLWRML+7AO2Zz8jOYrj2ZwYbpRMaYoRbVp5jPxMWbIVrl6H
VFHN0+FbLhm4V4QWiPj6JPYZ9kZ1krP8YHsUCUGzXBMVZmFexqqVqT5xhrm5q+VHbmVKn3qnHkqv
rXyhV5evtF+bSHotdJflb9RmqvKzaEpgbdN9V0ehb8SxT8Swztoym/IOea+fSZ5f37Y3mKF6rmwN
20WkL1eXz9KSEztdL12XUyZtPfARVTLhL5rUAPHCEbhwO14cwo2cR6BY8JlzuczqkvrmmuaaHF++
fSRLXO+5AZK363HSao3dlGa7ogxipVbR9E6pKg/P5OREEzP/4chnvTst32/dqR+j7xdiXji68XBL
PeFfuqPGlhRa6WZJAbvVbBQ1BibSSMKOztxWCj8U3Gdd9gOP7WWdPZiTPyW4piFzxQb+0KrjTFUj
SPo17Rq/mn2r8Ba20yjzRP+tLkEwHpGkfCiQBf1m5u4siVsSDfH/FrttXC99AQMOsHwfiwMKj9gF
albFVCKVIrWBH7W1g1hA7BIfNuy3jyQ8Dwgbfq04RxjBoOwqOGGjCEMrTPPUdfSZ4cGZEE20Woeq
o1U8YcWyaf4Rx1L1i7v19Wucjkw3d8OyVYDEnO8pjw3cgAPdGYn9dJSGO2c7RgolMc0jY8y75c3s
M4ehayIPf6fH/sp3oGlESlD+Akx37uawabxujBPfrL4FiHWQUTZzqWnW0TIZs5KU/D8G3ZAa/0hA
Ik0tQh+Ka1KW9p2MYwpicDr5tB+3fGw/+vjOF4Okxgb62Dp3Wkb2TM6Y4OHHhfWNKiCJFMxroGkb
WLK/gMPBNR3C170a9c+HO1bww9BMXPazpCKVmRCBcgb+WLhYDeD9QPC8vIw6t1i5CcJKG4QqQ6QU
/jOcpbQj/fsHDyCu7VQ77L54bj3teBo+ACMb4/P4h6AIVbnKyzVVnGXxamrKnSHy9GzSQn0lXQ45
0CLxDqwBPxeHZiVyqGHI/eeOocIO2jWHU9PpFjHktyZiDuub9McQo5glc7mR3IJkB1LqB4J7Hhoy
jfPDDF/kxPpDW1B9tg6bDXh6QuOxQnBWt59EjhtSlPn4agzK0jNMWESaOCrkmdY/ShfvsIlFxQ0V
tBcbevt67l6TxY4fLoFtOxPsQt7TEFAG3wf//sOMkB2Tz6GjMRBhyWmX+lHcB52IVF5F3GOx6i5H
EsX0wBJdr3CNDdzOek535AgCtuDlI+NyjqyVYXPmyfCjAdeJXfkBiEDfNpDBxv2zvggBZ+eSGpoi
arfihy7VTgM1P5M6iSVgieAoYx3d2uxUMQl4gV/mGVW4kFSG8YLWtNd+tQ/Nd4mU9hFDU1ADzpls
7MyF+4JWEUCLT4YYc5rax+3FIo42W7XgOJXrdBV+DPcUMR0BU9mEyfd6OsLMX4uXFhj4b0MYE589
WJ9DWRki7/A1pp1Rn58SWSfP/2XaEfdkj82Pgj+Y80zC1z+Fx4N0c7tluEsYWrwe2P/zMCLFlFCv
7BuXQzm5hJO6WrPaitfxqljdkRt373ML1vAlURQC65R4A39qxbPcWUUeqgYi0LL9H3+K3VxX/kQh
dS7Ce/GRMR0iA9H5sUTcZgrUzg/4eMkUBLM7gLG9wFVq/vu9Unv/kl0OlpsMvHENsclL8VrywHmb
hgkUhGKho7B53wiN7VUKlbCesPpt9kjmmx7U+mxGtxbIfLG3Rn4QGYSIoXSXLMtUiq0YrhOy7idd
y3HBSwQYSTovEz63mBcfpAH4qwzVX6QsGAIu1rl6uU3SnieU0CPXPQ9DiVViEohcI96/gk5TRMtL
YXdoP01yVxvqwtd5fh/aBv0RGoXPTId6bscVbPxP+ii2OiNLRXrbqzKSZ7qYyMJzC43TMVZmuns3
wgbVKF5g1Z1SrYDj3wfO6vHUldW8qN3ARfOUzBEt38pwbAAcZlkbucy3szrBAHmTyft+hD4X9f2C
sHPzG/Odqb+Y1AlDufBDIO8qbWr+vC++q/4R52oeg39XKbf5vJgoK6H8eCcMtWshbXuIfuejPFtS
fB8/MMqaSI3HS+Su1THAqV8WWX3PKrTBI7mK+okfhC/aLhJamFBr3IE8/lC1T85OkwC0TZooDMGn
8GvetibTAhE25B76SMZgqF0iVNNfv2DW+T2Y+lZlc3x0Kag7VJ1LFynhX8trLiF6QvEl9dZdghAl
DCzrhz1T2Yh1iIgAsdSF1uc6z7G3zhR+dfggLUzV5x1TYvnLvqIuBDarLdfKzh1+b79vOp+5CSYi
9denRWrec8l9bcan7Rr6kd2eg6WUEfbOjD4N3/gGI76uh3T4RMTCyZ4rt0b30NOdFxtv+Vie3+bB
QFGntsBNExjjoSG+/iOo0pSwKRW6d0E77666nQzBrxx2yerzTWq+9I0JDGbHeIaj1nOyJVEI/rNC
7rFtmL4d+fJ5hBUwfXsi74ntfpwsmniYEUa0Ox7+LwniHnBpAB5flJzfg3CmAlXqlyxsvPmsvcmo
/QVDwxdM2VaGsiqqZwZ9kX+/xmbxlzpH94Aue33hcXDXZ9xeLNnrHKsP0gAE60knU+Qwkr3868Bo
whRgc2WEp3hft1hnjvUzWNtTJb0DB5rKueNl6bJvRJm9CCiDWQrhGL3RKJuyPFDRxGVaqJjAYNev
pjENlFxnZhbuWZT5N3Jff55gJzXpqZIXrMaNOUUvRAmEVfcApqcMNgKnNNRXt6kxUlGv+t0A28iY
2iW01p25H/uqgb+TwtKuor6Fp/CziTAuQcjixObnRgIW0PrCkkfNL/112CLwQR9tQZ8U0JV/zwje
Cpf2QrxGScqrlbjp0IhNSI6Wi/bd8E+ryTTfr7rgOn+A37rzXJMaEzltIIzUpXMAWU1132zr725G
meRJFklpVfaiEmkFxa96U6p7xmzt9yCzXA0xLDOjhk/JtH8xbGBMNaktrb0AkKzvqbsQXhiXFbEq
j59Nb+zm0/F5+5Cn6EGAInObHGiWOK1HipOKhzvLL/2QYIUeTWhpyDg3IsLFtkCvHWzPB3M8B8hi
QLOfp+qHCgRRI2zxfrIWPkvJEJZElAjlwIXRq8se1gRxyxQ8Pf92QUmTkOs+LOAAmuVQUCSx1t4F
J8R4yLwvtiAROtzavWprn0m3YmUASlBJoomV88zEN/T85DjwIMm2OkaODd/xvSAyqPbxkv0mXrTV
+aRnaC1JnUhWXDyXPonA2pj+0ss0Ix8fOsE0nayJnvt1JTgoeFl4pJiu0OdrFN4XRwpsjE+1BFPs
iYbHdgaOQZWH3uY9GOE3jqLXyglzCKgoFvYx3JrtluNtq9Q/43FfqUYlihJcHCXIWJh2eOoRGOxS
b0XUPXsfycSbJMOLel6qhF7+tmd9p/CWk4eWxXRXd21PMvOsYf8rVBOoNKVgzgiELxFECS0yyt3k
uNLf0ZUWfyEqxsC2j8QqlYrgleFlw9i5/v3GT9Ly08h0cfw6ghNI1lPpEQVmzy8oxEJdgW7JO5uk
XQLxMnR3gOz+EfSTEjdUsKnhwR0jpAT4C3Sg9vUz5qaFVZfsZun0V2cvLeh0CfnlCH9dsQE6ClLx
Ksk6E9/gZoiriEZ/Bd0phoYH8O4tLeMYfyooaWYDJ8ImXQOCY9Sn7KEPkkK7pPo80lnSXNSCOAZs
7ix5mrKxUngfSpJqcSYJEsZG5EqHFqfh4efAKqaUfRw+0WcYmxGjXm3NFGj34PpdVKAP2KjQ3D68
oNY4ZQMX+vDo31CjAXOnR8+Oy2uap7X8C0lL428UHqQ2jK1gOqyXXDt/oL3tf2McjLuKWT0nrsgq
usOyYdeiRyaNdJqwffBDvaaikZfj76pStJFSsyVrDnESPMQyVJeo2Ke58rZKSHKNy1x9FMdMbvjS
nsJFvHl/P1QIgcj0C9N78yFXdI/n44gB9BxalSrlh6Szgt463lQubDn9e9U/6+tLL3LPZ6B6hzV3
spP9oFSemTVttOToVn/xXc+I3cLzixjV7jDYQLADkq+NHm6kU124lY28LIxoar+fx3H52aNfto3N
XOlkbM5z6RlyTOgr1UvBN3Daw7O7IdpUMtQlpO1WiyEjRIOSH285z6n7E3JGn3ukBDNALQCjXRKH
uOD/ZkXKg/h1LK2yX40Bz1jvo3BrC7US1jm7c7tUX7ADRbY6VdsK6cEZAitswDmX8v8lxlf+7CPo
hqj4/0SYNKX7G7yMRYSTvjyRN4EHlMGH6kjrtnAJmSkiKUY9kRfH7rTJxkOfc+zO9jeT8YQ30rXW
IOWLkPFafqTVjHN7WhwjQ8ZSqRZb9SZeTAuoyeep3wPzbpx7bsC+0H6GR6bohCQJxaSSvAJ3BY2+
FaswIJ46FDLatV1e4VrmnOaoS1UlGhTtKKqOr7Dd4KkKdSnvk6yPL4/15ShtRCjZBRrsM3erQDEl
IjSHqObbG/cLW7l5DMRwqpf1hKnh/t+2BnkG2QS0R0xF3ntKJNvl1NfzfT+W3fsMwYTZpjtZqU+V
Q/CCD6pE5pYlYOVbmWi7kiByHGnKOjqvHw9N2KfHpHplXg8pDxsPTZOHZs861dxpSe0Dp3xfh6mE
EDiCq8DTFbhV6fiEHjCUSyZ+6RT/c3otQBT3wYGIc+b0ZniQMJA91ZkTxHVNJu0FN19ve4meLE6q
UJ0O4kT9qIpxjRfYZ3rKG3HjZOa8rcIl5iDVwiBpYBP2Hupwyvg15hLCUYxULXLaQmMX73Bn2llc
o2ynJ2J/pwZImdZrKriCe2dxsE4T+WlZgcBTpOMRP2/OoRC53LY/XimvEE9d2MUvsTuKvKA6Konj
MTfW+a4HY/pl7c2pKtcmkt3zGlpZ6r4Fefa/FflVF1/mmNA162vJVKsv2K9n1WgetIml9syk106A
pcl00q+Y6dI7+O/H6z2CD0TYsspCjz1q9iNbgRJF6V3AELQpfKukBKynSjXPi5FDogd1FQ+u/tL8
9+MmS1ZbrCYomveKsR30fQmic2MbupQHed+usjYmgDKT0SMS0qwY2WYyeZ87wsRXBiWs1Eq5m+lt
a1TKaKxkrG+gGXck/i/kZBRYb8yHu74mzJdAexlQ7Ri69so/F0v+ND5PNI9fe5fSQkH5rf4aOFlm
wSoiD0TNSUv2JyKpmsQ2iPdcjSdYplTsQKbHz55wero79MRYoNAwm93lLgNt8bKkNl0xSw5KSmRO
sO9STd+SgK8KIYEbU6KSAP+KmDzd1KjbwU3Yc24fkwH0bZaMBnGczIli6luuvMnQ8HGE1uIio6ak
QTbjQ5AKYDKtcG7FelQ5HNUUcTtoDqNheAn/Rt7ZjMWp4JMfN08qhR/Y4JjFFoQpIVaqFWol0z2A
8SJFnw++JGw8iw20e6rfjNj+ug6HMESIH6Ua5U8sr17tS986pY+UCl2yo5utOH6HAgZFKhxrogtM
HginOStfKSF+x/wmbUg++TREOxpMWSh1rMA48dZHI2h8Hr+R+QW78JAQm8vrAsfXSApC3B0oO2ZW
WWHtuYJ0vtInMT+iN+v4AfM7FDdfqM2V31WHfeTqbnGBzZGtbS9/TQl5I8sYHeeapmgv9rn3qtOU
RHE6LQ047gP5tskauVENDilxDm0hlIkKIWQ/0YUktGnleo+oIhYsG6Sm0FJ2q0KlPowPlQUSKOWi
/Td0YDN+Iq1B2jWfAobiJCdu10tk2Vm8k610sY+M4bL09Qrbnt3yb74D0YowCVQAcJzPRXGaoze3
+aoBZ934aKdhpyOEw/fMUcTsbNu9iNd/buyb4YqAdZuyqkMpYUqK+z5MGZAm/zkPHu+jNqIbgqbs
o3QBWLvs7ClHpCMKdpxzDhWw2niZCEeyDRj+0z2pMdJsXiSw0juIGAujKWFUA+KiWmedVoUGnRJC
cM9wJYTRoXx5b/PI0gMbWDzrHU3BuXzqKI0UL6+qne9ZXTsakrw0i1U8/gADse08Hxu8XfMz6tmM
vRkJR9XPOD8+omJ2gWkfca68qx9ovP64n3xiBJG/CmBcuAlSDDqD+DmEpPf9lMuk2yqqTl5kAbsT
u2eDWS5eMgvK8GG5JQFAErtFpeVEOvvA4RasG6+LobJ6VwC29206AsH59aqagNiDh/RKQ+YA3EJS
ER8MgnIvX/BXzAxdFMCQaI3sJCKD15nF2Ao8oat4Cf3xi9XLJtzNeUItPFy37J5l0ECicwv4V3rI
YA2/Y2oxBgsM9QhDbixPpw1tkDkxZQHTPG21X5nYeJSgKmElGuLCKawaT5gqESL9hRk3Yj++UNQU
zMCW58KkZpl6qQLGG3FZFHO0NkjO3etNLpXXZ3N3ZcKvoDdQjxmYMgjfk3WnZ2VuDtp+m8zd4gWP
rwQJ4cIrN8RmHAGa1owiaYEiV75UAJ4n0X/8uAQWcFpf7rNTupIwDOtZzM9T5rvK8FaORaWq+oWY
kgaQg/LvHBCfi2EndQfJ93E3Ca6K+M+UaxV5Rsok0fHV6jt17iO0F8nW+ZzdX0JzxG5lDCia0RdA
ersKGQj2ya4/bXfUtODbVJ5+WkCQwH+WaRFf6sytb9AyPEpkPoxJH6QXyvcnY/co2NDB4IHCLCTS
Ooe3Y6h0JDT76JtUSiTkhtCdVmgcD6NoUcgC5IPbq3qLNUI/4wU5WiJia8pBWlXy0ocdpbDnXVE5
BJCVUlDTERXDsXDyQbXjupyN58m1ZclI1jv3xyqDa6IcfW9dEeB5rCjWme7zjPNchhRpR3vh/bqx
MtmoJNgx9NtCvp0w1n3BdBufGdyIC7TD8/c6cfizbfmMdE5JPoipgeFXpRpYhBzlZRvSRQPYIVcd
vd1LTHsBVAwXMvmuxo3qS1bZK8aw+XtbWbjKXUbh4CbZVMfsh6b3xFRQve0l4c6cR7DM5PIo32x5
Bu5Dqxn+zlEAqBSaj0orePa4mkwIUFcFGv+4VjmdPeYGN3yGHXA71MsaaqLHOZ5QMEubX5rwNPL+
BuSluHbUCNOp0+AC3cC+QiNzTpByOCwEHqxIL0VbYfAwtuIIQRnEbSPyUx5+yQrY3HAasR4srOIM
A0wbgOxx7YvLSg/RP1m9cKXbUI0WurIKqPzaxnBYaY/MuLPIkriJKeI1I05UufWF/73OKJ3UI6pw
YPaNX/xJyaI207xLvpFbTpatKJrLKT4vGttNkN9QM36J+As2FREpt+i/huNQ1kwCBU/XTX1H/hfp
apXJOC4LKhmE9Ofr4uH/CjlpbQ49gUDBJPYLSHfRTT3gAn//Vmgr/WMkwS+6Pag4sbNE4JzfVhLQ
Npk3YnRPpuhJHiqxK4+cMcSDbRENlT3maTW0qgHfZmJcE3ZucLTOCAmmBVtH2RtH4vUvw1skko9d
xSlhEeJssZgxrbpCQ3i8bxA85/kBwthprGnv6egCNO7LxzJplSt3/wA++8pPDo2wtH8DnUPXfRid
eIjio8GrO/GV/bCkyPXefpwzZNCxZCssQ7Lph98P0rlZNRscblfhTridbPDLyWqhw+YLbY3a77s2
vCO3TgVrLdl78P4wlH/UVFnQxYKHxqEYxXcbgTL/DcKzJnB4kScWIRJ2ajvJLqD+xt8WbaU65NtS
rAQV3Kx+Po20L0EvTjqcaI3ce1D/wExpsJ0L2Ash9ZbqzatbEG8PAm013vp1+vKmDA2NMSDu/VTk
fiP6RPZxU0V+mh+XU5a39TC0nA7C//P1fwlI+J4PTWBv0qXjUUOW+R4vtg3V8ZiBU1XCqXrMUixA
nN3D788yYW7oQ6tJ6No3Bu+l44Fl+xVI1LzinMTzpndiM5Br+ZmWJd+5RTokerTvSaoZ0q3EmE8e
BtnE0QwC7+EcY45BLOkTkXM8JOnCzH7suWpFp5caz9BpdxI7gBsxVJ8PECLuzwTB9VseyRBrnmYX
wHMcnh6YaLWCCf3MKbzIE2R+f0UZrHgnFSfdIaM5maE8avRMlqOOuYQD+Xes+M02+aa9ZP0TDpfz
RSEbCQHdmjCT+Vr498V1qc5Oi/0KuVIQwqIyEOB2wQgy/Ci3eORA5N1rrfmtWmZm84hGYNCJTzfm
Rjw4xaWumpdZAxJgA7w+r3jq6fT3PMD+hJs8/Tu6Kt86wmLDBGZoVrqGW5uJV1v0wULdnjtM5c05
JvUboAuypTfdMRrYmPCMY1r4RT6LduYfDvw0UBOKlWfBKU5UlSO9L65z/0BOZbxMZilYrvYzB5Gb
tt85fbf+50Syib/BWjJKn7CivNQhoinwIybpXU/yyoH+eaHOApsazG2AUVmYUkyh4CwFLaLRs4Dm
8lMQNHd+2v8KNl15b2CKDoEALQ01NqO4OVT6iaRdsQCXt9oerxq8D3GqV0Sa+jtQ6VwSUYkBpSno
dNmtxJkg1iT1WuaDodsmEnKSLupIzb0gTxCGYSw2Xzk4T9dGl9NHsTrTkJOFOFoGBof6p8Y7BNJd
V8GVf5t8Y3vJYp/ebEIdjy+Tl2ZGUp+JHrfeh78CbT9YqW5yFS4dBEM5b/aSFEWP5RM+2DCS5GcC
d4pmjwHizMLD+EsHqOADLB1YW1p7b3YJSwFlgFjSP/1Bj1XQ3ghsk4OzGNNiOEjlh0/eHuE+Z+4y
mjPQVA7tHrmS5qWnrkBSDe75gdzQwl4eTRO65A5iHGNvAQnxLpEqqL3EVSOamYFUjFDc5XmDpGAK
nrXlns9ms/pybRkDked53Tce2BbPuDEoO/vo6q2EC0GJ4od7ctZrHRQ5f69iYukBZAaJXFldn9o1
hCm6q9lK/CSTeY8DzxkfcuuHCpbqL8t1/gHPcP4HmksaSl5E4imKQyLBcHQUWoigDq8KmKlAaiN0
jXXI8qodFpv2sfX3kNMWsOWO3DM9pS934QlyoZV47OLuPTkj9nR360lxZCh/Z5S37T8z6I99mYo+
GVtolgIbXxoQDmtHH8aDLGUZvLlkhfTIMXF1NNIUKYQGeTXcOGu/nXNwc30hnRa8W67vQSpkWBy+
8v4zuhYGWV7S9b5StaqhU6Lg2WKBZiRawiEHrywaxOYgPPGJ8q0lwE8CQdryoyTQ3ODh6PUV9gce
Oqa7azhbMQcO/hkqlvemVTmhwZlJW+DLmKCvmLweBbIeQ1h4RFVNIUrn8ro2RLrlLPkqVr+Vm9WD
SXBUxDa2yZTl+yA1tsJOgnEX1OMpO/0cExvUZBIX2jS/hRVyKNB5DlnVGzztHKrHOI8mLZ8etrgm
u30CGynP5tRazw9djPEs8t/vLGee/aUQE+jhk98CbNFHkXDhf+JKVFUZlIWw7G3E9MvVjbdqz959
JOiE3fcFcMpDibnoB+C0Gju0kkjuJvIPZ81k42+6MbAJCjaN1wPlje/fdcb6198QITZRJ5TrnXvg
tl2HsiVEIiPWxiqgSDBfPgWJDTaJ1VjqJ/HELAuy9PQe/LGvXmk8Tj5plR+OxBgXH2SPooRK1E7e
Qlcg6g+27wfvsJ3jtXT2/zG7UwG4l2+yIsZDRyq8rqT3WZH/mFzmlxAgWdq7IrEnGeYcAJAwvf4o
3FvROy2K4wszjS9f5DFnzUM4ScHNO04H6cCv1hpce5M6eD15YBdBauMwPaJLTsmYhxClbXzlxa9G
sSH6qhRMYqFWUneCpW3evbMlA2ePt6RUL0kdM6NmVDmmam8eM6yxLlOkWKuNL2ySssmZ9t3juMiP
FoLmx7v/apc1sPAtRldFRH84bcBdwIccXZCyRxUZ+LH2raTZz/jOV/riyMoQqKBese5s3R1UzyK4
VSwt5c4OZIcI0+HVHfLP8UZO1Fhr5X5pFVXGFiHI4a/uIuZ2EGF3kvYgArVaOxOlZSOf6HwYwFl6
5BpzVLOAk5SBQvN002vZ1Lw4TR4hZFPHR3hm5sf8A1i5XHcuCCRczZ/E6eP1HAgcsjVormzgVug0
MStuBWufq0+y1qRi5bF8i5qbsNhw5QXYSDolpOfOyYh1aDzRYHfNXEZih63xSJnXs0+MwAvon9IV
hvNbuf1hM01VM1BE76wPZR3Q7CeUSSNoBq5BBQdAyfJktaW7hEh23JlyqiQxD6m25AwuqfV/nzPR
THpu27RS/JhDegwq2/eWrA7l654Qn1Fm2wX5ue/B+yJT7Ly5E9UybtqcftPS0RHE37MAymY7WaYs
M7WUJKxAX6MIXpgxPgZFKIzuIPqC2E80maRJeEMvuOzPjAoidyuWmc2+8D/CBGLUzYwC6kdj+QJZ
aSDz/1tBSt5ZKm2hwqP4n+tmpwwj3HxG6E79hTHDkLwCJ3HhI+sf8t0O0VlMt4sC84e+9MooU5NJ
3O3ARcuK2f0vWrZd05ZMbH+gCVJFCMzgYCp8o9y02bd6H+kEwNjVqxoZZgJ4nbd4vqqlh4p4rKDk
9UJx1SXjVbfWS4nthM190BJB5KnNQ66LTJqEbI9VJ+sFzr4LQ010rcC8X+G7j+II6WbcRMFdPufs
vZF4HgqFYqWDn9Xk5/7foZR+PbFiapdGDaA5i3V9P1oTlG7PSBKT2kF/1utsB5CugvrtiiCIQdu+
UMUFtx9cTodFjZB+AQ3kx91OYkIY97sC0WjcTUDafolbu1DuuTyNzTgyx6EHErwPBIPoY31VSnUz
/Cgim9G+VGQIJtNvgUhDj+NTyxJAHO3u4on72rHNo6nKP5XOcVMh6w0p8zbxWOtmXAZnP1Z98t3o
fi1j5r7/SgKueUITKc1mUAW0Eg8YJtgqgr/+TzADVopKkgR2SvyIyyP91dD/a/tYF9Pm4F0c4zn9
OIFKtCdjckdxu6EmO8vxm9knYY5dZmdClqRXLBQLgL3yCZTRP4AoWnAtxeEoi5zTSQA9E9+M4i5+
Atnly9NcAPLEDuz6ORcNs0kIdyc5gMx+oStY6EhNXBIYcCaY79KUCOggquy5BEPPe77WJzkCdtHe
l5sApjeoFIP970Sk48VfEG7tUguw7RLQdQiWQtqnvMNAcdqHOPMhPr63Kn66vsoYCW9G9qF/58Sl
QA1DE+1DBjR/njJXwW41HYMqbKTV7bUqD+X7SbkZA0AkcOL37seEimdHd6PTYhWZ1jqwcYUCVNX1
PqLpy7CFF/AdLFgXGvAU7T0Iyj6VN9+Eb7uxtsfMI7DAOoeJkM6vamJIdK0bg5gMr/cSjJvNubw4
yprWXVRJ8lNVPQUj7akVIKGU/geK/u5cbQNtpH8jZz1j+2thEcGHdnr9yF+aZ4Ffhaox0wyJ7gls
xmkyHAfGQ2Sy4eyzebJsge+hpaG/+0mDv4r0Py5mrY+nxYB9zThC8MLtsmTM0PlPSqc5unzFPDXe
WXvf8KBnB6HV0Jmbn2KVi/XZ8U3YdHXGfg9GQ6l0DXdGtoggKoetFEKPwJE5FIe0CJrGYE5xyXf5
hfjR3j5Nh4o2K9UF7/VrOuYs4TqnFhRaiaHe108mrEQ/BuyD0+cWy/nf07mT6JFaFzOoHiPYwR9f
5ZLgJOoh8XfHO226oUtkcg+OizXMCm8jeRbmi1GOeJr6TDEk5l+WqKRpH0YFNVn1uwIxMKR9yoEb
ZnbYGUoscMe2G3g7aP6vgvZn9QTGM9fmWSnU0QULzzP0pGplLDfZjpGJtXkzQ+guxfrsD8aSxc84
ws4uy5183E4tNoUcs16/KnaCnlUCAEb7WeXLs5bNMpu2VoBw46pGr/QD7WmGsW5r3lO/znqL4FXc
dBb7tWhPxIRegek5SZL9zwMC7SCQoATlm5sVxegUY3F/vwhCc02m77RHB38ZyOsluMIEtk2TOA4E
wvqb3Xw8nK1pu/ny3O8npCi297ajOXTBBwe8OFEfrXr09JL0m7SGdds/K2tBqIfAC6AHebKzFR31
ZuRZ+c8tlxnYapluZUsuhZHSnp8jm0lKk29Q80qx4AkA5yYnCxz5kFwa0qbL7vyToPKENt7qg3IA
LV1xFOxzJ1MULO+k+zcqW/1MnySzvBUPQ80/aBeZxcMrO62IklNVtqQij5d12htD49gdsvCE6d0H
xamA3RlRUxmbaoT1IF4Ritb2WFDHOOmhRyBz66awA6ADHMf1jSHoujxJILqq8VHFUpCBiR9m++yV
eD0K6Fo3IFvdTblDb8RvpHeokVzRFmwRtqR/QN7owQqjsOCoxn+NF3DmYdtNjlwj+L8xFL6soVLq
78FqJVlHYlS0iipr3pEWDw13rdq0PaElt1dPgBkT/wle3D/YrQeD31jo2g9xNRUsH+6zGaUI5SN/
EXbML9tMYNnRWsrY3hqfG2vGzvwG392TT8K+9XkQFXGRcB0uRfd6GYCV4F/uVA5zpczWVlp0sYFM
Jsd9pS17zyROpo4TmFmvARDDOOiS24mLSXgOOqhuGP0SKPYQTqepbPJG8JOEdvzJNcz2wb5S7T0D
C6HY0wsdw7rQ2T6PMhX8Aki1BUW2iMKm+vmk+EPA4u64Tbcg3xQZE3AY2hJQr7f7q9Mydb7btjOx
m51ZjW2MWDehfZGR4m3cy7SRNbtDhqM3M1AcWlvhquq89q4KNl71hSoS19PwldLbzVTS6CQEoAvE
ncUD5lOS5hH0V3wlO7z4KGNKozQdR5JOOAUKBdOTnf9L2NwTk406V6k4cct6C2So0BYSvzE4vv7q
1RK6gcsijN8Nh2kzwcEmVfBqwkN0RYFc8bQHOhMpISc30aYlp8vLGjMPKcg/jDli382PT9HKk8uw
nNa75pDoqZD637w2xetp7/n/XF1JaruVBNS2CEzwJZxp9IQt3aCYQGIvg895kkCAJvLZqc72A4CR
Q9odh8zzAcMbjWICukJfEyw32eFlq8DYkEtw70VQ10l3uF+j94cRzw6glUYiWI7pL9JbKOQnH6l0
3E1Wz3VlEEXIP4mSxOsxRChfVvoA/IFjRKeYWRTpr1/GDEoHZlrxG5ygJkwQqx5ePWNAg4dbXG6b
Bz7RStLZxHpncEBBv8DZYPCLh18eLxDXuDpa7U6dC2HuDXNpJxuERklohQlKSFcTFQGzPQtteSMV
MtBwrG+pL8LmD99C2epW5PkRc+rqkK7AW1Pltz9EZJvA+nL/n5iSZg1KW7HYzJlXWJ7zzeQGot/S
8uZ1DPIldPpkAlGxycBOzscTH/OTsa3C6dk0CW/CmwYh6MIbfLfLo3teIj0I7Z656djCsWX4vbhq
b82gHkmTTzX9kliUFFhW8N97qx2PSxFA6NMjC5EpKxj4QZg3KLJaoMnci7IFx+UnOXa/s8SfvG04
F8jyoLUHS978ZJPyREO55GcStTeYgGKnvNZBF7WIkC2pgt5OHe/ThEFjLtK+RT1/+0sH+NNkcBc4
s58OicOZz9IHFOttYHXh8HiCPm3vtNdengOuv1EagRBK5IOn/ZSpGhNBF09AXq5i5EixtVgNZ249
fqnpbcsyK5LuoibwZ5Pn48PqotF93Gz/I2U8eKgPOyPok+UrE21XI11ZquZ9Z8/ngCKOq24ENpjQ
IMfIipDaCJSZjXJhnNPElnOmgyWX1mCQIe5jS75V705RfOXvrtXLPmd8D22XibZMW/k7ByfIYTOw
LlivoOSe/XHBuPFz5OhShX+OAaz7Cq0K3hzk8C1hSvFmWVJqy+UVOXgQm7QKrf6pq2RPwlhk2WOR
yyKONtVO1DoFWIVGqZ2wIHhEEW3aoOrpnBh7xfv3LMkEFLMUPPtoHFymXQvSlFlMXZ4lq2i5RwGR
eiJBMgrJtCz2WJWFIimDamrEUEfOXKCB7UZPavqmo4SOPX21hXKI6gxx3szZ3Ny3cZCS7BKXxXCV
yUJH1Sbgn+3akOdCEXqfqK0TB9a00taYbNhBr5z5yAYsk/HW1aVck/0Ic/2X0vzX2wssq9pUwO5q
pFBtPofWL5gJZiLrsW9eKZz9VUcb9FxgGwoWt8Oxex0IqUn6jN3puAgEhC+6KsY0O9CuwNnc/hSx
OfBUKCe/yFtBYTXH7nOXb4q2bUVcXVXh3BZ5VBttvbSfgh9VE6NPtsyi2U8J2HkFS2Sv3GgAPFPw
Y1L/NAMCTlXQkx0WSCODUpUr4sfSVZhWYCHd1MiQ51z1OWCCTOYBUP6zCBC55LI2az5NOToTaD6Z
82WdHXZIiR4ZDqzqU92MxLWHtCLn74Lwsz58ud94WjvX7PKoPAJsomuesEXT0VREu4Jm72L7PZ5m
zodMbm2VzAwjs2FhCQqFBL+tm1nVP8EXrPknAeL5hE3J4YfkEd6vGgRMYfPphVbtLm1nNOMN2e9f
Wh21sxzOuuBEGEPNONUQFeUx4JRJYSCcGpT1P9q9Bzk8AZoEojE32i7w0OWJ+zLHS35tUndKkFUY
JzKnSWu2Uq5A6IJy2IMF8Bv986T5vzgwTYDc8OblxTQuSaioVnQdd2XoZ9XNaPs+QiCfjliYSTfE
jsbGkajuDCHfZkHWDWYH8I6eLuI58bwoUx2vBZtIy1sW6hbNDJkhGJAhgFlhM4uvsBvSdthGUaFC
ICeLBwev3rcM3HVQslJ5+cldkm8YK8e+P+n8xU4rpEyZUGA/hljoEaY20MUSbFwtaU5QV0kBN+YU
JV4lr/xn+RCfYlAbamNuA81/Z7emvsg4jboMA/JRpcht70GDVo652V+UwYH8NTN2la4Ovx2FJoqy
bjYQ+mBy8eB5FZa4Sxy3mpA+++lxjgPesprU2O83loTzbRgrw1RUrP4cc6r0TeUIt7duUYKH9UQF
I3j9Ltls/rYUcCUWGVZg/frRIwGZTEc3pMUe1vkE/bK+/W0jRezLjpqyC5JP8tdVB4YJJoet+1ta
GTt+dCPqZmhGUESk6FXdXp5Wl00WhIlDUkUAxq7MQgh5P6ki8f4+ASi6NSJVirqQ0fxDCKMeVJOp
u67NJSrELfT5cKcS8SIUaSmGG+CaYAfcls5l+hd5RyLK5p7Zj8cEL3ARKXs9VXff5U4PGjQavMUV
rDBiaynEgZa1P3Jl4tnEz6kGka6EYD9uUmsRMTcHoQ1Gc8OjeTi8+x61+8Q/atKoUQbdz9cP4p2H
K0kuhbnVFUYjvQvniJbQFAXVTsNMJL7dqIYJsdJKrk38bJJu193BUHALrpFB8CWSUvQ0mUCCrCyN
HyKlKz88en49KWAkqpB1U5/QXiaOj309ueemJyM4LyDjTlT4mQ0TQrMvEK2aX3j78HuXz+HvqufV
aH7alMscdJnGjqi0jOIVUztKPi3vNVFvM4hbjdKbVSJEEwheEAVhHgatQpZLp6JrfgvO/26n5SNc
anaLpjCru/u9PmZdFXHZr3A02mAfVwHKxXZ+D7tXCVEPPbfowk839d9dheQuwQv+QtWkZc3pA3Im
6BoA9k3s+WO7JP8o+vSFh+qMEdZJXM+tInzhGLWLEH6Wi6Lkv9Rb8GKdPhfrBEhD5ABZUA3o76RW
O/szqJ8ntZ+gZKqaXvdMgvqCoGtHg+FCwUTN9EbvMzW9xOttXRm6ySs5d7M7v8DRbYpUkA/fmjyV
RbgDmyKVmsga9555cVf+FFRrbKhg6u855/sTgeC8z8m/4vdaoHa2mZHu1527g0poPzmMub7dkqv1
UWGmUT99rNxMZjAOF8P4RWg0IPDHPqNj08KKD0+a/51O8cpMbLYy6JBxKNl3HeJ+sbXAcGvCpfyP
vaISPlVYwSrJHwdHDRYzMqYHKblauMvjaAGFxGabhgexM4/5A/VA/VykqnaUtMKpboV5zPUTac7z
3a1BRzlXPc4PfR4gBWzTFhv9pUr3zS3xR4rDuQojws5VLmgc9erVWGJYExU4es/CH2hETjVr4eZ5
/Otmq0lzMYKtMToMWQwW1wqMFxijlHJv/6nX0f9DMoe4XZw5NCi2v/FA36RbVy+10iNRTFq2g1Aq
kZOoAXb/rvdMONYzZUfeeQSHDgcZQbx7cHLv2oL04WsfPBFFdXE5N/vc3i8l1MsG9FlyfLiruOaC
uAgqAIaTxZX3Sj52oCKRacqF/sSZqc+Ks5NM/8h+Ld38sfea3e1xC0qKarBDWFBiull5hnHIKOlO
/vaWC7E8VLakEXTmijt/fdASijqG4S/L5qglUJ0LrbXlzX7LHcVOhJZCeOY+azGqwqAjmfe3V5Jr
exAKdnCmG7TXfie3c1zzuuGNi2D3I089E3rpqnZrtiRc/ls7f9P7gvbJdYpOPkxTDzV9+7ba7meq
nM/lPHqwK/iS4jyeG5Ts0FPazb+USTv6+hQolW72nM7y0L2MS72rpCL/QxM6mGqsPAHLUbmopjL0
atF3GqLOuxcWBvrsBYUneH3YnV09EghpO5uQqidv0jvLNeF0+sHtTtrJBsgfCChRG4KqI1WnVacr
eUJLTj2b3TPJUk77QpVY4dmtNwiVDgOVmmbd+3wtIVCDg4HCRjAVbGBWrnP9PJK7Hyo4O7GU1KOf
GvOXY7+d03SEo3Yg+GDWBqI+LKcva5bNz0iBFvP2lNErtdDgosIHfXxqyEkJILhFjoFLvkYCn2/o
njF1AInEousUyTv5C/jNLsHnrUe1qFIsoYaffQqVN55+jCDrWFhA4H7Y4i8610vBkyUHL96L1nUF
peSAhbMeHiX7DeUEE/nFJ4pETGMoP3vPaTocAW4Lu76sWxB9RX3+5XG7KAfw1t+IIzQ9B4e0fw7G
isxzZ0Tf0w0ESXuXtW+wrlWNDv8vXXgCh7MAUYWYOu4jppAdiRF7Jb+2EEJX/EtKJhlC3BGpHsIA
uHFLBrpNRt0+ddDSfU36w438FG8w68o7W6zeFHrhxPWBGZvWLJvvhSIQlFIsn0HVZdDnYlcv+Vwy
ppyM9cnCor7Aoyp1zW7rdD+Xd+7bvlkkL6Andwg5uA1N/8Tdz9nNakus7KNWp/NHs3cyYKbNbEx3
RVL2IPNBlVApliA4I64GTVDklb839cj4ivqkNM42ApDV8rDc44/Zq2s761qC4CTlvyXrzg7pmAcJ
vXVvQz/spkz3Ouy+xjz1O9/2jawxTiyh1mOU+2gbeRHBXcMY4cQklYiLQ69gv5Fd0DK0zEoJ1vHq
kYcUP3ucFJ9k/vgl+T9pp/hAfEWrSE0BN+OvescZZu45ziG2akSYZAis0wZMsO4fUdc2QKik9478
pXMFsBgLrtsybAY1zfdWW64YIbuqy3CDdju/EPiujhlMQMqBkGOSMiE/3MI1jzQJ0scGYb5wS9Z6
eg0yYrQRlTJEo/jTrTho7MvPyRNDQ2nTuzmn0s8ftq3RFT8GKJHfaM8muYj3MA88Fexycpd8bCp3
9hN4GYsCWdZDranzrMWu5BkEf1gGfPw/cn4KRFCF5pfYL3/NYLEAOeOZE66L8poSBdmiDPu1EeH8
IkSerZ+kzFVKlOGCV8ArDdZGhc9iN/NKJJGbRAA/mNmLrgGv3jQ1bNnNqKOAIp4jadhl52gvIlit
ii92U+V+OzvZCKW56ruX+/ZrGpNvTX2l5LuQ5hYbkhfqYjeNsft5hvDH4DbQ/aU41FL3ScFY4roE
TuT3EP41NFLLmbpurJjcWyS/rXv1gburejiT74H/MeONafLpcclhvcqgnbL9iDOoUt/EIYwprqPB
CG+f2kAraRj4TVH4wXXADo6H7tFpEoroXOqXfK+qZrbNevXm34nZS0fbGF5Re7K3G5k1RvQWLE8j
ezBh1zFVOQwe291zcJ2kQGGZApJs/ToEaU/lxZcAypV1i02hSljrMMVvNfT9OmfpDVh92q7XZfKF
Sf2Afc85P0HwIGMoc4HF2gwrd/C3PjWptM1LIGkJ6vUj9xx2yy+0hoEyqVNdlemlVPQY4CAoXyIv
HMb6tw8nm4W8Hrueq/3o5AG8yh+JRnr4+aMYXjsSS/jg2W6bgxXAUMpaGkL7pqY3cKc1ooSwL1vN
6peREuIKIVRLAUzvigK9vRJQh7dw+/Cp8w3rNjuUb9Jwu/7O0u/VIxsJYbOzUGU55YYGyv1EztM+
y6CXkHBkUrLYVcBOtNCHBmbPG6k5xdUPN3izJPtSxnaCExPtLo77joYs5xTOj3b8m6YDaLdw+8Bs
ksM+ZIuUE++N9e/+VNf+gdraqu3zX+ZgUpjwtBgHfFfASG0UTUaPmDKuMySuRWZuNLm802j97Ib3
ImLdWFwSLzdnPo+s+9JCO5QOixlf7WhnuTh0GqzPp6qjtgMEBYIFrQzv7nabfOMgZ8oHdeKnmRcm
S5qTTHOfy6/E0jC0uiLl+rSTQ/XMBHNirnG2qbC5xRWRN/IUoloAJRf3pUZlJGygi+LB4NN8oII0
pH+zEJ8NfqoNye2dnWl1ttMIFMqacig6iw4a/Gnm4NTfQw1fiHFw3qc6aZdL08LZhsBeN2aq0nmk
i/jX9FSFF+1VY1t5EHftYw4nZrW9NJWOalFQoL9zWqfXgOFxlzRSV1a+OecaG92U4tAqAuYx2Kmh
rCv3yAf0kz711F2nCUdk8etXr2oYtMDaKImS3/6s3+5oQB9NT3NOfn5nQAM+fjFLxXKtolS5wDmI
pOm9RBAbeZFOwsLrRzOaOy8/W4Ogvr7C0jKGHNIan1k2MjJ6hnDxSMTyvH9A9q0eWD4MhgwGUUjl
eKjSAuaaycwrHvtm6nbKlXAbafJQ3y9okkSj5ewmt3/GIPSty7lOzsiQzRVgfT9wLp+YXG/47Nx/
rP1OXaKjnYRQqMa0te6XtOcdwy437wj/iWXD0+1yU3TKPZ8GnWdUNJoHPC1fzVSthstoOrqLXQr6
uecVYhGlXvliSw+ddeJqlhbf5C+8zu/aJsBlb54zdIoX96yvh0GwQnieQLrXR1muil+v/W7pW6AX
jf4SEpAm0m8tTy47Oy67txoQ5+trqRXK19FXncXBbxbZEFswWUgc/cXzhohQfiysA2pKiIe15Kl3
j3mlIJ8eJppTwT3te5lzSqKtPp0GZfWOmlPBe2DJEdv043aw7d0SVJlbKSdoQhx8EzJPIoMfiWdQ
he5Bdx/9+cEahSai3K5QQxZ72x5RS9DrrT3zX3x4UhaEcd9pORsvpkCntqSH6MzVAGgtL3E2PLKQ
OgMZzcfWSzD4fnCVqVQxcbwfPGzdKIAnDD7b/GwtgRFqRzzdpXxjkzVTLkGVYw/hTHUgm7FiUPpL
PNDkyAx3Y0Dnsa8RlC88G5jD6/mkyZi+c50krVpZ04djpJqNq6yCJhbIZObnSoNapGxHnj7oSkMM
mCMC00FnwnKXxexMEwjB6J4IsiLoX5fiCPTC7+vhizqYMpD9yoD/z2CyV7Swzw/L++Y/6HRseVh9
FD3p33WYych5lGlfouZQRc1vQx8VYNUdiU21u23PWAvW8ndvy2U6SzEiG4iDfr1o1OpJpW5egr3u
GKGAIqNPxsIbjcegBRZnlL/EeObFKMhjqL8UUgdjxPZYkBQAHailmCutEDgpdSEDGFYHcmx+MYlV
LCKNyFFJhJN49Wo4s59PLHv/UAxnUjyXUds/oN2VBbQKvSqeTUngKs0zaGrfkndyV7ZcFNtYroEz
lhHoshsTS/NLw8Zea1kt/C+HJy7nmR5NImu9qHfDrbPH0jhNEeJmVS6U5Svb1A7BqooYPv5vWf4A
NQYvghKeEwpNrqNW3swQIe/V03wFwNi3PDr+GybVHrAY5i4eR/GZhKiicVJVO76pq9mx5qSr1Qxa
9isxkXZUJEQd3/jmWoWEKxftHNbWX9eajHqgJHOWU6IQJerFr49FOOkrFwu3T0MTiutlXXIHPsSr
+MnKqy5//4b1tR+EJQXrvkG/A35NZfvv+CKit4R1qWrEt10RxWTkTxqyXBmdoJa15U+KqQm3/8hW
ZcT4T5lAI/8RdK2JNE1i7fcJfcKfmJfA7SXDsht/viK54Myn1kWjvVez5iGZQWMrMjGP4mLGmc2H
LwMV1e0plHIa1JDuisTPA2Q1w1+yIQzOmWw2OpFDWKRFUpIbleh9FCBHc7vJXaOi86Wu01KV10H6
9MrNPLh6rB0oolLcwgi/BaTC1oWT+SAl+8gveuxdfKrrm0vGXjw2vCIaV7ySJnsAhSTm5C4149P9
Be5/ETMIeqWmSLrhBS57ypYypiknmjpvxm1BznGs1myS8CJijSKsttX9B2FF8MK0kzrJVT1I6j3F
FTJR6IDf19udaMy6wmMtOVuODGS4Ub7iYv8ADLRnrRzlwB3JccJQnVnIwnb4P9dkGjTXGXpmRfn8
Dtuuo4rzuArIpsqSB8NhenA35sFLNyRLspWp1bJF9TBeK3FfhuwPXXwCroQMCSpZMzrDi4gVFh9h
v5EjAcu8B6db0gU1UR2BtZtoD6xkd6MgOcbSe5KdxcicTs3ITsjS4WxWAwfyFe+Egmp+vErMByUq
9QEGSqc3xN22NseCj/HADlzzavHYmyG2rOgK6V3Ox77Z0kB5izkaHbikr4Hrdli6QwLtQPWQ4/uS
b27poxCpoKKS1SpZHEAUYnRuLl3t3DEa2ewAMEsHsoSKe+IcPekQQeXGApSyyFy3EI5XOFcwabxs
nfcDwCrSokT/AMGeqOXuf0SwqKeo145/XPGEMDfJIs3GfBHlCEO0UC61CM4bcfE5ZJ43H/yI2cvX
hzyegrLHgTFw0Gh7EqbhYgdsWMKrsCxYhYuhql/OoIYoE9SAA+bg1qdgpi5qm6wIG0Nnsrysx8or
Q3xF75HuBrWBP4AoMC2eUm3l1dUw4BDGZ2/twprMi2xd92H4GIvimeuS9y4nWFoXXTlUXH9VInbd
qABArL8V/9EUG7ey2xYxfbMAWN7xKOe8WQX1z9vhyKabpaUmL6VdEvAPh5abbyJuF2FieT5UpDyT
Poi5yk/45y906ieUeXHFmv9bAhTHZCWF1gDssa21lm46MbcYx8kkDOIvjsaesxi033G4+yjx+evx
X5Ow8AKNTifOxI/sYZw3PavsDl0FuYaUUXiK7Ler0LdqhP7Y2O+ztIYtoJVVPTeWW+hCQlueJ1QB
RZlaZIyyHEkoBkJQi6AcJRdUOoLzqjJNkiHBPkQ794YsdLk567uvN6xqDFj5K6d0T2Jw4KZH3pXe
aZB3pQwa4qhNA0TjVV2UuOAEc5zxrTlOvxNSbZxGLXfNOP/6UFcl/Ckz46AsKibhhIb69T++bx+T
PlECqNvOaSnsOj3sBw0iSNFCS+1pMElSH6BREj1XvFBLwam/CiviSnfPHF9F9IyEwuTH9BlQ9ems
UhReGlBg4TWvUIerULVOKbSDYX6H6bo/2Ne+F41Qlmx3SuxaP6FzH6oM9Vesg7k4HmnvKi1VI8yZ
s5oRcwIRMxDJ4mLFkFDmNSVIHW8AYvjaBN2+EjFmC5v0cwarp7ujQd6SpQ3u71Q1pvfUgZWLOyJ7
CBiy0bb7mM96qiWkcrAY+A1xjdqTCCJ3NmnxAljLRWAJCzh5FjM4Dtiox+FochZaTGYis5aQTNoS
ptR3EQYAXMLSKUVrsYBlQGKbpFMpn0FzVqFe32RDRcERq1sqBq3+ndDkFX9oulZ/msqtMjSGh/8z
/s7jB7HFAH2FWYPwp33PEXd7t3NWHvuOm1lEijvzPDK3FWA0TGVAzu+sP8/QaiPciMMCu3xLhsFC
2qk8ioXXsRvKp+Q8iWXMe0OzyrXTX/X0+T+pXImdcm0lBGT8iqBueJZXKrHvJ9V+T95Sz3sxZMCx
86aCO0DULQfwFl9qCMUVdiGObHLNtGu/k+p/ccFsFeQcbUtDq9k+0Ysk77uGUQolfsd9Pj4UB4yj
sMnCFqA7hvNF2ZIzrPCRzf9eVMkVd3W3ZpDkzrCapVM2zf/Qr/nUB/f5N4DPRPRA6u/UB2MR87W2
zaTq898lUOYHVhVa/3zwFk8c4POD7OrHfEERDQzsXgqXFuyC0bBysr9JYA5XPsWYEMKVHShdApyr
q6NX/4dcLV2sCC+xccIkNBABjbmSyBySeBTWhm5oHvlrbRP5pZj9mNZz/qetGgA++mLjTohtgyiE
A1B1KcFoCzT/BPYEEojrNgM/Nd3som2HWBmGMu+tIvlFXwmjoU+Xc3iFgMnU0KcCOZLOBbAesqOx
+FgcgN8wQkfCoX1WivQDxSRnIOkep5HYGg5CuYO87j0ZIO0S42T7gHomTymOoXGXQ24N2CiZRMZy
U9mRlCpEVvTSOGKp6ZP0wbhjGl6ZJZT5ZAj1+w5NztpexCdH2ZWWfVKkS1IIgXAoJGzGOOyep7Sd
oTA0dPEGO25NKucfB2QIeTL2xRb4BYqcwHt/LGvPsp/mHT348LdA+EhHbYqXHtoxVsmvnH09gJMm
bOWijeIp5R7mgtFNX26yG467uzh5paBkyKmFbmdDvKe0kdFo71U1A41VhJmKG4CsFkADIvZEZRQk
iIsoGXnX3B23eebE/fbMsOJ6MZ4KPLhWOTeU2zDIVkAEXrNhOL0NSN+BfG194ckBfULdeIU5Adia
JeGbP6zVpfGEwAqj/xfEpAch/MDKWY/2a7mv6HiviIJLBeoNdDQcE9zPOQfTf0OZ+jgzj+cs9db6
ElS62ogBgURuOwolZOkRO5DdtQ8qc4h3Gv3SMW+N1wojc3Yw3VR9GxC+Ocw2j5B2i2cD1LIMLbwK
fGrffnZLhIdmu1U1/mg25ERkjCofFxEGgRhcBJd93NNrpWsm2jleq08MwPmIGXXQ6i9K//PWjPCZ
h6JMrNG3R+r492pLs7Any6yk/xTiK1X7hfSLeJoe9g0rFFXmUnLAxlo0OZ+7HWOTYzOJAbAthFb6
q1ry14L3kCSC9FAtzhIEV221upA5/pDY6eLP4nPTRv2XogcICZIpucBS87r4VMk8/yoagrmgng55
D3TyuYyRHnZ6MxoaxV0EnQuV8Gs0iznvkJMZJws+sFWM5B5fv943NO8THNVe/6AhFalAO0b2HaEM
nH76QtSJzSYzmlaUL1lhxpYcTerEIRZ0WkTdiJCk2QRZ2bcVoSRYyOLhK9pKMfhJj2t4TCRJg0lu
pvlupPuy+rOwsopnIHOsfQ9lKKNZh7JhtTJmqOhCYEkHS3Q5vmPdkGnIJJckw/M5J6l+wkOtcGNH
ayev5GkHJmXsGjGSuW7nwVN0r/ki7u0tlaUy0cWiDNL3+a0sVolaRgX1PpcOQuEIILQPIwgTqVne
8zaUcct4eh8defrgbj8iL/xiEl6nXKqPmzllVtEvFZi/MlDkftiHdIK+RdL8THld2G54caTe6uH8
IMK9P5E8epaBGieRx5o6HWUJ5Q+faih7aVRc7S3s7MOGlPL9uy155p/iQ4TbG+YP/rsqonavZlbG
el4Vi0IpAkmDgZaCsd5XK0LVb7N9ElJH
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
