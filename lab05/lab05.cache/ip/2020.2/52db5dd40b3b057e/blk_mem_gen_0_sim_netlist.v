// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Oct 18 00:11:12 2022
// Host        : DESKTOP-H7KEEVI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20528)
`pragma protect data_block
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
oLCJpe/E+zM=
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
