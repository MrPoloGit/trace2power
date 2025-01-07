#!/bin/bash
# Copyright (c) 2025 Antmicro <www.antmicro.com>
# SPDX-License-Identifier: Apache-2.0

iverilog -lcounter.v counter_tb.v -ocounter.out
./counter.out
cargo run --release -- --clk-freq 1e9 counter.vcd
