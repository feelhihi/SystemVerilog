[2024-07-06 14:54:13 UTC] qrun -batch -access=rw+/. '-timescale' '1ns/1ns' -mfcu design.sv testbench.sv '-voptargs=+acc=npr'  -do run.do  
QuestaSim-64 qrun 2023.1 Utility 2023.01 Jan 23 2023
Start time: 10:54:13 on Jul 06,2024
qrun -batch -access=rw+/. -timescale 1ns/1ns -mfcu design.sv testbench.sv -voptargs="+acc=npr" -do "run.do" 
Creating library 'qrun.out/work'.
QuestaSim-64 vlog 2023.1 Compiler 2023.01 Jan 23 2023
Start time: 10:54:13 on Jul 06,2024
vlog -timescale 1ns/1ns -mfcu design.sv testbench.sv -work qrun.out/work -csession=incr -writesessionid "+qrun.out/top_dus" -statslog qrun.out/stats_log 
-- Compiling interface busifc
-- Compiling program test
-- Compiling module top

Top level modules:
	top
End time: 10:54:13 on Jul 06,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 0
QuestaSim-64 vopt 2023.1 Compiler 2023.01 Jan 23 2023
** Warning: (vopt-10587) Some optimizations are turned off because the +acc switch is in effect. This will cause your simulation to run slowly. Please use -access/-debug to maintain needed visibility.
Start time: 10:54:13 on Jul 06,2024
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
End time: 10:54:14 on Jul 06,2024, Elapsed time: 0:00:01
Errors: 0, Warnings: 1
# vsim -batch -voptargs="+acc=npr" -lib qrun.out/work -do "run.do" -statslog qrun.out/stats_log qrun_opt -appendlog -l qrun.log -csession=incr 
# Start time: 10:54:14 on Jul 06,2024
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
# Coverage = 66.11%
# ** Note: $stop    : design.sv(55)
#    Time: 315 ns  Iteration: 1  Instance: /top/t1
# Break in Module test at design.sv line 55
# Stopped at design.sv line 55
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
# /top/t1/#ublk#502948#49/immed__50
#                      design.sv(50)                      0          1
# 
# Covergroup Coverage:
#     Covergroups                      1        na        na    66.11%
#         Coverpoints/Crosses          3        na        na        na
#             Covergroup Bins         78        27        51    34.61%
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/CovPort                                  66.11%        100          -    Uncovered            
#     covered/total bins:                                    27         78          -                      
#     missing/total bins:                                    51         78          -                      
#     % Hit:                                             34.61%        100          -                      
#     Coverpoint port                                   100.00%        100          -    Covered              
#         covered/total bins:                                 8          8          -                      
#         missing/total bins:                                 0          8          -                      
#         % Hit:                                        100.00%        100          -                      
#     Coverpoint kind                                    80.00%        100          -    Uncovered            
#         covered/total bins:                                 8         10          -                      
#         missing/total bins:                                 2         10          -                      
#         % Hit:                                         80.00%        100          -                      
#     Cross #cross__0#                                   18.33%        100          -    Uncovered            
#         covered/total bins:                                11         60          -                      
#         missing/total bins:                                49         60          -                      
#         % Hit:                                         18.33%        100          -                      
#  Covergroup instance \/top/t1/ck                       66.11%        100          -    Uncovered            
#     covered/total bins:                                    27         78          -                      
#     missing/total bins:                                    51         78          -                      
#     % Hit:                                             34.61%        100          -                      
#     Coverpoint port                                   100.00%        100          -    Covered              
#         covered/total bins:                                 8          8          -                      
#         missing/total bins:                                 0          8          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin port[0]                                         4          1          -    Covered              
#         bin port[1]                                         8          1          -    Covered              
#         bin port[2]                                         3          1          -    Covered              
#         bin port[3]                                         2          1          -    Covered              
#         bin port[4]                                         6          1          -    Covered              
#         bin port[5]                                         4          1          -    Covered              
#         bin port[6]                                         3          1          -    Covered              
#         bin port[7]                                         2          1          -    Covered              
#     Coverpoint kind                                    80.00%        100          -    Uncovered            
#         covered/total bins:                                 8         10          -                      
#         missing/total bins:                                 2         10          -                      
#         % Hit:                                         80.00%        100          -                      
#         bin zero                                            1          1          -    Covered              
#         bin lo                                              4          1          -    Covered              
#         bin hi[8]                                           1          1          -    Covered              
#         bin hi[9]                                           2          1          -    Covered              
#         bin hi[10]                                          1          1          -    Covered              
#         bin hi[11]                                          0          1          -    ZERO                 
#         bin hi[12]                                          3          1          -    Covered              
#         bin hi[13]                                          6          1          -    Covered              
#         bin hi[14]                                          0          1          -    ZERO                 
#         bin hi[15]                                          1          1          -    Covered              
#         default bin misc                                   13                     -    Occurred             
#     Cross #cross__0#                                   18.33%        100          -    Uncovered            
#         covered/total bins:                                11         60          -                      
#         missing/total bins:                                49         60          -                      
#         % Hit:                                         18.33%        100          -                      
#         Auto, Default and User Defined Bins:
#             bin <hi[15],port[6]>                            1          1          -    Covered              
#             bin <hi[8],port[6]>                             1          1          -    Covered              
#             bin <hi[13],port[5]>                            2          1          -    Covered              
#             bin <hi[13],port[4]>                            1          1          -    Covered              
#             bin <hi[12],port[5]>                            1          1          -    Covered              
#             bin <hi[12],port[4]>                            1          1          -    Covered              
#             bin <zero,port[4]>                              1          1          -    Covered              
#             bin <hi[13],port[2]>                            1          1          -    Covered              
#             bin <hi[13],port[1]>                            1          1          -    Covered              
#             bin <hi[9],port[1]>                             2          1          -    Covered              
#             bin <hi[12],port[1]>                            1          1          -    Covered              
#             bin <hi[11],*>                                  0          1          6    ZERO                 
#             bin <hi[10],*>                                  0          1          6    ZERO                 
#             bin <hi[14],*>                                  0          1          7    ZERO                 
#             bin <*,port[3]>                                 0          1          9    ZERO                 
#             bin <*,port[0]>                                 0          1          6    ZERO                 
#             bin <zero,port[6]>                              0          1          1    ZERO                 
#             bin <hi[13],port[6]>                            0          1          1    ZERO                 
#             bin <hi[9],port[6]>                             0          1          1    ZERO                 
#             bin <hi[12],port[6]>                            0          1          1    ZERO                 
#             bin <hi[15],port[5]>                            0          1          1    ZERO                 
#             bin <hi[8],port[5]>                             0          1          1    ZERO                 
#             bin <zero,port[5]>                              0          1          1    ZERO                 
#             bin <hi[9],port[5]>                             0          1          1    ZERO                 
#             bin <hi[15],port[4]>                            0          1          1    ZERO                 
#             bin <hi[8],port[4]>                             0          1          1    ZERO                 
#             bin <hi[9],port[4]>                             0          1          1    ZERO                 
#             bin <hi[15],port[2]>                            0          1          1    ZERO                 
#             bin <hi[8],port[2]>                             0          1          1    ZERO                 
#             bin <zero,port[2]>                              0          1          1    ZERO                 
#             bin <hi[9],port[2]>                             0          1          1    ZERO                 
#             bin <hi[12],port[2]>                            0          1          1    ZERO                 
#             bin <hi[15],port[1]>                            0          1          1    ZERO                 
#             bin <hi[8],port[1]>                             0          1          1    ZERO                 
#             bin <zero,port[1]>                              0          1          1    ZERO                 
#         Illegal and Ignore Bins:
#             ignore_bin lo                                   4                     -    Occurred             
#             ignore_bin md                                   1                     -    Occurred             
#             ignore_bin hi                                   1                     -    Occurred             
# 
# COVERGROUP COVERAGE:
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/CovPort                                  66.11%        100          -    Uncovered            
#     covered/total bins:                                    27         78          -                      
#     missing/total bins:                                    51         78          -                      
#     % Hit:                                             34.61%        100          -                      
#     Coverpoint port                                   100.00%        100          -    Covered              
#         covered/total bins:                                 8          8          -                      
#         missing/total bins:                                 0          8          -                      
#         % Hit:                                        100.00%        100          -                      
#     Coverpoint kind                                    80.00%        100          -    Uncovered            
#         covered/total bins:                                 8         10          -                      
#         missing/total bins:                                 2         10          -                      
#         % Hit:                                         80.00%        100          -                      
#     Cross #cross__0#                                   18.33%        100          -    Uncovered            
#         covered/total bins:                                11         60          -                      
#         missing/total bins:                                49         60          -                      
#         % Hit:                                         18.33%        100          -                      
#  Covergroup instance \/top/t1/ck                       66.11%        100          -    Uncovered            
#     covered/total bins:                                    27         78          -                      
#     missing/total bins:                                    51         78          -                      
#     % Hit:                                             34.61%        100          -                      
#     Coverpoint port                                   100.00%        100          -    Covered              
#         covered/total bins:                                 8          8          -                      
#         missing/total bins:                                 0          8          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin port[0]                                         4          1          -    Covered              
#         bin port[1]                                         8          1          -    Covered              
#         bin port[2]                                         3          1          -    Covered              
#         bin port[3]                                         2          1          -    Covered              
#         bin port[4]                                         6          1          -    Covered              
#         bin port[5]                                         4          1          -    Covered              
#         bin port[6]                                         3          1          -    Covered              
#         bin port[7]                                         2          1          -    Covered              
#     Coverpoint kind                                    80.00%        100          -    Uncovered            
#         covered/total bins:                                 8         10          -                      
#         missing/total bins:                                 2         10          -                      
#         % Hit:                                         80.00%        100          -                      
#         bin zero                                            1          1          -    Covered              
#         bin lo                                              4          1          -    Covered              
#         bin hi[8]                                           1          1          -    Covered              
#         bin hi[9]                                           2          1          -    Covered              
#         bin hi[10]                                          1          1          -    Covered              
#         bin hi[11]                                          0          1          -    ZERO                 
#         bin hi[12]                                          3          1          -    Covered              
#         bin hi[13]                                          6          1          -    Covered              
#         bin hi[14]                                          0          1          -    ZERO                 
#         bin hi[15]                                          1          1          -    Covered              
#         default bin misc                                   13                     -    Occurred             
#     Cross #cross__0#                                   18.33%        100          -    Uncovered            
#         covered/total bins:                                11         60          -                      
#         missing/total bins:                                49         60          -                      
#         % Hit:                                         18.33%        100          -                      
#         Auto, Default and User Defined Bins:
#             bin <hi[15],port[6]>                            1          1          -    Covered              
#             bin <hi[8],port[6]>                             1          1          -    Covered              
#             bin <hi[13],port[5]>                            2          1          -    Covered              
#             bin <hi[13],port[4]>                            1          1          -    Covered              
#             bin <hi[12],port[5]>                            1          1          -    Covered              
#             bin <hi[12],port[4]>                            1          1          -    Covered              
#             bin <zero,port[4]>                              1          1          -    Covered              
#             bin <hi[13],port[2]>                            1          1          -    Covered              
#             bin <hi[13],port[1]>                            1          1          -    Covered              
#             bin <hi[9],port[1]>                             2          1          -    Covered              
#             bin <hi[12],port[1]>                            1          1          -    Covered              
#             bin <hi[11],*>                                  0          1          6    ZERO                 
#             bin <hi[10],*>                                  0          1          6    ZERO                 
#             bin <hi[14],*>                                  0          1          7    ZERO                 
#             bin <*,port[3]>                                 0          1          9    ZERO                 
#             bin <*,port[0]>                                 0          1          6    ZERO                 
#             bin <zero,port[6]>                              0          1          1    ZERO                 
#             bin <hi[13],port[6]>                            0          1          1    ZERO                 
#             bin <hi[9],port[6]>                             0          1          1    ZERO                 
#             bin <hi[12],port[6]>                            0          1          1    ZERO                 
#             bin <hi[15],port[5]>                            0          1          1    ZERO                 
#             bin <hi[8],port[5]>                             0          1          1    ZERO                 
#             bin <zero,port[5]>                              0          1          1    ZERO                 
#             bin <hi[9],port[5]>                             0          1          1    ZERO                 
#             bin <hi[15],port[4]>                            0          1          1    ZERO                 
#             bin <hi[8],port[4]>                             0          1          1    ZERO                 
#             bin <hi[9],port[4]>                             0          1          1    ZERO                 
#             bin <hi[15],port[2]>                            0          1          1    ZERO                 
#             bin <hi[8],port[2]>                             0          1          1    ZERO                 
#             bin <zero,port[2]>                              0          1          1    ZERO                 
#             bin <hi[9],port[2]>                             0          1          1    ZERO                 
#             bin <hi[12],port[2]>                            0          1          1    ZERO                 
#             bin <hi[15],port[1]>                            0          1          1    ZERO                 
#             bin <hi[8],port[1]>                             0          1          1    ZERO                 
#             bin <zero,port[1]>                              0          1          1    ZERO                 
#         Illegal and Ignore Bins:
#             ignore_bin lo                                   4                     -    Occurred             
#             ignore_bin md                                   1                     -    Occurred             
#             ignore_bin hi                                   1                     -    Occurred             
# 
# TOTAL COVERGROUP COVERAGE: 66.11%  COVERGROUP TYPES: 1
# 
# ASSERTION RESULTS:
# --------------------------------------------------------------------
# Name                 File(Line)                   Failure      Pass 
#                                                   Count        Count
# --------------------------------------------------------------------
# /top/t1/#ublk#502948#49/immed__50
#                      design.sv(50)                      0          1
# 
# Total Coverage By Instance (filtered view): 83.05%
# 
# 
# End time: 10:54:15 on Jul 06,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   0
#     vopt: Errors:   0, Warnings:   1
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   1
Done
