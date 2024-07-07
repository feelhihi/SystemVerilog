[2024-07-07 07:42:59 UTC] qrun -batch -access=rw+/. '-timescale' '1ns/1ns' -mfcu design.sv testbench.sv '-voptargs=+acc=npr'  -do run.do  
QuestaSim-64 qrun 2023.1 Utility 2023.01 Jan 23 2023
Start time: 03:43:00 on Jul 07,2024
qrun -batch -access=rw+/. -timescale 1ns/1ns -mfcu design.sv testbench.sv -voptargs="+acc=npr" -do "run.do" 
Creating library 'qrun.out/work'.
QuestaSim-64 vlog 2023.1 Compiler 2023.01 Jan 23 2023
Start time: 03:43:00 on Jul 07,2024
vlog -timescale 1ns/1ns -mfcu design.sv testbench.sv -work qrun.out/work -csession=incr -writesessionid "+qrun.out/top_dus" -statslog qrun.out/stats_log 
-- Compiling interface busifc
-- Compiling program test
-- Compiling module top

Top level modules:
	top
End time: 03:43:00 on Jul 07,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 0
QuestaSim-64 vopt 2023.1 Compiler 2023.01 Jan 23 2023
** Warning: (vopt-10587) Some optimizations are turned off because the +acc switch is in effect. This will cause your simulation to run slowly. Please use -access/-debug to maintain needed visibility.
Start time: 03:43:00 on Jul 07,2024
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
End time: 03:43:00 on Jul 07,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 1
# vsim -batch -voptargs="+acc=npr" -lib qrun.out/work -do "run.do" -statslog qrun.out/stats_log qrun_opt -appendlog -l qrun.log -csession=incr 
# Start time: 03:43:00 on Jul 07,2024
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
# ** Note: $stop    : design.sv(78)
#    Time: 315 ns  Iteration: 1  Instance: /top/t1
# Break in Module test at design.sv line 78
# Stopped at design.sv line 78
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
# /top/t1/#ublk#502948#70/immed__71
#                      design.sv(71)                      0          1
# 
# Covergroup Coverage:
#     Covergroups                      3        na        na    89.14%
#         Coverpoints/Crosses          5        na        na        na
#             Covergroup Bins        158        54       104    34.17%
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/CoverPort                               100.00%        100          -    Covered              
#     covered/total bins:                                     2          2          -                      
#     missing/total bins:                                     0          2          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint #coverpoint__0#                        100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#  Covergroup instance \/top/t1/cp                      100.00%        100          -    Covered              
#     covered/total bins:                                     2          2          -                      
#     missing/total bins:                                     0          2          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint #coverpoint__0#                        100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin lo                                             23          1          -    Covered              
#         bin hi                                              9          1          -    Covered              
#  TYPE /top/t1/CoverPortSelect                         100.00%        100          -    Covered              
#     covered/total bins:                                     4          4          -                      
#     missing/total bins:                                     0          4          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint port                                   100.00%        100          -    Covered              
#         covered/total bins:                                 4          4          -                      
#         missing/total bins:                                 0          4          -                      
#         % Hit:                                        100.00%        100          -                      
#  Covergroup instance \/top/t1/cpa                     100.00%        100          -    Covered              
#     covered/total bins:                                     2          2          -                      
#     missing/total bins:                                     0          2          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint port                                   100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin lo                                             18          1          -    Covered              
#         bin hi                                             14          1          -    Covered              
#  Covergroup instance \/top/t1/cpb                     100.00%        100          -    Covered              
#     covered/total bins:                                     2          2          -                      
#     missing/total bins:                                     0          2          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint port                                   100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin lo                                              6          1          -    Covered              
#         bin hi                                             26          1          -    Covered              
#  TYPE /top/t1/CoverPortTarget                          67.44%        100          -    Uncovered            
#     covered/total bins:                                    48        152          -                      
#     missing/total bins:                                   104        152          -                      
#     % Hit:                                             31.57%        100          -                      
#     Coverpoint port                                   100.00%        100          -    Covered              
#         covered/total bins:                                 8          8          -                      
#         missing/total bins:                                 0          8          -                      
#         % Hit:                                        100.00%        100          -                      
#     Coverpoint kind                                    81.25%        100          -    Uncovered            
#         covered/total bins:                                13         16          -                      
#         missing/total bins:                                 3         16          -                      
#         % Hit:                                         81.25%        100          -                      
#     Cross #cross__0#                                   21.09%        100          -    Uncovered            
#         covered/total bins:                                27        128          -                      
#         missing/total bins:                               101        128          -                      
#         % Hit:                                         21.09%        100          -                      
#  Covergroup instance \/top/t1/ct                       67.44%         90          -    Uncovered            
#     covered/total bins:                                    48        152          -                      
#     missing/total bins:                                   104        152          -                      
#     % Hit:                                             31.57%        100          -                      
#     Coverpoint port                                   100.00%        100          -    Covered              
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
#     Coverpoint kind                                    81.25%        100          -    Uncovered            
#         covered/total bins:                                13         16          -                      
#         missing/total bins:                                 3         16          -                      
#         % Hit:                                         81.25%        100          -                      
#         bin auto[0]                                         1          1          -    Covered              
#         bin auto[1]                                         0          1          -    ZERO                 
#         bin auto[2]                                         3          1          -    Covered              
#         bin auto[3]                                         1          1          -    Covered              
#         bin auto[4]                                         3          1          -    Covered              
#         bin auto[5]                                         4          1          -    Covered              
#         bin auto[6]                                         4          1          -    Covered              
#         bin auto[7]                                         2          1          -    Covered              
#         bin auto[8]                                         1          1          -    Covered              
#         bin auto[9]                                         2          1          -    Covered              
#         bin auto[10]                                        1          1          -    Covered              
#         bin auto[11]                                        0          1          -    ZERO                 
#         bin auto[12]                                        3          1          -    Covered              
#         bin auto[13]                                        6          1          -    Covered              
#         bin auto[14]                                        0          1          -    ZERO                 
#         bin auto[15]                                        1          1          -    Covered              
#     Cross #cross__0#                                   21.09%        100          -    Uncovered            
#         covered/total bins:                                27        128          -                      
#         missing/total bins:                               101        128          -                      
#         % Hit:                                         21.09%        100          -                      
#         Auto, Default and User Defined Bins:
#             bin <auto[13],auto[7]>                          1          1          -    Covered              
#             bin <auto[7],auto[7]>                           1          1          -    Covered              
#             bin <auto[15],auto[6]>                          1          1          -    Covered              
#             bin <auto[8],auto[6]>                           1          1          -    Covered              
#             bin <auto[6],auto[6]>                           1          1          -    Covered              
#             bin <auto[13],auto[5]>                          2          1          -    Covered              
#             bin <auto[12],auto[5]>                          1          1          -    Covered              
#             bin <auto[6],auto[5]>                           1          1          -    Covered              
#             bin <auto[13],auto[4]>                          1          1          -    Covered              
#             bin <auto[12],auto[4]>                          1          1          -    Covered              
#             bin <auto[6],auto[4]>                           1          1          -    Covered              
#             bin <auto[4],auto[4]>                           2          1          -    Covered              
#             bin <auto[0],auto[4]>                           1          1          -    Covered              
#             bin <auto[5],auto[3]>                           1          1          -    Covered              
#             bin <auto[2],auto[3]>                           1          1          -    Covered              
#             bin <auto[13],auto[2]>                          1          1          -    Covered              
#             bin <auto[6],auto[2]>                           1          1          -    Covered              
#             bin <auto[4],auto[2]>                           1          1          -    Covered              
#             bin <auto[13],auto[1]>                          1          1          -    Covered              
#             bin <auto[12],auto[1]>                          1          1          -    Covered              
#             bin <auto[9],auto[1]>                           2          1          -    Covered              
#             bin <auto[7],auto[1]>                           1          1          -    Covered              
#             bin <auto[5],auto[1]>                           2          1          -    Covered              
#             bin <auto[3],auto[1]>                           1          1          -    Covered              
#             bin <auto[10],auto[0]>                          1          1          -    Covered              
#             bin <auto[5],auto[0]>                           1          1          -    Covered              
#             bin <auto[2],auto[0]>                           2          1          -    Covered              
#             bin <auto[14],*>                                0          1          8    ZERO                 
#             bin <auto[11],*>                                0          1          8    ZERO                 
#             bin <auto[1],*>                                 0          1          8    ZERO                 
#             bin <auto[15],auto[7]>                          0          1          1    ZERO                 
#             bin <auto[12],auto[7]>                          0          1          1    ZERO                 
#             bin <auto[10],auto[7]>                          0          1          1    ZERO                 
#             bin <auto[9],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[8],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[6],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[5],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[4],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[3],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[2],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[0],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[13],auto[6]>                          0          1          1    ZERO                 
#             bin <auto[12],auto[6]>                          0          1          1    ZERO                 
#             bin <auto[10],auto[6]>                          0          1          1    ZERO                 
#             bin <auto[9],auto[6]>                           0          1          1    ZERO                 
#             bin <auto[7],auto[6]>                           0          1          1    ZERO                 
#             bin <auto[5],auto[6]>                           0          1          1    ZERO                 
#             bin <auto[4],auto[6]>                           0          1          1    ZERO                 
#             bin <auto[3],auto[6]>                           0          1          1    ZERO                 
#             bin <auto[2],auto[6]>                           0          1          1    ZERO                 
#             bin <auto[0],auto[6]>                           0          1          1    ZERO                 
#             bin <auto[15],auto[5]>                          0          1          1    ZERO                 
#             bin <auto[10],auto[5]>                          0          1          1    ZERO                 
#             bin <auto[9],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[8],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[7],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[5],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[4],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[3],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[2],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[0],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[15],auto[4]>                          0          1          1    ZERO                 
#             bin <auto[10],auto[4]>                          0          1          1    ZERO                 
#             bin <auto[9],auto[4]>                           0          1          1    ZERO                 
#             bin <auto[8],auto[4]>                           0          1          1    ZERO                 
#             bin <auto[7],auto[4]>                           0          1          1    ZERO                 
#             bin <auto[5],auto[4]>                           0          1          1    ZERO                 
#             bin <auto[3],auto[4]>                           0          1          1    ZERO                 
#             bin <auto[2],auto[4]>                           0          1          1    ZERO                 
#             bin <auto[15],auto[3]>                          0          1          1    ZERO                 
#             bin <auto[13],auto[3]>                          0          1          1    ZERO                 
#             bin <auto[12],auto[3]>                          0          1          1    ZERO                 
#             bin <auto[10],auto[3]>                          0          1          1    ZERO                 
#             bin <auto[9],auto[3]>                           0          1          1    ZERO                 
#             bin <auto[8],auto[3]>                           0          1          1    ZERO                 
#             bin <auto[7],auto[3]>                           0          1          1    ZERO                 
#             bin <auto[6],auto[3]>                           0          1          1    ZERO                 
#             bin <auto[4],auto[3]>                           0          1          1    ZERO                 
#             bin <auto[3],auto[3]>                           0          1          1    ZERO                 
#             bin <auto[0],auto[3]>                           0          1          1    ZERO                 
#             bin <auto[15],auto[2]>                          0          1          1    ZERO                 
#             bin <auto[12],auto[2]>                          0          1          1    ZERO                 
#             bin <auto[10],auto[2]>                          0          1          1    ZERO                 
#             bin <auto[9],auto[2]>                           0          1          1    ZERO                 
#             bin <auto[8],auto[2]>                           0          1          1    ZERO                 
#             bin <auto[7],auto[2]>                           0          1          1    ZERO                 
#             bin <auto[5],auto[2]>                           0          1          1    ZERO                 
#             bin <auto[3],auto[2]>                           0          1          1    ZERO                 
#             bin <auto[2],auto[2]>                           0          1          1    ZERO                 
#             bin <auto[0],auto[2]>                           0          1          1    ZERO                 
#             bin <auto[15],auto[1]>                          0          1          1    ZERO                 
#             bin <auto[10],auto[1]>                          0          1          1    ZERO                 
#             bin <auto[8],auto[1]>                           0          1          1    ZERO                 
#             bin <auto[6],auto[1]>                           0          1          1    ZERO                 
#             bin <auto[4],auto[1]>                           0          1          1    ZERO                 
#             bin <auto[2],auto[1]>                           0          1          1    ZERO                 
#             bin <auto[0],auto[1]>                           0          1          1    ZERO                 
#             bin <auto[15],auto[0]>                          0          1          1    ZERO                 
#             bin <auto[13],auto[0]>                          0          1          1    ZERO                 
#             bin <auto[12],auto[0]>                          0          1          1    ZERO                 
#             bin <auto[9],auto[0]>                           0          1          1    ZERO                 
#             bin <auto[8],auto[0]>                           0          1          1    ZERO                 
#             bin <auto[7],auto[0]>                           0          1          1    ZERO                 
#             bin <auto[6],auto[0]>                           0          1          1    ZERO                 
#             bin <auto[4],auto[0]>                           0          1          1    ZERO                 
#             bin <auto[3],auto[0]>                           0          1          1    ZERO                 
#             bin <auto[0],auto[0]>                           0          1          1    ZERO                 
# 
# COVERGROUP COVERAGE:
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/CoverPort                               100.00%        100          -    Covered              
#     covered/total bins:                                     2          2          -                      
#     missing/total bins:                                     0          2          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint #coverpoint__0#                        100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#  Covergroup instance \/top/t1/cp                      100.00%        100          -    Covered              
#     covered/total bins:                                     2          2          -                      
#     missing/total bins:                                     0          2          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint #coverpoint__0#                        100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin lo                                             23          1          -    Covered              
#         bin hi                                              9          1          -    Covered              
#  TYPE /top/t1/CoverPortSelect                         100.00%        100          -    Covered              
#     covered/total bins:                                     4          4          -                      
#     missing/total bins:                                     0          4          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint port                                   100.00%        100          -    Covered              
#         covered/total bins:                                 4          4          -                      
#         missing/total bins:                                 0          4          -                      
#         % Hit:                                        100.00%        100          -                      
#  Covergroup instance \/top/t1/cpa                     100.00%        100          -    Covered              
#     covered/total bins:                                     2          2          -                      
#     missing/total bins:                                     0          2          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint port                                   100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin lo                                             18          1          -    Covered              
#         bin hi                                             14          1          -    Covered              
#  Covergroup instance \/top/t1/cpb                     100.00%        100          -    Covered              
#     covered/total bins:                                     2          2          -                      
#     missing/total bins:                                     0          2          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint port                                   100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin lo                                              6          1          -    Covered              
#         bin hi                                             26          1          -    Covered              
#  TYPE /top/t1/CoverPortTarget                          67.44%        100          -    Uncovered            
#     covered/total bins:                                    48        152          -                      
#     missing/total bins:                                   104        152          -                      
#     % Hit:                                             31.57%        100          -                      
#     Coverpoint port                                   100.00%        100          -    Covered              
#         covered/total bins:                                 8          8          -                      
#         missing/total bins:                                 0          8          -                      
#         % Hit:                                        100.00%        100          -                      
#     Coverpoint kind                                    81.25%        100          -    Uncovered            
#         covered/total bins:                                13         16          -                      
#         missing/total bins:                                 3         16          -                      
#         % Hit:                                         81.25%        100          -                      
#     Cross #cross__0#                                   21.09%        100          -    Uncovered            
#         covered/total bins:                                27        128          -                      
#         missing/total bins:                               101        128          -                      
#         % Hit:                                         21.09%        100          -                      
#  Covergroup instance \/top/t1/ct                       67.44%         90          -    Uncovered            
#     covered/total bins:                                    48        152          -                      
#     missing/total bins:                                   104        152          -                      
#     % Hit:                                             31.57%        100          -                      
#     Coverpoint port                                   100.00%        100          -    Covered              
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
#     Coverpoint kind                                    81.25%        100          -    Uncovered            
#         covered/total bins:                                13         16          -                      
#         missing/total bins:                                 3         16          -                      
#         % Hit:                                         81.25%        100          -                      
#         bin auto[0]                                         1          1          -    Covered              
#         bin auto[1]                                         0          1          -    ZERO                 
#         bin auto[2]                                         3          1          -    Covered              
#         bin auto[3]                                         1          1          -    Covered              
#         bin auto[4]                                         3          1          -    Covered              
#         bin auto[5]                                         4          1          -    Covered              
#         bin auto[6]                                         4          1          -    Covered              
#         bin auto[7]                                         2          1          -    Covered              
#         bin auto[8]                                         1          1          -    Covered              
#         bin auto[9]                                         2          1          -    Covered              
#         bin auto[10]                                        1          1          -    Covered              
#         bin auto[11]                                        0          1          -    ZERO                 
#         bin auto[12]                                        3          1          -    Covered              
#         bin auto[13]                                        6          1          -    Covered              
#         bin auto[14]                                        0          1          -    ZERO                 
#         bin auto[15]                                        1          1          -    Covered              
#     Cross #cross__0#                                   21.09%        100          -    Uncovered            
#         covered/total bins:                                27        128          -                      
#         missing/total bins:                               101        128          -                      
#         % Hit:                                         21.09%        100          -                      
#         Auto, Default and User Defined Bins:
#             bin <auto[13],auto[7]>                          1          1          -    Covered              
#             bin <auto[7],auto[7]>                           1          1          -    Covered              
#             bin <auto[15],auto[6]>                          1          1          -    Covered              
#             bin <auto[8],auto[6]>                           1          1          -    Covered              
#             bin <auto[6],auto[6]>                           1          1          -    Covered              
#             bin <auto[13],auto[5]>                          2          1          -    Covered              
#             bin <auto[12],auto[5]>                          1          1          -    Covered              
#             bin <auto[6],auto[5]>                           1          1          -    Covered              
#             bin <auto[13],auto[4]>                          1          1          -    Covered              
#             bin <auto[12],auto[4]>                          1          1          -    Covered              
#             bin <auto[6],auto[4]>                           1          1          -    Covered              
#             bin <auto[4],auto[4]>                           2          1          -    Covered              
#             bin <auto[0],auto[4]>                           1          1          -    Covered              
#             bin <auto[5],auto[3]>                           1          1          -    Covered              
#             bin <auto[2],auto[3]>                           1          1          -    Covered              
#             bin <auto[13],auto[2]>                          1          1          -    Covered              
#             bin <auto[6],auto[2]>                           1          1          -    Covered              
#             bin <auto[4],auto[2]>                           1          1          -    Covered              
#             bin <auto[13],auto[1]>                          1          1          -    Covered              
#             bin <auto[12],auto[1]>                          1          1          -    Covered              
#             bin <auto[9],auto[1]>                           2          1          -    Covered              
#             bin <auto[7],auto[1]>                           1          1          -    Covered              
#             bin <auto[5],auto[1]>                           2          1          -    Covered              
#             bin <auto[3],auto[1]>                           1          1          -    Covered              
#             bin <auto[10],auto[0]>                          1          1          -    Covered              
#             bin <auto[5],auto[0]>                           1          1          -    Covered              
#             bin <auto[2],auto[0]>                           2          1          -    Covered              
#             bin <auto[14],*>                                0          1          8    ZERO                 
#             bin <auto[11],*>                                0          1          8    ZERO                 
#             bin <auto[1],*>                                 0          1          8    ZERO                 
#             bin <auto[15],auto[7]>                          0          1          1    ZERO                 
#             bin <auto[12],auto[7]>                          0          1          1    ZERO                 
#             bin <auto[10],auto[7]>                          0          1          1    ZERO                 
#             bin <auto[9],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[8],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[6],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[5],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[4],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[3],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[2],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[0],auto[7]>                           0          1          1    ZERO                 
#             bin <auto[13],auto[6]>                          0          1          1    ZERO                 
#             bin <auto[12],auto[6]>                          0          1          1    ZERO                 
#             bin <auto[10],auto[6]>                          0          1          1    ZERO                 
#             bin <auto[9],auto[6]>                           0          1          1    ZERO                 
#             bin <auto[7],auto[6]>                           0          1          1    ZERO                 
#             bin <auto[5],auto[6]>                           0          1          1    ZERO                 
#             bin <auto[4],auto[6]>                           0          1          1    ZERO                 
#             bin <auto[3],auto[6]>                           0          1          1    ZERO                 
#             bin <auto[2],auto[6]>                           0          1          1    ZERO                 
#             bin <auto[0],auto[6]>                           0          1          1    ZERO                 
#             bin <auto[15],auto[5]>                          0          1          1    ZERO                 
#             bin <auto[10],auto[5]>                          0          1          1    ZERO                 
#             bin <auto[9],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[8],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[7],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[5],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[4],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[3],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[2],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[0],auto[5]>                           0          1          1    ZERO                 
#             bin <auto[15],auto[4]>                          0          1          1    ZERO                 
#             bin <auto[10],auto[4]>                          0          1          1    ZERO                 
#             bin <auto[9],auto[4]>                           0          1          1    ZERO                 
#             bin <auto[8],auto[4]>                           0          1          1    ZERO                 
#             bin <auto[7],auto[4]>                           0          1          1    ZERO                 
#             bin <auto[5],auto[4]>                           0          1          1    ZERO                 
#             bin <auto[3],auto[4]>                           0          1          1    ZERO                 
#             bin <auto[2],auto[4]>                           0          1          1    ZERO                 
#             bin <auto[15],auto[3]>                          0          1          1    ZERO                 
#             bin <auto[13],auto[3]>                          0          1          1    ZERO                 
#             bin <auto[12],auto[3]>                          0          1          1    ZERO                 
#             bin <auto[10],auto[3]>                          0          1          1    ZERO                 
#             bin <auto[9],auto[3]>                           0          1          1    ZERO                 
#             bin <auto[8],auto[3]>                           0          1          1    ZERO                 
#             bin <auto[7],auto[3]>                           0          1          1    ZERO                 
#             bin <auto[6],auto[3]>                           0          1          1    ZERO                 
#             bin <auto[4],auto[3]>                           0          1          1    ZERO                 
#             bin <auto[3],auto[3]>                           0          1          1    ZERO                 
#             bin <auto[0],auto[3]>                           0          1          1    ZERO                 
#             bin <auto[15],auto[2]>                          0          1          1    ZERO                 
#             bin <auto[12],auto[2]>                          0          1          1    ZERO                 
#             bin <auto[10],auto[2]>                          0          1          1    ZERO                 
#             bin <auto[9],auto[2]>                           0          1          1    ZERO                 
#             bin <auto[8],auto[2]>                           0          1          1    ZERO                 
#             bin <auto[7],auto[2]>                           0          1          1    ZERO                 
#             bin <auto[5],auto[2]>                           0          1          1    ZERO                 
#             bin <auto[3],auto[2]>                           0          1          1    ZERO                 
#             bin <auto[2],auto[2]>                           0          1          1    ZERO                 
#             bin <auto[0],auto[2]>                           0          1          1    ZERO                 
#             bin <auto[15],auto[1]>                          0          1          1    ZERO                 
#             bin <auto[10],auto[1]>                          0          1          1    ZERO                 
#             bin <auto[8],auto[1]>                           0          1          1    ZERO                 
#             bin <auto[6],auto[1]>                           0          1          1    ZERO                 
#             bin <auto[4],auto[1]>                           0          1          1    ZERO                 
#             bin <auto[2],auto[1]>                           0          1          1    ZERO                 
#             bin <auto[0],auto[1]>                           0          1          1    ZERO                 
#             bin <auto[15],auto[0]>                          0          1          1    ZERO                 
#             bin <auto[13],auto[0]>                          0          1          1    ZERO                 
#             bin <auto[12],auto[0]>                          0          1          1    ZERO                 
#             bin <auto[9],auto[0]>                           0          1          1    ZERO                 
#             bin <auto[8],auto[0]>                           0          1          1    ZERO                 
#             bin <auto[7],auto[0]>                           0          1          1    ZERO                 
#             bin <auto[6],auto[0]>                           0          1          1    ZERO                 
#             bin <auto[4],auto[0]>                           0          1          1    ZERO                 
#             bin <auto[3],auto[0]>                           0          1          1    ZERO                 
#             bin <auto[0],auto[0]>                           0          1          1    ZERO                 
# 
# TOTAL COVERGROUP COVERAGE: 89.14%  COVERGROUP TYPES: 3
# 
# ASSERTION RESULTS:
# --------------------------------------------------------------------
# Name                 File(Line)                   Failure      Pass 
#                                                   Count        Count
# --------------------------------------------------------------------
# /top/t1/#ublk#502948#70/immed__71
#                      design.sv(71)                      0          1
# 
# Total Coverage By Instance (filtered view): 94.57%
# 
# 
# End time: 03:43:01 on Jul 07,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   0
#     vopt: Errors:   0, Warnings:   1
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   1
Done
