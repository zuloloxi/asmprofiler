# asmprofiler from https://code.google.com/p/asmprofiler/
AsmProfiler is a full tracing 32bit profiler (instrumenting and sampling), written in Delphi and some assembly. 
Last change: 25 November 2013

Introduction
AsmProfiler can profile your application to find bottlenecks in your code (for optimizations). It is a Windows profiler (Windows NT, 2000, XP, Vista, Win7 for 32bit x86 processor) and can profile any function (dll, c++, delphi, ?) without changing the original code or even the need for the original code.

AsmProfiler consists of 2 parts:

Sampling mode:
For easy "click-and-go" but coarse grained profiling.

- Coarse grained, only maximum of 1000 samples per second (theoretical) is possible, so many small function calls will be missed.

+ Low overhead (profiler app runs at normal speed)

+ No modification, no side-effects (no change of the binary cpu instructions, samples are taken "remotely" by only reading the memory) 

Instrumenting mode:
For exact time measurement of any function call. 

- High memory usage and some overhead for each function call.

- More difficult to set up (functions must be marked before they are profiled)

- In-memory executable is changed (detouring/hooking) to be able to log every function execution

+ Every call is stored, so exact function tracing possible!

Download AsmProfiler Complete v1.1.5.zip for both profiler modes.
https://drive.google.com/file/d/0B5AcQp14Q5FaZFBNNkV0TG1sZ0k

Please donate :)
https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=andre%2emussche%40gmail%2ecom&lc=US&item_name=AsmProfiler&item_number=AsmProfiler&currency_code=EUR&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted

Details
Quick Start Tip
The easiest way to get started is by downloading the complete pack. After downloading and extracting, run the sampling profiler first. Execute a profiling session for the part of your program you want to investigate (for example, a batch processing, a heavy calculation, etc). Now you have a first impression of the functions that are executed, and how long they taken. You can save the detected functions by right clicking on the tree view (to be used by the instrumenting profiler). Via the "inject asmprofiler dll" button, an instrumenting profiling session can be started to get detailed information of the logged functions.

The "instrumenting mode" was made first (as "proof of concept", can have some rough edges). After some time, the "sampling mode" was made separately. In the future, the "instrumenting mode" will be completely rebuild and integrated in the GUI of the "sampling mode".

For more information a details of the 2 profiling modes, please take a look at the following pages:

AsmProfiler, Sampling mode
Some screenshots
Download latest version:
AsmProfiler Sampling v1.1.5
AsmProfiler, Instrumenting mode
Some screenshots
Download latest version:
AsmProfiler v1.1.5, including ProfilerResultViewer, AsmRemote and API
History
12 October 2012, Lots of improvements on the sampling profiler:
Processing results after a sampling session if much much faster now (some seconds instead of minutes)
Double click on a function in the first tab adds a filter to "raw stacks" tab, so all stacks in which the selected function is found can be viewed easily
CPU duration of each thread is shown in the list (easier to see which threads did some heavy work)
Treeviews can be saved to file (html, rtf, text)
Profiled function list can be exported to the instrumenting profiler for exact time measurement (so sampling can be used for a first step, quick detection of executed functions, no need to manually select all units and functions in the instrumenting profiler)
AsmProfiler dll injection (for instrumenting profiling) should work again (and some better error handling)
Process list is sorted with newest applications on top (most likely to get profiled instead of older long running background processes)
3 November 2011
AsmProfiler v1.1.12.87.zip Small fixes
AsmProfiler_Sampling v1.0.7.20.zip AV fixed
1 April 2011
AsmProfiler v1.1.11.84: D2010 compatible version
01 march 2010
AsmProfiler v1.1.10.72: finally exception proof! Some nice icons, less overhead, code cleanups, etc!
AsmProfiler sampling mode v1.0.6.12: can also inject asmprofiler.dll into a process now
Need some help?
If you need some help with the AsmProfiler, or want to hire me as a profiler specialist (remote or in The Netherlands), 

please don't hesitate to e-mail me! mailto:andre.mussche+asmprofiler@gmail.com
