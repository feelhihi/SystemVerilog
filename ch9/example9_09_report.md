[2024-07-04 14:46:16 UTC] qrun -batch -access=rw+/. '-timescale' '1ns/1ns' -mfcu design.sv testbench.sv '-voptargs=+acc=npr'  -do run.do  
QuestaSim-64 qrun 2023.1 Utility 2023.01 Jan 23 2023
Start time: 10:46:17 on Jul 04,2024
qrun -batch -access=rw+/. -timescale 1ns/1ns -mfcu design.sv testbench.sv -voptargs="+acc=npr" -do "run.do" 
Creating library 'qrun.out/work'.
QuestaSim-64 vlog 2023.1 Compiler 2023.01 Jan 23 2023
Start time: 10:46:17 on Jul 04,2024
vlog -timescale 1ns/1ns -mfcu design.sv testbench.sv -work qrun.out/work -csession=incr -writesessionid "+qrun.out/top_dus" -statslog qrun.out/stats_log 
-- Compiling interface simple_bus
-- Compiling module mem
-- Compiling program test
-- Compiling module top

Top level modules:
	top
End time: 10:46:17 on Jul 04,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 0
QuestaSim-64 vopt 2023.1 Compiler 2023.01 Jan 23 2023
** Warning: (vopt-10587) Some optimizations are turned off because the +acc switch is in effect. This will cause your simulation to run slowly. Please use -access/-debug to maintain needed visibility.
Start time: 10:46:17 on Jul 04,2024
vopt -access=rw+/. -timescale 1ns/1ns -mfcu "+acc=npr" -findtoplevels /home/runner/qrun.out/work+0+ -work qrun.out/work -statslog qrun.out/stats_log -o qrun_opt 

Top level modules:
	top

