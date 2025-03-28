/* Generated by Yosys 0.36+3 (git sha1 a53032104, aarch64-apple-darwin20.2-clang 10.0.0-4ubuntu1 -fPIC -Os) */

(* top =  1  *)
(* src = "hidden_fsm.sv:3.1-69.10" *)
module hidden_fsm(clk, data_avail, buf_en, out_sel, out_writing, scan_in, scan_en, scan_out);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  (* src = "hidden_fsm.sv:9.22-9.32" *)
  reg [2:0] _the_state;
  (* src = "hidden_fsm.sv:6.16-6.22" *)
  output buf_en;
  wire buf_en;
  (* src = "hidden_fsm.sv:4.15-4.18" *)
  input clk;
  wire clk;
  (* src = "hidden_fsm.sv:18.5-18.14" *)
  wire \cur_state[0] ;
  (* src = "hidden_fsm.sv:18.5-18.14" *)
  wire \cur_state[1] ;
  (* src = "hidden_fsm.sv:18.5-18.14" *)
  wire \cur_state[2] ;
  (* src = "hidden_fsm.sv:5.15-5.25" *)
  input data_avail;
  wire data_avail;
  (* src = "hidden_fsm.sv:18.16-18.22" *)
  wire \nstate[0] ;
  (* src = "hidden_fsm.sv:18.16-18.22" *)
  wire \nstate[1] ;
  (* src = "hidden_fsm.sv:18.16-18.22" *)
  wire \nstate[2] ;
  (* src = "hidden_fsm.sv:7.22-7.29" *)
  output [1:0] out_sel;
  wire [1:0] out_sel;
  (* src = "hidden_fsm.sv:8.16-8.27" *)
  output out_writing;
  wire out_writing;
  input scan_en;
  wire scan_en;
  input scan_in;
  wire scan_in;
  output scan_out;
  wire scan_out;
  (* \always_ff  = 32'd1 *)
  (* src = "hidden_fsm.sv:65.3-67.6" *)
  always @(posedge clk)
    if (_03_) _the_state[0] <= _02_;
  (* \always_ff  = 32'd1 *)
  (* src = "hidden_fsm.sv:65.3-67.6" *)
  always @(posedge clk)
    if (_03_) _the_state[2] <= _00_;
  (* \always_ff  = 32'd1 *)
  (* src = "hidden_fsm.sv:65.3-67.6" *)
  always @(posedge clk)
    if (_03_) _the_state[1] <= _01_;
  assign _07_ = _06_ ? \nstate[0]  : 1'hx;
  assign _08_ = _06_ ? \nstate[1]  : 1'hx;
  assign _09_ = _06_ ? \nstate[2]  : 1'hx;
  assign _03_ = | { _06_, scan_en };
  assign _04_ = { _11_, data_avail } != 2'h2;
  assign _05_ = | { _14_, _13_, _12_, _11_, _10_ };
  assign _06_ = & { _04_, _05_ };
  assign \nstate[1]  = | { _13_, _14_ };
  assign buf_en = | { _10_, _11_ };
  assign \nstate[0]  = | { _12_, _13_ };
  assign out_writing = | { _12_, _13_, _14_ };
  assign _10_ = _the_state == (* full_case = 32'd1 *) (* src = "hidden_fsm.sv:0.0-0.0|hidden_fsm.sv:28.5-63.12" *) 2'h3;
  assign _11_ = ! (* full_case = 32'd1 *) (* src = "hidden_fsm.sv:0.0-0.0|hidden_fsm.sv:28.5-63.12" *) _the_state;
  function [0:0] _31_;
    input [0:0] a;
    input [1:0] b;
    input [1:0] s;
    (* full_case = 32'd1 *)
    (* src = "hidden_fsm.sv:0.0-0.0|hidden_fsm.sv:28.5-63.12" *)
    (* parallel_case *)
    casez (s)
      2'b?1:
        _31_ = b[0:0];
      2'b1?:
        _31_ = b[1:1];
      default:
        _31_ = a;
    endcase
  endfunction
  assign \nstate[2]  = _31_(1'h1, { data_avail, 1'h0 }, { _10_, out_writing });
  assign _12_ = _the_state == (* full_case = 32'd1 *) (* src = "hidden_fsm.sv:0.0-0.0|hidden_fsm.sv:28.5-63.12" *) 3'h4;
  assign _13_ = _the_state == (* full_case = 32'd1 *) (* src = "hidden_fsm.sv:0.0-0.0|hidden_fsm.sv:28.5-63.12" *) 2'h2;
  assign _14_ = _the_state == (* full_case = 32'd1 *) (* src = "hidden_fsm.sv:0.0-0.0|hidden_fsm.sv:28.5-63.12" *) 1'h1;
  function [1:0] _35_;
    input [1:0] a;
    input [5:0] b;
    input [2:0] s;
    (* full_case = 32'd1 *)
    (* src = "hidden_fsm.sv:0.0-0.0|hidden_fsm.sv:28.5-63.12" *)
    (* parallel_case *)
    casez (s)
      3'b??1:
        _35_ = b[1:0];
      3'b?1?:
        _35_ = b[3:2];
      3'b1??:
        _35_ = b[5:4];
      default:
        _35_ = a;
    endcase
  endfunction
  assign out_sel = _35_(2'h0, 6'h2d, { _14_, _13_, _12_ });
  assign _02_ = scan_en ? scan_in : _07_;
  assign _01_ = scan_en ? _the_state[0] : _08_;
  assign _00_ = scan_en ? _the_state[1] : _09_;
  assign \cur_state[0]  = _the_state[0];
  assign \cur_state[1]  = _the_state[1];
  assign \cur_state[2]  = _the_state[2];
  assign scan_out = _the_state[2];
endmodule
