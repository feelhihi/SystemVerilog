[2024-07-07 08:01:58 UTC] qrun -batch -access=rw+/. '-timescale' '1ns/1ns' -mfcu design.sv testbench.sv '-voptargs=+acc=npr'  -do run.do  
QuestaSim-64 qrun 2023.1 Utility 2023.01 Jan 23 2023
Start time: 04:01:58 on Jul 07,2024
qrun -batch -access=rw+/. -timescale 1ns/1ns -mfcu design.sv testbench.sv -voptargs="+acc=npr" -do "run.do" 
Creating library 'qrun.out/work'.
QuestaSim-64 vlog 2023.1 Compiler 2023.01 Jan 23 2023
Start time: 04:01:58 on Jul 07,2024
vlog -timescale 1ns/1ns -mfcu design.sv testbench.sv -work qrun.out/work -csession=incr -writesessionid "+qrun.out/top_dus" -statslog qrun.out/stats_log 
-- Compiling interface busifc
-- Compiling program test
-- Compiling module top

Top level modules:
	top
End time: 04:01:58 on Jul 07,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 0
QuestaSim-64 vopt 2023.1 Compiler 2023.01 Jan 23 2023
** Warning: (vopt-10587) Some optimizations are turned off because the +acc switch is in effect. This will cause your simulation to run slowly. Please use -access/-debug to maintain needed visibility.
Start time: 04:01:58 on Jul 07,2024
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
End time: 04:01:59 on Jul 07,2024, Elapsed time: 0:00:01
Errors: 0, Warnings: 1
# vsim -batch -voptargs="+acc=npr" -lib qrun.out/work -do "run.do" -statslog qrun.out/stats_log qrun_opt -appendlog -l qrun.log -csession=incr 
# Start time: 04:01:59 on Jul 07,2024
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
# Coverage = 100.00%
# ** Note: $stop    : design.sv(45)
#    Time: 99995 ns  Iteration: 1  Instance: /top/t1
# Break in Module test at design.sv line 45
# Stopped at design.sv line 45
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
# /top/t1/#ublk#502948#39/immed__40
#                      design.sv(40)                      0          1
# 
# Covergroup Coverage:
#     Covergroups                      1        na        na   100.00%
#         Coverpoints/Crosses          1        na        na        na
#             Covergroup Bins         23        23         0   100.00%
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/CovLen                                  100.00%        100          -    Covered              
#     covered/total bins:                                    23         23          -                      
#     missing/total bins:                                     0         23          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint #coverpoint__0#                        100.00%        100          -    Covered              
#         covered/total bins:                                23         23          -                      
#         missing/total bins:                                 0         23          -                      
#         % Hit:                                        100.00%        100          -                      
#  Covergroup instance \/top/t1/ck                      100.00%        100          -    Covered              
#     covered/total bins:                                    23         23          -                      
#     missing/total bins:                                     0         23          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint #coverpoint__0#                        100.00%        100          -    Covered              
#         covered/total bins:                                23         23          -                      
#         missing/total bins:                                 0         23          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin len[0]                                        421          1          -    Covered              
#         bin len[1]                                        401          1          -    Covered              
#         bin len[2]                                        446          1          -    Covered              
#         bin len[3]                                        392          1          -    Covered              
#         bin len[4]                                        421          1          -    Covered              
#         bin len[5]                                        412          1          -    Covered              
#         bin len[6]                                        473          1          -    Covered              
#         bin len[7]                                        455          1          -    Covered              
#         bin len[8]                                        410          1          -    Covered              
#         bin len[9]                                        432          1          -    Covered              
#         bin len[10]                                       413          1          -    Covered              
#         bin len[11]                                       433          1          -    Covered              
#         bin len[12]                                       445          1          -    Covered              
#         bin len[13]                                       473          1          -    Covered              
#         bin len[14]                                       418          1          -    Covered              
#         bin len[15]                                       437          1          -    Covered              
#         bin len[16]                                       450          1          -    Covered              
#         bin len[17]                                       464          1          -    Covered              
#         bin len[18]                                       443          1          -    Covered              
#         bin len[19]                                       423          1          -    Covered              
#         bin len[20]                                       475          1          -    Covered              
#         bin len[21]                                       413          1          -    Covered              
#         bin len[22]                                       450          1          -    Covered              
# 
# COVERGROUP COVERAGE:
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /top/t1/CovLen                                  100.00%        100          -    Covered              
#     covered/total bins:                                    23         23          -                      
#     missing/total bins:                                     0         23          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint #coverpoint__0#                        100.00%        100          -    Covered              
#         covered/total bins:                                23         23          -                      
#         missing/total bins:                                 0         23          -                      
#         % Hit:                                        100.00%        100          -                      
#  Covergroup instance \/top/t1/ck                      100.00%        100          -    Covered              
#     covered/total bins:                                    23         23          -                      
#     missing/total bins:                                     0         23          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint #coverpoint__0#                        100.00%        100          -    Covered              
#         covered/total bins:                                23         23          -                      
#         missing/total bins:                                 0         23          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin len[0]                                        421          1          -    Covered              
#         bin len[1]                                        401          1          -    Covered              
#         bin len[2]                                        446          1          -    Covered              
#         bin len[3]                                        392          1          -    Covered              
#         bin len[4]                                        421          1          -    Covered              
#         bin len[5]                                        412          1          -    Covered              
#         bin len[6]                                        473          1          -    Covered              
#         bin len[7]                                        455          1          -    Covered              
#         bin len[8]                                        410          1          -    Covered              
#         bin len[9]                                        432          1          -    Covered              
#         bin len[10]                                       413          1          -    Covered              
#         bin len[11]                                       433          1          -    Covered              
#         bin len[12]                                       445          1          -    Covered              
#         bin len[13]                                       473          1          -    Covered              
#         bin len[14]                                       418          1          -    Covered              
#         bin len[15]                                       437          1          -    Covered              
#         bin len[16]                                       450          1          -    Covered              
#         bin len[17]                                       464          1          -    Covered              
#         bin len[18]                                       443          1          -    Covered              
#         bin len[19]                                       423          1          -    Covered              
#         bin len[20]                                       475          1          -    Covered              
#         bin len[21]                                       413          1          -    Covered              
#         bin len[22]                                       450          1          -    Covered              
# 
# TOTAL COVERGROUP COVERAGE: 100.00%  COVERGROUP TYPES: 1
# 
# ASSERTION RESULTS:
# --------------------------------------------------------------------
# Name                 File(Line)                   Failure      Pass 
#                                                   Count        Count
# --------------------------------------------------------------------
# /top/t1/#ublk#502948#39/immed__40
#                      design.sv(40)                      0          1
# 
# Total Coverage By Instance (filtered view): 100.00%
# 
# 
# End time: 04:02:00 on Jul 07,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   0
#     vopt: Errors:   0, Warnings:   1
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   1
Done
