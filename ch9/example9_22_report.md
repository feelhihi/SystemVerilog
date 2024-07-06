[2024-07-06 14:43:36 UTC] qrun -batch -access=rw+/. '-timescale' '1ns/1ns' -mfcu design.sv testbench.sv '-voptargs=+acc=npr'  -do run.do  
QuestaSim-64 qrun 2023.1 Utility 2023.01 Jan 23 2023
Start time: 10:43:37 on Jul 06,2024
qrun -batch -access=rw+/. -timescale 1ns/1ns -mfcu design.sv testbench.sv -voptargs="+acc=npr" -do "run.do" 
Creating library 'qrun.out/work'.
QuestaSim-64 vlog 2023.1 Compiler 2023.01 Jan 23 2023
Start time: 10:43:37 on Jul 06,2024
vlog -timescale 1ns/1ns -mfcu design.sv testbench.sv -work qrun.out/work -csession=incr -writesessionid "+qrun.out/top_dus" -statslog qrun.out/stats_log 
-- Compiling interface busifc
-- Compiling program test
-- Compiling module top

Top level modules:
	top
End time: 10:43:37 on Jul 06,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 0
QuestaSim-64 vopt 2023.1 Compiler 2023.01 Jan 23 2023
** Warning: (vopt-10587) Some optimizations are turned off because the +acc switch is in effect. This will cause your simulation to run slowly. Please use -access/-debug to maintain needed visibility.
Start time: 10:43:37 on Jul 06,2024
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
End time: 10:43:37 on Jul 06,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 1
# vsim -batch -voptargs="+acc=npr" -lib qrun.out/work -do "run.do" -statslog qrun.out/stats_log qrun_opt -appendlog -l qrun.log -csession=incr 
# Start time: 10:43:37 on Jul 06,2024
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
# 
# do run.do
# [@0] port=4
# [@5] port=2
# [@15] port=4
# [@25] port=1
# [@35] port=5
# ** Error: (vsim-8565) Illegal state bin was hit at value=7. The bin counter for the illegal bin '\/top/t1/ck .Illegal_bin.hi' is 1.
#    Time: 45 ns  Iteration: 1  Instance: /top/t1
# [@45] port=7
# [@55] port=1
# [@65] port=1
# [@75] port=2
# [@85] port=0
# [@95] port=1
# [@105] port=5
# [@115] port=4
# [@125] port=0
# ** Error: (vsim-8565) Illegal state bin was hit at value=6. The bin counter for the illegal bin '\/top/t1/ck .Illegal_bin.hi' is 2.
#    Time: 135 ns  Iteration: 1  Instance: /top/t1
# [@135] port=6
# [@145] port=1
# [@155] port=1
# [@165] port=4
# [@175] port=2
# [@185] port=4
# ** Error: (vsim-8565) Illegal state bin was hit at value=7. The bin counter for the illegal bin '\/top/t1/ck .Illegal_bin.hi' is 3.
#    Time: 195 ns  Iteration: 1  Instance: /top/t1
# [@195] port=7
# [@205] port=3
# ** Error: (vsim-8565) Illegal state bin was hit at value=6. The bin counter for the illegal bin '\/top/t1/ck .Illegal_bin.hi' is 4.
#    Time: 215 ns  Iteration: 1  Instance: /top/t1
# [@215] port=6
# [@225] port=1
# [@235] port=0
# [@245] port=1
# [@255] port=0
# [@265] port=5
# [@275] port=3
# [@285] port=5
# [@295] port=4
# ** Error: (vsim-8565) Illegal state bin was hit at value=6. The bin counter for the illegal bin '\/top/t1/ck .Illegal_bin.hi' is 5.
#    Time: 305 ns  Iteration: 1  Instance: /top/t1
# [@305] port=6
# Coverage = 100.00%
# ** Note: $stop    : design.sv(69)
#    Time: 315 ns  Iteration: 1  Instance: /top/t1
# Break in Module test at design.sv line 69
# Stopped at design.sv line 69
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
# /top/t1/#ublk#502948#60/immed__61
#                      design.sv(61)                      0          1
# 
# Covergroup Coverage:
#     Covergroups                      1        na        na   100.00%
#         Coverpoints/Crosses          6        na        na        na
#             Covergroup Bins         21        21         0   100.00%
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/CovPort                                 100.00%        100          -    Covered              
#     covered/total bins:                                    21         21          -                      
#     missing/total bins:                                     0         21          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint EX_enum                                100.00%        100          -    Covered              
#         covered/total bins:                                 3          3          -                      
#         missing/total bins:                                 0          3          -                      
#         % Hit:                                        100.00%        100          -                      
#     Coverpoint Flip_port1                             100.00%        100          -    Covered              
#         covered/total bins:                                 1          1          -                      
#         missing/total bins:                                 0          1          -                      
#         % Hit:                                        100.00%        100          -                      
#     Coverpoint Flip_port2                             100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#     Coverpoint Ignore_bin1                            100.00%        100          -    Covered              
#         covered/total bins:                                 6          6          -                      
#         missing/total bins:                                 0          6          -                      
#         % Hit:                                        100.00%        100          -                      
#     Coverpoint Ignore_bin2                            100.00%        100          -    Covered              
#         covered/total bins:                                 3          3          -                      
#         missing/total bins:                                 0          3          -                      
#         % Hit:                                        100.00%        100          -                      
#     Coverpoint Illegal_bin                            100.00%        100          -    Covered              
#         covered/total bins:                                 6          6          -                      
#         missing/total bins:                                 0          6          -                      
#         % Hit:                                        100.00%        100          -                      
#  Covergroup instance \/top/t1/ck                      100.00%        100          -    Covered              
#     covered/total bins:                                    21         21          -                      
#     missing/total bins:                                     0         21          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint EX_enum                                100.00%        100          -    Covered              
#         covered/total bins:                                 3          3          -                      
#         missing/total bins:                                 0          3          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin auto[INIT]                                     13          1          -    Covered              
#         bin auto[DECODE]                                    9          1          -    Covered              
#         bin auto[IDLE]                                     10          1          -    Covered              
#     Coverpoint Flip_port1                             100.00%        100          -    Covered              
#         covered/total bins:                                 1          1          -                      
#         missing/total bins:                                 0          1          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin t1                                              2          1          -    Covered              
#     Coverpoint Flip_port2                             100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin even                                           16          1          -    Covered              
#         bin odd                                            16          1          -    Covered              
#     Coverpoint Ignore_bin1                            100.00%        100          -    Covered              
#         covered/total bins:                                 6          6          -                      
#         missing/total bins:                                 0          6          -                      
#         % Hit:                                        100.00%        100          -                      
#         ignore_bin hi                                       5                     -    Occurred             
#         bin auto[0]                                         4          1          -    Covered              
#         bin auto[1]                                         8          1          -    Covered              
#         bin auto[2]                                         3          1          -    Covered              
#         bin auto[3]                                         2          1          -    Covered              
#         bin auto[4]                                         6          1          -    Covered              
#         bin auto[5]                                         4          1          -    Covered              
#     Coverpoint Ignore_bin2                            100.00%        100          -    Covered              
#         covered/total bins:                                 3          3          -                      
#         missing/total bins:                                 0          3          -                      
#         % Hit:                                        100.00%        100          -                      
#         ignore_bin hi                                       5                     -    Occurred             
#         bin auto[0:1]                                      12          1          -    Covered              
#         bin auto[2:3]                                       5          1          -    Covered              
#         bin auto[4:5]                                      10          1          -    Covered              
#     Coverpoint Illegal_bin                            100.00%        100          -    Covered              
#         covered/total bins:                                 6          6          -                      
#         missing/total bins:                                 0          6          -                      
#         % Hit:                                        100.00%        100          -                      
#         illegal_bin hi                                      5                     -    Occurred             
#         bin auto[0]                                         4          1          -    Covered              
#         bin auto[1]                                         8          1          -    Covered              
#         bin auto[2]                                         3          1          -    Covered              
#         bin auto[3]                                         2          1          -    Covered              
#         bin auto[4]                                         6          1          -    Covered              
#         bin auto[5]                                         4          1          -    Covered              
# 
# COVERGROUP COVERAGE:
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/CovPort                                 100.00%        100          -    Covered              
#     covered/total bins:                                    21         21          -                      
#     missing/total bins:                                     0         21          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint EX_enum                                100.00%        100          -    Covered              
#         covered/total bins:                                 3          3          -                      
#         missing/total bins:                                 0          3          -                      
#         % Hit:                                        100.00%        100          -                      
#     Coverpoint Flip_port1                             100.00%        100          -    Covered              
#         covered/total bins:                                 1          1          -                      
#         missing/total bins:                                 0          1          -                      
#         % Hit:                                        100.00%        100          -                      
#     Coverpoint Flip_port2                             100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#     Coverpoint Ignore_bin1                            100.00%        100          -    Covered              
#         covered/total bins:                                 6          6          -                      
#         missing/total bins:                                 0          6          -                      
#         % Hit:                                        100.00%        100          -                      
#     Coverpoint Ignore_bin2                            100.00%        100          -    Covered              
#         covered/total bins:                                 3          3          -                      
#         missing/total bins:                                 0          3          -                      
#         % Hit:                                        100.00%        100          -                      
#     Coverpoint Illegal_bin                            100.00%        100          -    Covered              
#         covered/total bins:                                 6          6          -                      
#         missing/total bins:                                 0          6          -                      
#         % Hit:                                        100.00%        100          -                      
#  Covergroup instance \/top/t1/ck                      100.00%        100          -    Covered              
#     covered/total bins:                                    21         21          -                      
#     missing/total bins:                                     0         21          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint EX_enum                                100.00%        100          -    Covered              
#         covered/total bins:                                 3          3          -                      
#         missing/total bins:                                 0          3          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin auto[INIT]                                     13          1          -    Covered              
#         bin auto[DECODE]                                    9          1          -    Covered              
#         bin auto[IDLE]                                     10          1          -    Covered              
#     Coverpoint Flip_port1                             100.00%        100          -    Covered              
#         covered/total bins:                                 1          1          -                      
#         missing/total bins:                                 0          1          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin t1                                              2          1          -    Covered              
#     Coverpoint Flip_port2                             100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin even                                           16          1          -    Covered              
#         bin odd                                            16          1          -    Covered              
#     Coverpoint Ignore_bin1                            100.00%        100          -    Covered              
#         covered/total bins:                                 6          6          -                      
#         missing/total bins:                                 0          6          -                      
#         % Hit:                                        100.00%        100          -                      
#         ignore_bin hi                                       5                     -    Occurred             
#         bin auto[0]                                         4          1          -    Covered              
#         bin auto[1]                                         8          1          -    Covered              
#         bin auto[2]                                         3          1          -    Covered              
#         bin auto[3]                                         2          1          -    Covered              
#         bin auto[4]                                         6          1          -    Covered              
#         bin auto[5]                                         4          1          -    Covered              
#     Coverpoint Ignore_bin2                            100.00%        100          -    Covered              
#         covered/total bins:                                 3          3          -                      
#         missing/total bins:                                 0          3          -                      
#         % Hit:                                        100.00%        100          -                      
#         ignore_bin hi                                       5                     -    Occurred             
#         bin auto[0:1]                                      12          1          -    Covered              
#         bin auto[2:3]                                       5          1          -    Covered              
#         bin auto[4:5]                                      10          1          -    Covered              
#     Coverpoint Illegal_bin                            100.00%        100          -    Covered              
#         covered/total bins:                                 6          6          -                      
#         missing/total bins:                                 0          6          -                      
#         % Hit:                                        100.00%        100          -                      
#         illegal_bin hi                                      5                     -    Occurred             
#         bin auto[0]                                         4          1          -    Covered              
#         bin auto[1]                                         8          1          -    Covered              
#         bin auto[2]                                         3          1          -    Covered              
#         bin auto[3]                                         2          1          -    Covered              
#         bin auto[4]                                         6          1          -    Covered              
#         bin auto[5]                                         4          1          -    Covered              
# 
# TOTAL COVERGROUP COVERAGE: 100.00%  COVERGROUP TYPES: 1
# 
# ASSERTION RESULTS:
# --------------------------------------------------------------------
# Name                 File(Line)                   Failure      Pass 
#                                                   Count        Count
# --------------------------------------------------------------------
# /top/t1/#ublk#502948#60/immed__61
#                      design.sv(61)                      0          1
# 
# Total Coverage By Instance (filtered view): 100.00%
# 
# 
# End time: 10:43:38 on Jul 06,2024, Elapsed time: 0:00:01
# Errors: 5, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   0
#     vopt: Errors:   0, Warnings:   1
#     vsim: Errors:   5, Warnings:   0
#   Totals: Errors:   5, Warnings:   1
Done
