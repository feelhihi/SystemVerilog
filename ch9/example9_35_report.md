[2024-07-07 04:14:37 UTC] qrun -batch -access=rw+/. '-timescale' '1ns/1ns' -mfcu design.sv testbench.sv '-voptargs=+acc=npr'  -do run.do  
QuestaSim-64 qrun 2023.1 Utility 2023.01 Jan 23 2023
Start time: 00:14:38 on Jul 07,2024
qrun -batch -access=rw+/. -timescale 1ns/1ns -mfcu design.sv testbench.sv -voptargs="+acc=npr" -do "run.do" 
Creating library 'qrun.out/work'.
QuestaSim-64 vlog 2023.1 Compiler 2023.01 Jan 23 2023
Start time: 00:14:38 on Jul 07,2024
vlog -timescale 1ns/1ns -mfcu design.sv testbench.sv -work qrun.out/work -csession=incr -writesessionid "+qrun.out/top_dus" -statslog qrun.out/stats_log 
-- Compiling interface busifc
-- Compiling program test
-- Compiling module top

Top level modules:
	top
End time: 00:14:38 on Jul 07,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 0
QuestaSim-64 vopt 2023.1 Compiler 2023.01 Jan 23 2023
** Warning: (vopt-10587) Some optimizations are turned off because the +acc switch is in effect. This will cause your simulation to run slowly. Please use -access/-debug to maintain needed visibility.
Start time: 00:14:38 on Jul 07,2024
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
End time: 00:14:38 on Jul 07,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 1
# vsim -batch -voptargs="+acc=npr" -lib qrun.out/work -do "run.do" -statslog qrun.out/stats_log qrun_opt -appendlog -l qrun.log -csession=incr 
# Start time: 00:14:38 on Jul 07,2024
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
# (a,b)=(1,0)
# (a,b)=(1,0)
# (a,b)=(1,0)
# (a,b)=(1,0)
# ** Note: $stop    : design.sv(84)
#    Time: 35 ns  Iteration: 1  Instance: /top/t1
# Break in Module test at design.sv line 84
# Stopped at design.sv line 84
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
# /top/t1/#ublk#502948#76/immed__77
#                      design.sv(77)                      0          1
# 
# Covergroup Coverage:
#     Covergroups                      3        na        na    33.33%
#         Coverpoints/Crosses          7        na        na        na
#             Covergroup Bins          9         3         6    33.33%
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/CrossBinNames                            33.33%        100          -    Uncovered            
#     covered/total bins:                                     1          3          -                      
#     missing/total bins:                                     2          3          -                      
#     % Hit:                                             33.33%        100          -                      
#     Coverpoint a                                        0.00%        100          -    ZERO                 
#         covered/total bins:                                 1          2          -                      
#         missing/total bins:                                 1          2          -                      
#         % Hit:                                         50.00%        100          -                      
#     Coverpoint b                                        0.00%        100          -    ZERO                 
#         covered/total bins:                                 1          2          -                      
#         missing/total bins:                                 1          2          -                      
#         % Hit:                                         50.00%        100          -                      
#     Cross ab                                           33.33%        100          -    Uncovered            
#         covered/total bins:                                 1          3          -                      
#         missing/total bins:                                 2          3          -                      
#         % Hit:                                         33.33%        100          -                      
#  Covergroup instance \/top/t1/ck_name                  33.33%        100          -    Uncovered            
#     covered/total bins:                                     1          3          -                      
#     missing/total bins:                                     2          3          -                      
#     % Hit:                                             33.33%        100          -                      
#     Coverpoint a [1]                                  100.00%        100          -    Covered              
#         covered/total bins:                                 0          0          -                      
#         missing/total bins:                                 0          0          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin a0                                              0          1          -    ZERO                 
#         bin a1                                              4          1          -    Covered              
#     Coverpoint b [1]                                  100.00%        100          -    Covered              
#         covered/total bins:                                 0          0          -                      
#         missing/total bins:                                 0          0          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin b0                                              4          1          -    Covered              
#         bin b1                                              0          1          -    ZERO                 
#     Cross ab                                           33.33%        100          -    Uncovered            
#         covered/total bins:                                 1          3          -                      
#         missing/total bins:                                 2          3          -                      
#         % Hit:                                         33.33%        100          -                      
#         Auto, Default and User Defined Bins:
#             bin a0b0                                        0          1          -    ZERO                 
#             bin a1b0                                        4          1          -    Covered              
#             bin b1                                          0          1          -    ZERO                 
#  TYPE /top/t1/CrossBinsofIntersect                     33.33%        100          -    Uncovered            
#     covered/total bins:                                     1          3          -                      
#     missing/total bins:                                     2          3          -                      
#     % Hit:                                             33.33%        100          -                      
#     Coverpoint a                                        0.00%        100          -    ZERO                 
#         covered/total bins:                                 1          2          -                      
#         missing/total bins:                                 1          2          -                      
#         % Hit:                                         50.00%        100          -                      
#     Coverpoint b                                        0.00%        100          -    ZERO                 
#         covered/total bins:                                 1          2          -                      
#         missing/total bins:                                 1          2          -                      
#         % Hit:                                         50.00%        100          -                      
#     Cross ab                                           33.33%        100          -    Uncovered            
#         covered/total bins:                                 1          3          -                      
#         missing/total bins:                                 2          3          -                      
#         % Hit:                                         33.33%        100          -                      
#  Covergroup instance \/top/t1/ck_intersect             33.33%        100          -    Uncovered            
#     covered/total bins:                                     1          3          -                      
#     missing/total bins:                                     2          3          -                      
#     % Hit:                                             33.33%        100          -                      
#     Coverpoint a [1]                                  100.00%        100          -    Covered              
#         covered/total bins:                                 0          0          -                      
#         missing/total bins:                                 0          0          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin auto[0]                                         0          1          -    ZERO                 
#         bin auto[1]                                         4          1          -    Covered              
#     Coverpoint b [1]                                  100.00%        100          -    Covered              
#         covered/total bins:                                 0          0          -                      
#         missing/total bins:                                 0          0          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin auto[0]                                         4          1          -    Covered              
#         bin auto[1]                                         0          1          -    ZERO                 
#     Cross ab                                           33.33%        100          -    Uncovered            
#         covered/total bins:                                 1          3          -                      
#         missing/total bins:                                 2          3          -                      
#         % Hit:                                         33.33%        100          -                      
#         Auto, Default and User Defined Bins:
#             bin a0b0                                        0          1          -    ZERO                 
#             bin a1b0                                        4          1          -    Covered              
#             bin b1                                          0          1          -    ZERO                 
#  TYPE /top/t1/CrossManual                              33.33%        100          -    Uncovered            
#     covered/total bins:                                     1          3          -                      
#     missing/total bins:                                     2          3          -                      
#     % Hit:                                             33.33%        100          -                      
#     Coverpoint ab                                      33.33%        100          -    Uncovered            
#         covered/total bins:                                 1          3          -                      
#         missing/total bins:                                 2          3          -                      
#         % Hit:                                         33.33%        100          -                      
#  Covergroup instance \/top/t1/ck_manual                33.33%        100          -    Uncovered            
#     covered/total bins:                                     1          3          -                      
#     missing/total bins:                                     2          3          -                      
#     % Hit:                                             33.33%        100          -                      
#     Coverpoint ab                                      33.33%        100          -    Uncovered            
#         covered/total bins:                                 1          3          -                      
#         missing/total bins:                                 2          3          -                      
#         % Hit:                                         33.33%        100          -                      
#         bin a0b0                                            0          1          -    ZERO                 
#         bin a1b0                                            4          1          -    Covered              
#         bin b1                                              0          1          -    ZERO                 
# 
# COVERGROUP COVERAGE:
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/CrossBinNames                            33.33%        100          -    Uncovered            
#     covered/total bins:                                     1          3          -                      
#     missing/total bins:                                     2          3          -                      
#     % Hit:                                             33.33%        100          -                      
#     Coverpoint a                                        0.00%        100          -    ZERO                 
#         covered/total bins:                                 1          2          -                      
#         missing/total bins:                                 1          2          -                      
#         % Hit:                                         50.00%        100          -                      
#     Coverpoint b                                        0.00%        100          -    ZERO                 
#         covered/total bins:                                 1          2          -                      
#         missing/total bins:                                 1          2          -                      
#         % Hit:                                         50.00%        100          -                      
#     Cross ab                                           33.33%        100          -    Uncovered            
#         covered/total bins:                                 1          3          -                      
#         missing/total bins:                                 2          3          -                      
#         % Hit:                                         33.33%        100          -                      
#  Covergroup instance \/top/t1/ck_name                  33.33%        100          -    Uncovered            
#     covered/total bins:                                     1          3          -                      
#     missing/total bins:                                     2          3          -                      
#     % Hit:                                             33.33%        100          -                      
#     Coverpoint a [1]                                  100.00%        100          -    Covered              
#         covered/total bins:                                 0          0          -                      
#         missing/total bins:                                 0          0          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin a0                                              0          1          -    ZERO                 
#         bin a1                                              4          1          -    Covered              
#     Coverpoint b [1]                                  100.00%        100          -    Covered              
#         covered/total bins:                                 0          0          -                      
#         missing/total bins:                                 0          0          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin b0                                              4          1          -    Covered              
#         bin b1                                              0          1          -    ZERO                 
#     Cross ab                                           33.33%        100          -    Uncovered            
#         covered/total bins:                                 1          3          -                      
#         missing/total bins:                                 2          3          -                      
#         % Hit:                                         33.33%        100          -                      
#         Auto, Default and User Defined Bins:
#             bin a0b0                                        0          1          -    ZERO                 
#             bin a1b0                                        4          1          -    Covered              
#             bin b1                                          0          1          -    ZERO                 
#  TYPE /top/t1/CrossBinsofIntersect                     33.33%        100          -    Uncovered            
#     covered/total bins:                                     1          3          -                      
#     missing/total bins:                                     2          3          -                      
#     % Hit:                                             33.33%        100          -                      
#     Coverpoint a                                        0.00%        100          -    ZERO                 
#         covered/total bins:                                 1          2          -                      
#         missing/total bins:                                 1          2          -                      
#         % Hit:                                         50.00%        100          -                      
#     Coverpoint b                                        0.00%        100          -    ZERO                 
#         covered/total bins:                                 1          2          -                      
#         missing/total bins:                                 1          2          -                      
#         % Hit:                                         50.00%        100          -                      
#     Cross ab                                           33.33%        100          -    Uncovered            
#         covered/total bins:                                 1          3          -                      
#         missing/total bins:                                 2          3          -                      
#         % Hit:                                         33.33%        100          -                      
#  Covergroup instance \/top/t1/ck_intersect             33.33%        100          -    Uncovered            
#     covered/total bins:                                     1          3          -                      
#     missing/total bins:                                     2          3          -                      
#     % Hit:                                             33.33%        100          -                      
#     Coverpoint a [1]                                  100.00%        100          -    Covered              
#         covered/total bins:                                 0          0          -                      
#         missing/total bins:                                 0          0          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin auto[0]                                         0          1          -    ZERO                 
#         bin auto[1]                                         4          1          -    Covered              
#     Coverpoint b [1]                                  100.00%        100          -    Covered              
#         covered/total bins:                                 0          0          -                      
#         missing/total bins:                                 0          0          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin auto[0]                                         4          1          -    Covered              
#         bin auto[1]                                         0          1          -    ZERO                 
#     Cross ab                                           33.33%        100          -    Uncovered            
#         covered/total bins:                                 1          3          -                      
#         missing/total bins:                                 2          3          -                      
#         % Hit:                                         33.33%        100          -                      
#         Auto, Default and User Defined Bins:
#             bin a0b0                                        0          1          -    ZERO                 
#             bin a1b0                                        4          1          -    Covered              
#             bin b1                                          0          1          -    ZERO                 
#  TYPE /top/t1/CrossManual                              33.33%        100          -    Uncovered            
#     covered/total bins:                                     1          3          -                      
#     missing/total bins:                                     2          3          -                      
#     % Hit:                                             33.33%        100          -                      
#     Coverpoint ab                                      33.33%        100          -    Uncovered            
#         covered/total bins:                                 1          3          -                      
#         missing/total bins:                                 2          3          -                      
#         % Hit:                                         33.33%        100          -                      
#  Covergroup instance \/top/t1/ck_manual                33.33%        100          -    Uncovered            
#     covered/total bins:                                     1          3          -                      
#     missing/total bins:                                     2          3          -                      
#     % Hit:                                             33.33%        100          -                      
#     Coverpoint ab                                      33.33%        100          -    Uncovered            
#         covered/total bins:                                 1          3          -                      
#         missing/total bins:                                 2          3          -                      
#         % Hit:                                         33.33%        100          -                      
#         bin a0b0                                            0          1          -    ZERO                 
#         bin a1b0                                            4          1          -    Covered              
#         bin b1                                              0          1          -    ZERO                 
# 
#  [1] - Does not contribute coverage as weight is 0
# 
# TOTAL COVERGROUP COVERAGE: 33.33%  COVERGROUP TYPES: 3
# 
# ASSERTION RESULTS:
# --------------------------------------------------------------------
# Name                 File(Line)                   Failure      Pass 
#                                                   Count        Count
# --------------------------------------------------------------------
# /top/t1/#ublk#502948#76/immed__77
#                      design.sv(77)                      0          1
# 
# Total Coverage By Instance (filtered view): 66.66%
# 
# 
# End time: 00:14:39 on Jul 07,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   0
#     vopt: Errors:   0, Warnings:   1
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   1
Done
