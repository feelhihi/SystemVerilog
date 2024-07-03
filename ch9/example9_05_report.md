[2024-07-03 17:03:05 UTC] qrun -batch -access=rw+/. '-timescale' '1ns/1ns' -mfcu design.sv testbench.sv '-voptargs=+acc=npr'  -do run.do  
QuestaSim-64 qrun 2023.1 Utility 2023.01 Jan 23 2023
Start time: 13:03:06 on Jul 03,2024
qrun -batch -access=rw+/. -timescale 1ns/1ns -mfcu design.sv testbench.sv -voptargs="+acc=npr" -do "run.do" 
Creating library 'qrun.out/work'.
QuestaSim-64 vlog 2023.1 Compiler 2023.01 Jan 23 2023
Start time: 13:03:06 on Jul 03,2024
vlog -timescale 1ns/1ns -mfcu design.sv testbench.sv -work qrun.out/work -csession=incr -writesessionid "+qrun.out/top_dus" -statslog qrun.out/stats_log 
-- Compiling interface busifc
** Warning: design.sv(58): (vlog-2244) Variable 'v_ifc' is implicitly static. You must either explicitly declare it as static or automatic
or remove the initialization in the declaration of variable.
-- Compiling package design_sv_unit
-- Compiling program test
** Warning: design.sv(58): (vlog-2244) Variable 'v_ifc' is implicitly static. You must either explicitly declare it as static or automatic
or remove the initialization in the declaration of variable.
-- Compiling module top

Top level modules:
	top
End time: 13:03:06 on Jul 03,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 2
QuestaSim-64 vopt 2023.1 Compiler 2023.01 Jan 23 2023
** Warning: (vopt-10587) Some optimizations are turned off because the +acc switch is in effect. This will cause your simulation to run slowly. Please use -access/-debug to maintain needed visibility.
Start time: 13:03:06 on Jul 03,2024
vopt -access=rw+/. -timescale 1ns/1ns -mfcu "+acc=npr" -findtoplevels /home/runner/qrun.out/work+0+ -work qrun.out/work -statslog qrun.out/stats_log -o qrun_opt 

Top level modules:
	top

Analyzing design...
-- Loading module top
-- Loading interface busifc
-- Loading program test
Optimizing 5 design-units (inlining 0/3 module instances):
-- Optimizing package design_sv_unit(fast)
-- Optimizing program test(fast)
** Warning: design.sv(58): (vopt-2244) Variable 'v_ifc' is implicitly static. You must either explicitly declare it as static or automatic
or remove the initialization in the declaration of variable.
-- Optimizing interface busifc(fast__2)
-- Optimizing module top(fast)
-- Optimizing interface busifc(fast)
Optimized design name is qrun_opt
End time: 13:03:06 on Jul 03,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 2
# vsim -batch -voptargs="+acc=npr" -lib qrun.out/work -do "run.do" -statslog qrun.out/stats_log qrun_opt -appendlog -l qrun.log -csession=incr 
# Start time: 13:03:07 on Jul 03,2024
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
# Loading work.design_sv_unit(fast)
# Loading work.top(fast)
# Loading work.busifc(fast__2)
# Loading work.test(fast)
# Loading work.busifc(fast)
# 
# do run.do
# ** Note: $stop    : design.sv(83)
#    Time: 100 ns  Iteration: 0  Instance: /top
# Break in Module top at design.sv line 83
# Stopped at design.sv line 83
# Coverage Report by instance with details
# 
# =================================================================================
# === Instance: /top/t1
# === Design Unit: work.test
# =================================================================================
# 
# Assertion Coverage:
#     Assertions                       1         1         0   100.00%
# --------------------------------------------------------------------
# Name                 File(Line)                   Failure      Pass 
#                                                   Count        Count
# --------------------------------------------------------------------
# /top/t1/#ublk#502948#54/#ublk#502948#63/immed__65
#                      design.sv(65)                      0          1
# 
# =================================================================================
# === Instance: /design_sv_unit
# === Design Unit: work.design_sv_unit
# =================================================================================
# 
# Covergroup Coverage:
#     Covergroups                      1        na        na    75.00%
#         Coverpoints/Crosses          1        na        na        na
#             Covergroup Bins          8         6         2    75.00%
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /design_sv_unit/Transactor/CovPort               75.00%        100          -    Uncovered            
#     covered/total bins:                                     6          8          -                      
#     missing/total bins:                                     2          8          -                      
#     % Hit:                                             75.00%        100          -                      
#     Coverpoint #coverpoint__0#                         75.00%        100          -    Uncovered            
#         covered/total bins:                                 6          8          -                      
#         missing/total bins:                                 2          8          -                      
#         % Hit:                                         75.00%        100          -                      
#         bin auto[0]                                         3          1          -    Covered              
#         bin auto[1]                                         0          1          -    ZERO                 
#         bin auto[2]                                         3          1          -    Covered              
#         bin auto[3]                                         2          1          -    Covered              
#         bin auto[4]                                         1          1          -    Covered              
#         bin auto[5]                                         1          1          -    Covered              
#         bin auto[6]                                         0          1          -    ZERO                 
#         bin auto[7]                                         1          1          -    Covered              
# 
# COVERGROUP COVERAGE:
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /design_sv_unit/Transactor/CovPort               75.00%        100          -    Uncovered            
#     covered/total bins:                                     6          8          -                      
#     missing/total bins:                                     2          8          -                      
#     % Hit:                                             75.00%        100          -                      
#     Coverpoint #coverpoint__0#                         75.00%        100          -    Uncovered            
#         covered/total bins:                                 6          8          -                      
#         missing/total bins:                                 2          8          -                      
#         % Hit:                                         75.00%        100          -                      
#         bin auto[0]                                         3          1          -    Covered              
#         bin auto[1]                                         0          1          -    ZERO                 
#         bin auto[2]                                         3          1          -    Covered              
#         bin auto[3]                                         2          1          -    Covered              
#         bin auto[4]                                         1          1          -    Covered              
#         bin auto[5]                                         1          1          -    Covered              
#         bin auto[6]                                         0          1          -    ZERO                 
#         bin auto[7]                                         1          1          -    Covered              
# 
# TOTAL COVERGROUP COVERAGE: 75.00%  COVERGROUP TYPES: 1
# 
# ASSERTION RESULTS:
# --------------------------------------------------------------------
# Name                 File(Line)                   Failure      Pass 
#                                                   Count        Count
# --------------------------------------------------------------------
# /top/t1/#ublk#502948#54/#ublk#502948#63/immed__65
#                      design.sv(65)                      0          1
# 
# Total Coverage By Instance (filtered view): 87.50%
# 
# 
# End time: 13:03:07 on Jul 03,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   2
#     vopt: Errors:   0, Warnings:   3
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   5
Done
