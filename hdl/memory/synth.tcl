#!/usr/bin/env yosys

source [file join $::env(SYNTH_DIR) "logicworld.tcl"]

LW::loadVerilogSources

LW::generateGateSchematic {
    module srlatch
    withBuffers yes
}

set registerModules {
    "register"
    "register_rst"
    "register_inc"
    "register_inc_dec_rst"
}

foreach module $registerModules {
    LW::generateGateSchematic [dict create \
        module $module \
        params {
            { N 4 }
            { N 8 }
            { N 16 }
        }
    ]
}