Analyzing design...
-- Loading module top
-- Loading interface simple_bus
-- Loading module mem
-- Loading program test
Optimizing 5 design-units (inlining 0/4 module instances):
-- Optimizing program test(fast)
-- Optimizing module mem(fast)
-- Optimizing module top(fast)
-- Optimizing interface simple_bus(fast__1)
-- Optimizing interface simple_bus(fast)
Optimized design name is qrun_opt
End time: 10:46:18 on Jul 04,2024, Elapsed time: 0:00:01
Errors: 0, Warnings: 1
# vsim -batch -voptargs="+acc=npr" -lib qrun.out/work -do "run.do" -statslog qrun.out/stats_log qrun_opt -appendlog -l qrun.log -csession=incr 
# Start time: 10:46:18 on Jul 04,2024
# //  Questa Sim-64
# //  Version 2023.1 linux_x86_64 Jan 23 2023
# //
# //  Copyright 1991-2023 Mentor Graphics Corporation
# //  All Rights Reserved.
# //
# //  QuestaSim and its associated documentation contain trade
# //  secrets and commercial or financial information that are the property of
# //  Mentor Graphics Corporation and are privileged, confidential,
# //  and exempt from disclosure under the Freedom of Information Act,
# //  5 U.S.C. Section 552. Furthermore, this information
# //  is prohibited from disclosure under the Trade Secrets Act,
# //  18 U.S.C. Section 1905.
# //
# Loading sv_std.std
# Loading work.top(fast)
# Loading work.simple_bus(fast__1)
# Loading work.mem(fast)
# Loading work.test(fast)
# 
# do run.do
# [5] addr=01111111 / 127, data=2
# [15] addr=00111111 / 63, data=4
# [25] addr=00011111 / 31, data=8
# [35] addr=00001111 / 15, data=16
# [45] addr=00000111 / 7, data=32
# [55] addr=00000011 / 3, data=64
# [65] addr=00000001 / 1, data=128
# [75] addr=00000000 / 0, data=0
# ** Note: $stop    : design.sv(47)
#    Time: 75 ns  Iteration: 1  Instance: /top/t1
# Break at design.sv line 47
# Stopped at design.sv line 47
# Coverage Report by instance with details
# 
# =================================================================================
# === Instance: /top/m1
# === Design Unit: work.mem
# =================================================================================
# 
# Directive Coverage:
#     Directives                       1         1         0   100.00%
# 
# DIRECTIVE COVERAGE:
# --------------------------------------------------------------------------------------------
# Name                                     Design Design   Lang File(Line)      Hits Status    
#                                          Unit   UnitType                                     
# --------------------------------------------------------------------------------------------
# /top/m1/cover__0                         mem    Verilog  SVA  design.sv(17)      8 Covered   
# 
# =================================================================================
# === Instance: /top/t1
# === Design Unit: work.test
# =================================================================================
# 
# Covergroup Coverage:
#     Covergroups                      1        na        na    43.75%
#         Coverpoints/Crosses          2        na        na        na
#             Covergroup Bins         16         7         9    43.75%
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/Write_cg                                 43.75%        100          -    Uncovered            
#     covered/total bins:                                     7         16          -                      
#     missing/total bins:                                     9         16          -                      
#     % Hit:                                             43.75%        100          -                      
#     Coverpoint #coverpoint__0#                         50.00%        100          -    Uncovered            
#         covered/total bins:                                 4          8          -                      
#         missing/total bins:                                 4          8          -                      
#         % Hit:                                         50.00%        100          -                      
#     Coverpoint #coverpoint__1#                         37.50%        100          -    Uncovered            
#         covered/total bins:                                 3          8          -                      
#         missing/total bins:                                 5          8          -                      
#         % Hit:                                         37.50%        100          -                      
#  Covergroup instance \/top/t1/wcg                      43.75%        100          -    Uncovered            
#     covered/total bins:                                     7         16          -                      
#     missing/total bins:                                     9         16          -                      
#     % Hit:                                             43.75%        100          -                      
#     Coverpoint #coverpoint__0#                         50.00%        100          -    Uncovered            
#         covered/total bins:                                 4          8          -                      
#         missing/total bins:                                 4          8          -                      
#         % Hit:                                         50.00%        100          -                      
#         bin auto[0:31]                                      5          1          -    Covered              
#         bin auto[32:63]                                     1          1          -    Covered              
#         bin auto[64:95]                                     1          1          -    Covered              
#         bin auto[96:127]                                    0          1          -    ZERO                 
#         bin auto[128:159]                                   1          1          -    Covered              
#         bin auto[160:191]                                   0          1          -    ZERO                 
#         bin auto[192:223]                                   0          1          -    ZERO                 
#         bin auto[224:255]                                   0          1          -    ZERO                 
#     Coverpoint #coverpoint__1#                         37.50%        100          -    Uncovered            
#         covered/total bins:                                 3          8          -                      
#         missing/total bins:                                 5          8          -                      
#         % Hit:                                         37.50%        100          -                      
#         bin auto[0:31]                                      6          1          -    Covered              
#         bin auto[32:63]                                     1          1          -    Covered              
#         bin auto[64:95]                                     0          1          -    ZERO                 
#         bin auto[96:127]                                    1          1          -    Covered              
#         bin auto[128:159]                                   0          1          -    ZERO                 
#         bin auto[160:191]                                   0          1          -    ZERO                 
#         bin auto[192:223]                                   0          1          -    ZERO                 
#         bin auto[224:255]                                   0          1          -    ZERO                 
# 
# COVERGROUP COVERAGE:
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/Write_cg                                 43.75%        100          -    Uncovered            
#     covered/total bins:                                     7         16          -                      
#     missing/total bins:                                     9         16          -                      
#     % Hit:                                             43.75%        100          -                      
#     Coverpoint #coverpoint__0#                         50.00%        100          -    Uncovered            
#         covered/total bins:                                 4          8          -                      
#         missing/total bins:                                 4          8          -                      
#         % Hit:                                         50.00%        100          -                      
#     Coverpoint #coverpoint__1#                         37.50%        100          -    Uncovered            
#         covered/total bins:                                 3          8          -                      
#         missing/total bins:                                 5          8          -                      
#         % Hit:                                         37.50%        100          -                      
#  Covergroup instance \/top/t1/wcg                      43.75%        100          -    Uncovered            
#     covered/total bins:                                     7         16          -                      
#     missing/total bins:                                     9         16          -                      
#     % Hit:                                             43.75%        100          -                      
#     Coverpoint #coverpoint__0#                         50.00%        100          -    Uncovered            
#         covered/total bins:                                 4          8          -                      
#         missing/total bins:                                 4          8          -                      
#         % Hit:                                         50.00%        100          -                      
#         bin auto[0:31]                                      5          1          -    Covered              
#         bin auto[32:63]                                     1          1          -    Covered              
#         bin auto[64:95]                                     1          1          -    Covered              
#         bin auto[96:127]                                    0          1          -    ZERO                 
#         bin auto[128:159]                                   1          1          -    Covered              
#         bin auto[160:191]                                   0          1          -    ZERO                 
#         bin auto[192:223]                                   0          1          -    ZERO                 
#         bin auto[224:255]                                   0          1          -    ZERO                 
#     Coverpoint #coverpoint__1#                         37.50%        100          -    Uncovered            
#         covered/total bins:                                 3          8          -                      
#         missing/total bins:                                 5          8          -                      
#         % Hit:                                         37.50%        100          -                      
#         bin auto[0:31]                                      6          1          -    Covered              
#         bin auto[32:63]                                     1          1          -    Covered              
#         bin auto[64:95]                                     0          1          -    ZERO                 
#         bin auto[96:127]                                    1          1          -    Covered              
#         bin auto[128:159]                                   0          1          -    ZERO                 
#         bin auto[160:191]                                   0          1          -    ZERO                 
#         bin auto[192:223]                                   0          1          -    ZERO                 
#         bin auto[224:255]                                   0          1          -    ZERO                 
# 
# TOTAL COVERGROUP COVERAGE: 43.75%  COVERGROUP TYPES: 1
# 
# DIRECTIVE COVERAGE:
# --------------------------------------------------------------------------------------------
# Name                                     Design Design   Lang File(Line)      Hits Status    
#                                          Unit   UnitType                                     
# --------------------------------------------------------------------------------------------
# /top/m1/cover__0                         mem    Verilog  SVA  design.sv(17)      8 Covered   
# 
# TOTAL DIRECTIVE COVERAGE: 100.00%  COVERS: 1
# 
# Total Coverage By Instance (filtered view): 71.87%
# 
# 
# End time: 10:46:18 on Jul 04,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   0
#     vopt: Errors:   0, Warnings:   1
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   1
Done
