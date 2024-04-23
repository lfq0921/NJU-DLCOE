// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov 27 12:36:40 2022
// Host        : DESKTOP-381KS3H running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               h:/labs_Vivado/lab09_ver2/lab09_ver2.gen/sources_1/ip/char_buf/char_buf_sim_netlist.v
// Design      : char_buf
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_buf,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module char_buf
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [11:0]addra;
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
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.20835 mW" *) 
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
  (* C_INIT_FILE = "char_buf.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
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
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  char_buf_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26384)
`pragma protect data_block
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
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
