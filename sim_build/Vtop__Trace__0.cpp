// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtop__Syms.h"


void Vtop___024root__trace_chg_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vtop___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_chg_0\n"); );
    // Init
    Vtop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtop___024root*>(voidSelf);
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vtop___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vtop___024root__trace_chg_0_sub_0(Vtop___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    bufp->chgBit(oldp+0,(vlSelf->buf_en));
    bufp->chgBit(oldp+1,(vlSelf->clk));
    bufp->chgBit(oldp+2,(vlSelf->data_avail));
    bufp->chgCData(oldp+3,(vlSelf->out_sel),2);
    bufp->chgBit(oldp+4,(vlSelf->out_writing));
    bufp->chgBit(oldp+5,(vlSelf->scan_en));
    bufp->chgBit(oldp+6,(vlSelf->scan_in));
    bufp->chgBit(oldp+7,(vlSelf->scan_out));
    bufp->chgBit(oldp+8,(vlSelf->hidden_fsm__DOT__buf_en));
    bufp->chgBit(oldp+9,(vlSelf->hidden_fsm__DOT__clk));
    bufp->chgBit(oldp+10,(vlSelf->hidden_fsm__DOT__cur_state__05b0__05d));
    bufp->chgBit(oldp+11,(vlSelf->hidden_fsm__DOT__cur_state__05b1__05d));
    bufp->chgBit(oldp+12,(vlSelf->hidden_fsm__DOT__cur_state__05b2__05d));
    bufp->chgBit(oldp+13,(vlSelf->hidden_fsm__DOT__data_avail));
    bufp->chgBit(oldp+14,(vlSelf->hidden_fsm__DOT__nstate__05b0__05d));
    bufp->chgBit(oldp+15,(vlSelf->hidden_fsm__DOT__nstate__05b1__05d));
    bufp->chgBit(oldp+16,(vlSelf->hidden_fsm__DOT__nstate__05b2__05d));
    bufp->chgCData(oldp+17,(vlSelf->hidden_fsm__DOT__out_sel),2);
    bufp->chgBit(oldp+18,(vlSelf->hidden_fsm__DOT__out_writing));
    bufp->chgBit(oldp+19,(vlSelf->hidden_fsm__DOT__scan_en));
    bufp->chgBit(oldp+20,(vlSelf->hidden_fsm__DOT__scan_in));
    bufp->chgBit(oldp+21,(vlSelf->hidden_fsm__DOT__scan_out));
}

void Vtop___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop___024root__trace_cleanup\n"); );
    // Init
    Vtop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtop___024root*>(voidSelf);
    Vtop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VlUnpacked<CData/*0:0*/, 1> __Vm_traceActivity;
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        __Vm_traceActivity[__Vi0] = 0;
    }
    // Body
    vlSymsp->__Vm_activity = false;
    __Vm_traceActivity[0U] = 0U;
}
