[2024-07-06 13:57:49 UTC] qrun -batch -access=rw+/. '-timescale' '1ns/1ns' -mfcu design.sv testbench.sv '-voptargs=+acc=npr'  -do run.do  
QuestaSim-64 qrun 2023.1 Utility 2023.01 Jan 23 2023
Start time: 09:57:49 on Jul 06,2024
qrun -batch -access=rw+/. -timescale 1ns/1ns -mfcu design.sv testbench.sv -voptargs="+acc=npr" -do "run.do" 
Creating library 'qrun.out/work'.
QuestaSim-64 vlog 2023.1 Compiler 2023.01 Jan 23 2023
Start time: 09:57:49 on Jul 06,2024
vlog -timescale 1ns/1ns -mfcu design.sv testbench.sv -work qrun.out/work -csession=incr -writesessionid "+qrun.out/top_dus" -statslog qrun.out/stats_log 
-- Compiling interface busifc
-- Compiling program test
-- Compiling module top

Top level modules:
	top
End time: 09:57:49 on Jul 06,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 0
QuestaSim-64 vopt 2023.1 Compiler 2023.01 Jan 23 2023
** Warning: (vopt-10587) Some optimizations are turned off because the +acc switch is in effect. This will cause your simulation to run slowly. Please use -access/-debug to maintain needed visibility.
Start time: 09:57:49 on Jul 06,2024
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
End time: 09:57:50 on Jul 06,2024, Elapsed time: 0:00:01
Errors: 0, Warnings: 1
# vsim -batch -voptargs="+acc=npr" -lib qrun.out/work -do "run.do" -statslog qrun.out/stats_log qrun_opt -appendlog -l qrun.log -csession=incr 
# Start time: 09:57:50 on Jul 06,2024
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
# Coverage = 64.54%
# ** Note: $stop    : design.sv(60)
#    Time: 315 ns  Iteration: 1  Instance: /top/t1
# Break in Module test at design.sv line 60
# Stopped at design.sv line 60
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
# /top/t1/#ublk#502948#52/immed__53
#                      design.sv(53)                      0          1
# 
# Covergroup Coverage:
#     Covergroups                      1        na        na    64.54%
#         Coverpoints/Crosses          5        na        na        na
#             Covergroup Bins         85        49        36    57.64%
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/CovAll                                   64.54%        100          -    Uncovered            
#     covered/total bins:                                    49         85          -                      
#     missing/total bins:                                    36         85          -                      
#     % Hit:                                             57.64%        100          -                      
#     Coverpoint len16                                   81.25%        100          -    Uncovered            
#         covered/total bins:                                13         16          -                      
#         missing/total bins:                                 3         16          -                      
#         % Hit:                                         81.25%        100          -                      
#     Coverpoint len32                                   40.62%        100          -    Uncovered            
#         covered/total bins:                                13         32          -                      
#         missing/total bins:                                19         32          -                      
#         % Hit:                                         40.62%        100          -                      
#     Coverpoint len                                     54.16%        100          -    Uncovered            
#         covered/total bins:                                13         24          -                      
#         missing/total bins:                                11         24          -                      
#         % Hit:                                         54.16%        100          -                      
#     Coverpoint kind                                    80.00%        100          -    Uncovered            
#         covered/total bins:                                 8         10          -                      
#         missing/total bins:                                 2         10          -                      
#         % Hit:                                         80.00%        100          -                      
#     Coverpoint int_signed                              66.66%        100          -    Uncovered            
#         covered/total bins:                                 2          3          -                      
#         missing/total bins:                                 1          3          -                      
#         % Hit:                                         66.66%        100          -                      
#  Covergroup instance \/top/t1/ck                       64.54%        100          -    Uncovered            
#     covered/total bins:                                    49         85          -                      
#     missing/total bins:                                    36         85          -                      
#     % Hit:                                             57.64%        100          -                      
#     Coverpoint len16                                   81.25%        100          -    Uncovered            
#         covered/total bins:                                13         16          -                      
#         missing/total bins:                                 3         16          -                      
#         % Hit:                                         81.25%        100          -                      
#         bin auto[0]                                         2          1          -    Covered              
#         bin auto[1]                                         0          1          -    ZERO                 
#         bin auto[2]                                         0          1          -    ZERO                 
#         bin auto[3]                                         1          1          -    Covered              
#         bin auto[4]                                         3          1          -    Covered              
#         bin auto[5]                                         2          1          -    Covered              
#         bin auto[6]                                         4          1          -    Covered              
#         bin auto[7]                                         2          1          -    Covered              
#         bin auto[8]                                         6          1          -    Covered              
#         bin auto[9]                                         1          1          -    Covered              
#         bin auto[10]                                        1          1          -    Covered              
#         bin auto[11]                                        6          1          -    Covered              
#         bin auto[12]                                        1          1          -    Covered              
#         bin auto[13]                                        2          1          -    Covered              
#         bin auto[14]                                        1          1          -    Covered              
#         bin auto[15]                                        0          1          -    ZERO                 
#     Coverpoint len32                                   40.62%        100          -    Uncovered            
#         covered/total bins:                                13         32          -                      
#         missing/total bins:                                19         32          -                      
#         % Hit:                                         40.62%        100          -                      
#         bin auto[0]                                         0          1          -    ZERO                 
#         bin auto[1]                                         0          1          -    ZERO                 
#         bin auto[2]                                         0          1          -    ZERO                 
#         bin auto[3]                                         0          1          -    ZERO                 
#         bin auto[4]                                         0          1          -    ZERO                 
#         bin auto[5]                                         2          1          -    Covered              
#         bin auto[6]                                         4          1          -    Covered              
#         bin auto[7]                                         2          1          -    Covered              
#         bin auto[8]                                         6          1          -    Covered              
#         bin auto[9]                                         1          1          -    Covered              
#         bin auto[10]                                        1          1          -    Covered              
#         bin auto[11]                                        6          1          -    Covered              
#         bin auto[12]                                        1          1          -    Covered              
#         bin auto[13]                                        2          1          -    Covered              
#         bin auto[14]                                        1          1          -    Covered              
#         bin auto[15]                                        0          1          -    ZERO                 
#         bin auto[16]                                        2          1          -    Covered              
#         bin auto[17]                                        0          1          -    ZERO                 
#         bin auto[18]                                        0          1          -    ZERO                 
#         bin auto[19]                                        1          1          -    Covered              
#         bin auto[20]                                        3          1          -    Covered              
#         bin auto[21]                                        0          1          -    ZERO                 
#         bin auto[22]                                        0          1          -    ZERO                 
#         bin auto[23]                                        0          1          -    ZERO                 
#         bin auto[24]                                        0          1          -    ZERO                 
#         bin auto[25]                                        0          1          -    ZERO                 
#         bin auto[26]                                        0          1          -    ZERO                 
#         bin auto[27]                                        0          1          -    ZERO                 
#         bin auto[28]                                        0          1          -    ZERO                 
#         bin auto[29]                                        0          1          -    ZERO                 
#         bin auto[30]                                        0          1          -    ZERO                 
#         bin auto[31]                                        0          1          -    ZERO                 
#     Coverpoint len                                     54.16%        100          -    Uncovered            
#         covered/total bins:                                13         24          -                      
#         missing/total bins:                                11         24          -                      
#         % Hit:                                         54.16%        100          -                      
#         bin len[0]                                          0          1          -    ZERO                 
#         bin len[1]                                          0          1          -    ZERO                 
#         bin len[2]                                          0          1          -    ZERO                 
#         bin len[3]                                          0          1          -    ZERO                 
#         bin len[4]                                          0          1          -    ZERO                 
#         bin len[5]                                          2          1          -    Covered              
#         bin len[6]                                          4          1          -    Covered              
#         bin len[7]                                          2          1          -    Covered              
#         bin len[8]                                          6          1          -    Covered              
#         bin len[9]                                          1          1          -    Covered              
#         bin len[10]                                         1          1          -    Covered              
#         bin len[11]                                         6          1          -    Covered              
#         bin len[12]                                         1          1          -    Covered              
#         bin len[13]                                         2          1          -    Covered              
#         bin len[14]                                         1          1          -    Covered              
#         bin len[15]                                         0          1          -    ZERO                 
#         bin len[16]                                         2          1          -    Covered              
#         bin len[17]                                         0          1          -    ZERO                 
#         bin len[18]                                         0          1          -    ZERO                 
#         bin len[19]                                         1          1          -    Covered              
#         bin len[20]                                         3          1          -    Covered              
#         bin len[21]                                         0          1          -    ZERO                 
#         bin len[22]                                         0          1          -    ZERO                 
#         bin len[23]                                         0          1          -    ZERO                 
#     Coverpoint kind                                    80.00%        100          -    Uncovered            
#         covered/total bins:                                 8         10          -                      
#         missing/total bins:                                 2         10          -                      
#         % Hit:                                         80.00%        100          -                      
#         bin zero                                            1          1          -    Covered              
#         bin lo                                              8          1          -    Covered              
#         bin hi[8]                                           1          1          -    Covered              
#         bin hi[9]                                           2          1          -    Covered              
#         bin hi[10]                                          1          1          -    Covered              
#         bin hi[11]                                          0          1          -    ZERO                 
#         bin hi[12]                                          3          1          -    Covered              
#         bin hi[13]                                          6          1          -    Covered              
#         bin hi[14]                                          0          1          -    ZERO                 
#         bin hi[15]                                          1          1          -    Covered              
#         default bin misc                                    9                     -    Occurred             
#     Coverpoint int_signed                              66.66%        100          -    Uncovered            
#         covered/total bins:                                 2          3          -                      
#         missing/total bins:                                 1          3          -                      
#         % Hit:                                         66.66%        100          -                      
#         bin neg                                            12          1          -    Covered              
#         bin zero                                            0          1          -    ZERO                 
#         bin pos                                            20          1          -    Covered              
# 
# COVERGROUP COVERAGE:
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/CovAll                                   64.54%        100          -    Uncovered            
#     covered/total bins:                                    49         85          -                      
#     missing/total bins:                                    36         85          -                      
#     % Hit:                                             57.64%        100          -                      
#     Coverpoint len16                                   81.25%        100          -    Uncovered            
#         covered/total bins:                                13         16          -                      
#         missing/total bins:                                 3         16          -                      
#         % Hit:                                         81.25%        100          -                      
#     Coverpoint len32                                   40.62%        100          -    Uncovered            
#         covered/total bins:                                13         32          -                      
#         missing/total bins:                                19         32          -                      
#         % Hit:                                         40.62%        100          -                      
#     Coverpoint len                                     54.16%        100          -    Uncovered            
#         covered/total bins:                                13         24          -                      
#         missing/total bins:                                11         24          -                      
#         % Hit:                                         54.16%        100          -                      
#     Coverpoint kind                                    80.00%        100          -    Uncovered            
#         covered/total bins:                                 8         10          -                      
#         missing/total bins:                                 2         10          -                      
#         % Hit:                                         80.00%        100          -                      
#     Coverpoint int_signed                              66.66%        100          -    Uncovered            
#         covered/total bins:                                 2          3          -                      
#         missing/total bins:                                 1          3          -                      
#         % Hit:                                         66.66%        100          -                      
#  Covergroup instance \/top/t1/ck                       64.54%        100          -    Uncovered            
#     covered/total bins:                                    49         85          -                      
#     missing/total bins:                                    36         85          -                      
#     % Hit:                                             57.64%        100          -                      
#     Coverpoint len16                                   81.25%        100          -    Uncovered            
#         covered/total bins:                                13         16          -                      
#         missing/total bins:                                 3         16          -                      
#         % Hit:                                         81.25%        100          -                      
#         bin auto[0]                                         2          1          -    Covered              
#         bin auto[1]                                         0          1          -    ZERO                 
#         bin auto[2]                                         0          1          -    ZERO                 
#         bin auto[3]                                         1          1          -    Covered              
#         bin auto[4]                                         3          1          -    Covered              
#         bin auto[5]                                         2          1          -    Covered              
#         bin auto[6]                                         4          1          -    Covered              
#         bin auto[7]                                         2          1          -    Covered              
#         bin auto[8]                                         6          1          -    Covered              
#         bin auto[9]                                         1          1          -    Covered              
#         bin auto[10]                                        1          1          -    Covered              
#         bin auto[11]                                        6          1          -    Covered              
#         bin auto[12]                                        1          1          -    Covered              
#         bin auto[13]                                        2          1          -    Covered              
#         bin auto[14]                                        1          1          -    Covered              
#         bin auto[15]                                        0          1          -    ZERO                 
#     Coverpoint len32                                   40.62%        100          -    Uncovered            
#         covered/total bins:                                13         32          -                      
#         missing/total bins:                                19         32          -                      
#         % Hit:                                         40.62%        100          -                      
#         bin auto[0]                                         0          1          -    ZERO                 
#         bin auto[1]                                         0          1          -    ZERO                 
#         bin auto[2]                                         0          1          -    ZERO                 
#         bin auto[3]                                         0          1          -    ZERO                 
#         bin auto[4]                                         0          1          -    ZERO                 
#         bin auto[5]                                         2          1          -    Covered              
#         bin auto[6]                                         4          1          -    Covered              
#         bin auto[7]                                         2          1          -    Covered              
#         bin auto[8]                                         6          1          -    Covered              
#         bin auto[9]                                         1          1          -    Covered              
#         bin auto[10]                                        1          1          -    Covered              
#         bin auto[11]                                        6          1          -    Covered              
#         bin auto[12]                                        1          1          -    Covered              
#         bin auto[13]                                        2          1          -    Covered              
#         bin auto[14]                                        1          1          -    Covered              
#         bin auto[15]                                        0          1          -    ZERO                 
#         bin auto[16]                                        2          1          -    Covered              
#         bin auto[17]                                        0          1          -    ZERO                 
#         bin auto[18]                                        0          1          -    ZERO                 
#         bin auto[19]                                        1          1          -    Covered              
#         bin auto[20]                                        3          1          -    Covered              
#         bin auto[21]                                        0          1          -    ZERO                 
#         bin auto[22]                                        0          1          -    ZERO                 
#         bin auto[23]                                        0          1          -    ZERO                 
#         bin auto[24]                                        0          1          -    ZERO                 
#         bin auto[25]                                        0          1          -    ZERO                 
#         bin auto[26]                                        0          1          -    ZERO                 
#         bin auto[27]                                        0          1          -    ZERO                 
#         bin auto[28]                                        0          1          -    ZERO                 
#         bin auto[29]                                        0          1          -    ZERO                 
#         bin auto[30]                                        0          1          -    ZERO                 
#         bin auto[31]                                        0          1          -    ZERO                 
#     Coverpoint len                                     54.16%        100          -    Uncovered            
#         covered/total bins:                                13         24          -                      
#         missing/total bins:                                11         24          -                      
#         % Hit:                                         54.16%        100          -                      
#         bin len[0]                                          0          1          -    ZERO                 
#         bin len[1]                                          0          1          -    ZERO                 
#         bin len[2]                                          0          1          -    ZERO                 
#         bin len[3]                                          0          1          -    ZERO                 
#         bin len[4]                                          0          1          -    ZERO                 
#         bin len[5]                                          2          1          -    Covered              
#         bin len[6]                                          4          1          -    Covered              
#         bin len[7]                                          2          1          -    Covered              
#         bin len[8]                                          6          1          -    Covered              
#         bin len[9]                                          1          1          -    Covered              
#         bin len[10]                                         1          1          -    Covered              
#         bin len[11]                                         6          1          -    Covered              
#         bin len[12]                                         1          1          -    Covered              
#         bin len[13]                                         2          1          -    Covered              
#         bin len[14]                                         1          1          -    Covered              
#         bin len[15]                                         0          1          -    ZERO                 
#         bin len[16]                                         2          1          -    Covered              
#         bin len[17]                                         0          1          -    ZERO                 
#         bin len[18]                                         0          1          -    ZERO                 
#         bin len[19]                                         1          1          -    Covered              
#         bin len[20]                                         3          1          -    Covered              
#         bin len[21]                                         0          1          -    ZERO                 
#         bin len[22]                                         0          1          -    ZERO                 
#         bin len[23]                                         0          1          -    ZERO                 
#     Coverpoint kind                                    80.00%        100          -    Uncovered            
#         covered/total bins:                                 8         10          -                      
#         missing/total bins:                                 2         10          -                      
#         % Hit:                                         80.00%        100          -                      
#         bin zero                                            1          1          -    Covered              
#         bin lo                                              8          1          -    Covered              
#         bin hi[8]                                           1          1          -    Covered              
#         bin hi[9]                                           2          1          -    Covered              
#         bin hi[10]                                          1          1          -    Covered              
#         bin hi[11]                                          0          1          -    ZERO                 
#         bin hi[12]                                          3          1          -    Covered              
#         bin hi[13]                                          6          1          -    Covered              
#         bin hi[14]                                          0          1          -    ZERO                 
#         bin hi[15]                                          1          1          -    Covered              
#         default bin misc                                    9                     -    Occurred             
#     Coverpoint int_signed                              66.66%        100          -    Uncovered            
#         covered/total bins:                                 2          3          -                      
#         missing/total bins:                                 1          3          -                      
#         % Hit:                                         66.66%        100          -                      
#         bin neg                                            12          1          -    Covered              
#         bin zero                                            0          1          -    ZERO                 
#         bin pos                                            20          1          -    Covered              
# 
# TOTAL COVERGROUP COVERAGE: 64.54%  COVERGROUP TYPES: 1
# 
# ASSERTION RESULTS:
# --------------------------------------------------------------------
# Name                 File(Line)                   Failure      Pass 
#                                                   Count        Count
# --------------------------------------------------------------------
# /top/t1/#ublk#502948#52/immed__53
#                      design.sv(53)                      0          1
# 
# Total Coverage By Instance (filtered view): 82.27%
# 
# 
# End time: 09:57:50 on Jul 06,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   0
#     vopt: Errors:   0, Warnings:   1
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   1
Done
