
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
42default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
�
�Clock port "%s" does not have an associated HD.CLK_SRC. Without this constraint, timing analysis may not be accurate and upstream checks cannot be done to ensure correct clock placement.
88*route2
ap_clk2default:defaultZ35-197h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2
ap_rst2default:default2
ap_rst2default:defaultZ35-198h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2"
inputImg_q0[5]2default:default2"
inputImg_q0[5]2default:defaultZ35-198h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2"
inputImg_q0[4]2default:default2"
inputImg_q0[4]2default:defaultZ35-198h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2"
inputImg_q0[6]2default:default2"
inputImg_q0[6]2default:defaultZ35-198h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2"
inputImg_q0[7]2default:default2"
inputImg_q0[7]2default:defaultZ35-198h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2"
inputImg_q0[0]2default:default2"
inputImg_q0[0]2default:defaultZ35-198h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2"
inputImg_q0[1]2default:default2"
inputImg_q0[1]2default:defaultZ35-198h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2"
inputImg_q0[2]2default:default2"
inputImg_q0[2]2default:defaultZ35-198h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2"
inputImg_q0[3]2default:default2"
inputImg_q0[3]2default:defaultZ35-198h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2
ap_start2default:default2
ap_start2default:defaultZ35-198h px� 
C
.Phase 1 Build RT Design | Checksum: 1084228a2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:25 ; elapsed = 00:00:20 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 828 ; free virtual = 39202default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
B
-Phase 2.1 Create Timer | Checksum: 1084228a2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:25 ; elapsed = 00:00:21 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 829 ; free virtual = 39222default:defaulth px� 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 1084228a2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:25 ; elapsed = 00:00:21 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 813 ; free virtual = 39062default:defaulth px� 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 1084228a2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:26 ; elapsed = 00:00:21 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 813 ; free virtual = 39062default:defaulth px� 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.4 Update Timing | Checksum: 1eb6a5486
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:29 ; elapsed = 00:00:22 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 801 ; free virtual = 38942default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.719  | TNS=0.000  | WHS=-0.016 | THS=-0.016 |
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 1af69ca56
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:30 ; elapsed = 00:00:23 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 797 ; free virtual = 38902default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 159c33255
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:34 ; elapsed = 00:00:24 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 796 ; free virtual = 38902default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.485  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
G
2Phase 4.1 Global Iteration 0 | Checksum: b72acd68
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:24 ; elapsed = 00:00:43 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 758 ; free virtual = 38202default:defaulth px� 
E
0Phase 4 Rip-up And Reroute | Checksum: b72acd68
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:24 ; elapsed = 00:00:43 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 758 ; free virtual = 38202default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
B
-Phase 5.1 Delay CleanUp | Checksum: b72acd68
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:24 ; elapsed = 00:00:43 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 758 ; free virtual = 38202default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
L
7Phase 5.2 Clock Skew Optimization | Checksum: b72acd68
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:24 ; elapsed = 00:00:43 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 758 ; free virtual = 38202default:defaulth px� 
N
9Phase 5 Delay and Skew Optimization | Checksum: b72acd68
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:25 ; elapsed = 00:00:43 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 759 ; free virtual = 38202default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 17bdecbc2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:25 ; elapsed = 00:00:43 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 758 ; free virtual = 38202default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.485  | TNS=0.000  | WHS=0.054  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 17bdecbc2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:25 ; elapsed = 00:00:43 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 758 ; free virtual = 38202default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 17bdecbc2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:25 ; elapsed = 00:00:43 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 758 ; free virtual = 38192default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 104e175c7
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:26 ; elapsed = 00:00:43 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 753 ; free virtual = 38152default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 104e175c7
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:26 ; elapsed = 00:00:43 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 750 ; free virtual = 38122default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 158ec7fc8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:26 ; elapsed = 00:00:44 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 699 ; free virtual = 37692default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2J
6| WNS=0.485  | TNS=0.000  | WHS=0.054  | THS=0.000  |
2default:defaultZ35-57h px� 
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px� 
G
2Phase 10 Post Router Timing | Checksum: 158ec7fc8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:27 ; elapsed = 00:00:44 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 704 ; free virtual = 37672default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:27 ; elapsed = 00:00:44 . Memory (MB): peak = 2421.863 ; gain = 0.000 ; free physical = 727 ; free virtual = 37902default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
872default:default2
122default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:01:292default:default2
00:00:462default:default2
2421.8632default:default2
0.0002default:default2
7272default:default2
37902default:defaultZ17-722h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2
00:00:00.602default:default2
2421.8632default:default2
0.0002default:default2
7032default:default2
37842default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
l/home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.runs/impl_1/lenetSynthMatlab_routed.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_drc -file lenetSynthMatlab_drc_routed.rpt -pb lenetSynthMatlab_drc_routed.pb -rpx lenetSynthMatlab_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
xreport_drc -file lenetSynthMatlab_drc_routed.rpt -pb lenetSynthMatlab_drc_routed.pb -rpx lenetSynthMatlab_drc_routed.rpx2default:defaultZ4-113h px� 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
p/home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.runs/impl_1/lenetSynthMatlab_drc_routed.rptp/home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.runs/impl_1/lenetSynthMatlab_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file lenetSynthMatlab_methodology_drc_routed.rpt -pb lenetSynthMatlab_methodology_drc_routed.pb -rpx lenetSynthMatlab_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file lenetSynthMatlab_methodology_drc_routed.rpt -pb lenetSynthMatlab_methodology_drc_routed.pb -rpx lenetSynthMatlab_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�
�The property HD.CLK_SRC of clock port %s is not set. In out-of-context mode, this prevents timing estimation for clock delay/skew167*timing2$
ap_clkap_clk2default:default8Z38-242h px� 
Y
$Running Methodology with %s threads
74*drc2
42default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
|/home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.runs/impl_1/lenetSynthMatlab_methodology_drc_routed.rpt|/home/tyrian/nnproject/hlsProject8Bit/solution1/impl/verilog/project.runs/impl_1/lenetSynthMatlab_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_power -file lenetSynthMatlab_power_routed.rpt -pb lenetSynthMatlab_power_summary_routed.pb -rpx lenetSynthMatlab_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_power -file lenetSynthMatlab_power_routed.rpt -pb lenetSynthMatlab_power_summary_routed.pb -rpx lenetSynthMatlab_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
992default:default2
132default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
%s4*runtcl2�
mExecuting : report_route_status -file lenetSynthMatlab_route_status.rpt -pb lenetSynthMatlab_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file lenetSynthMatlab_timing_summary_routed.rpt -pb lenetSynthMatlab_timing_summary_routed.pb -rpx lenetSynthMatlab_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
�
UpdateTimingParams:%s.
91*timing2R
> Speed grade: -1, Delay Type: min_max, Timing Stage: Requireds2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
42default:defaultZ38-191h px� 
�
%s4*runtcl2m
YExecuting : report_incremental_reuse -file lenetSynthMatlab_incremental_reuse_routed.rpt
2default:defaulth px� 
x
TNo incremental reuse to report, no incremental placement and routing data was found.278*	vivadotclZ4-545h px� 
�
%s4*runtcl2m
YExecuting : report_clock_utilization -file lenetSynthMatlab_clock_utilization_routed.rpt
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file lenetSynthMatlab_bus_skew_routed.rpt -pb lenetSynthMatlab_bus_skew_routed.pb -rpx lenetSynthMatlab_bus_skew_routed.rpx
2default:defaulth px� 
�
UpdateTimingParams:%s.
91*timing2R
> Speed grade: -1, Delay Type: min_max, Timing Stage: Requireds2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
42default:defaultZ38-191h px� 


End Record