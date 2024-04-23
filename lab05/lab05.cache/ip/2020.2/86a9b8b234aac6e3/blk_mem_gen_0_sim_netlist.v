// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Oct 18 19:38:43 2022
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [1:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [1:0]wea;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
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
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WEA_WIDTH = "2" *) 
  (* C_WEB_WIDTH = "2" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20192)
`pragma protect data_block
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
3WMiHncurB1paCtswq4=
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
