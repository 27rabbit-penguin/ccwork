// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:MUX8T1_8:1.0
// IP Revision: 2

// Forward declaration of the netlist blackbox
(* black_box = "1" *)
module MUX8T1_8 (
  I0,
  I1,
  I2,
  I3,
  I4,
  I5,
  I6,
  I7,
  o,
  s
);
input wire [7 : 0] I0;
input wire [7 : 0] I1;
input wire [7 : 0] I2;
input wire [7 : 0] I3;
input wire [7 : 0] I4;
input wire [7 : 0] I5;
input wire [7 : 0] I6;
input wire [7 : 0] I7;
output wire [7 : 0] o;
input wire [2 : 0] s;
endmodule
// End of netlist blackbox

(* X_CORE_INFO = "MUX8T1_8,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "OExp00_Element_MUX8T1_8_0_0,MUX8T1_8,{}" *)
(* CORE_GENERATION_INFO = "OExp00_Element_MUX8T1_8_0_0,MUX8T1_8,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=MUX8T1_8,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module OExp00_Element_MUX8T1_8_0_0 (
  I0,
  I1,
  I2,
  I3,
  I4,
  I5,
  I6,
  I7,
  o,
  s
);

input wire [7 : 0] I0;
input wire [7 : 0] I1;
input wire [7 : 0] I2;
input wire [7 : 0] I3;
input wire [7 : 0] I4;
input wire [7 : 0] I5;
input wire [7 : 0] I6;
input wire [7 : 0] I7;
output wire [7 : 0] o;
input wire [2 : 0] s;

  MUX8T1_8 inst (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .o(o),
    .s(s)
  );
endmodule