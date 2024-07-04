[2024-07-04 14:37:21 UTC] qrun -batch -access=rw+/. '-timescale' '1ns/1ns' -mfcu design.sv testbench.sv '-voptargs=+acc=npr'  -do run.do  
QuestaSim-64 qrun 2023.1 Utility 2023.01 Jan 23 2023
Start time: 10:37:22 on Jul 04,2024
qrun -batch -access=rw+/. -timescale 1ns/1ns -mfcu design.sv testbench.sv -voptargs="+acc=npr" -do "run.do" 
Creating library 'qrun.out/work'.
QuestaSim-64 vlog 2023.1 Compiler 2023.01 Jan 23 2023
Start time: 10:37:22 on Jul 04,2024
vlog -timescale 1ns/1ns -mfcu design.sv testbench.sv -work qrun.out/work -csession=incr -writesessionid "+qrun.out/top_dus" -statslog qrun.out/stats_log 
-- Compiling interface busifc
-- Compiling program test
-- Compiling module top

Top level modules:
	top
End time: 10:37:22 on Jul 04,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 0
QuestaSim-64 vopt 2023.1 Compiler 2023.01 Jan 23 2023
** Warning: (vopt-10587) Some optimizations are turned off because the +acc switch is in effect. This will cause your simulation to run slowly. Please use -access/-debug to maintain needed visibility.
Start time: 10:37:22 on Jul 04,2024
vopt -access=rw+/. -timescale 1ns/1ns -mfcu "+acc=npr" -findtoplevels /home/runner/qrun.out/work+0+ -work qrun.out/work -statslog qrun.out/stats_log -o qrun_opt 

Top level modules:
	top

Analyzing design...
-- Loading module top
-- Loading interface busifc
-- Loading program test
Optimizing 4 design-units (inlining 0/3 module instances):
-- Optimizing program test(fast)
-- Optimizing interface busifc(fast__1)
-- Optimizing module top(fast)
-- Optimizing interface busifc(fast)
Optimized design name is qrun_opt
End time: 10:37:22 on Jul 04,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 1
# vsim -batch -voptargs="+acc=npr" -lib qrun.out/work -do "run.do" -statslog qrun.out/stats_log qrun_opt -appendlog -l qrun.log -csession=incr 
# Start time: 10:37:22 on Jul 04,2024
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
# Loading work.busifc(fast__1)
# Loading work.test(fast)
# ** Warning: (vsim-8441) Clocking block output ifc.cb.port is not legal in this
# or another expression.
#    Time: 0 ns  Iteration: 0  Instance: /top/t1 File: design.sv Line: 27
# 
# do run.do
# Coverage = 100.00%
# ** Note: $stop    : design.sv(43)
#    Time: 315 ns  Iteration: 1  Instance: /top/t1
# Break in Module test at design.sv line 43
# Stopped at design.sv line 43
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
# /top/t1/#ublk#502948#34/immed__35
#                      design.sv(35)                      0          1
# 
# Covergroup Coverage:
#     Covergroups                      1        na        na   100.00%
#         Coverpoints/Crosses          1        na        na        na
#             Covergroup Bins          8         8         0   100.00%
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/CovPort                                 100.00%        100          -    Covered              
#     covered/total bins:                                     8          8          -                      
#     missing/total bins:                                     0          8          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint #coverpoint__0#                        100.00%        100          -    Covered              
#         covered/total bins:                                 8          8          -                      
#         missing/total bins:                                 0          8          -                      
#         % Hit:                                        100.00%        100          -                      
#  Covergroup instance \/top/t1/ck                      100.00%        100          -    Covered              
#     covered/total bins:                                     8          8          -                      
#     missing/total bins:                                     0          8          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint #coverpoint__0#                        100.00%        100          -    Covered              
#         covered/total bins:                                 8          8          -                      
#         missing/total bins:                                 0          8          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin auto[0]                                         4          1          -    Covered              
#         bin auto[1]                                         8          1          -    Covered              
#         bin auto[2]                                         3          1          -    Covered              
#         bin auto[3]                                         2          1          -    Covered              
#         bin auto[4]                                         6          1          -    Covered              
#         bin auto[5]                                         4          1          -    Covered              
#         bin auto[6]                                         3          1          -    Covered              
#         bin auto[7]                                         2          1          -    Covered              
# 
# COVERGROUP COVERAGE:
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/CovPort                                 100.00%        100          -    Covered              
#     covered/total bins:                                     8          8          -                      
#     missing/total bins:                                     0          8          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint #coverpoint__0#                        100.00%        100          -    Covered              
#         covered/total bins:                                 8          8          -                      
#         missing/total bins:                                 0          8          -                      
#         % Hit:                                        100.00%        100          -                      
#  Covergroup instance \/top/t1/ck                      100.00%        100          -    Covered              
#     covered/total bins:                                     8          8          -                      
#     missing/total bins:                                     0          8          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint #coverpoint__0#                        100.00%        100          -    Covered              
#         covered/total bins:                                 8          8          -                      
#         missing/total bins:                                 0          8          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin auto[0]                                         4          1          -    Covered              
#         bin auto[1]                                         8          1          -    Covered              
#         bin auto[2]                                         3          1          -    Covered              
#         bin auto[3]                                         2          1          -    Covered              
#         bin auto[4]                                         6          1          -    Covered              
#         bin auto[5]                                         4          1          -    Covered              
#         bin auto[6]                                         3          1          -    Covered              
#         bin auto[7]                                         2          1          -    Covered              
# 
# TOTAL COVERGROUP COVERAGE: 100.00%  COVERGROUP TYPES: 1
# 
# ASSERTION RESULTS:
# --------------------------------------------------------------------
# Name                 File(Line)                   Failure      Pass 
#                                                   Count        Count
# --------------------------------------------------------------------
# /top/t1/#ublk#502948#34/immed__35
#                      design.sv(35)                      0          1
# 
# Total Coverage By Instance (filtered view): 100.00%
# 
# 
# End time: 10:37:23 on Jul 04,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 1
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   0
#     vopt: Errors:   0, Warnings:   1
#     vsim: Errors:   0, Warnings:   1
#   Totals: Errors:   0, Warnings:   2
Done
