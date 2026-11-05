# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void WaterTool_TickRetainedPoint(void * this, uint ignoredTickWord)
Owned ranges: [[00d40660, 00d4067a]]

00d40660  80795e00  CMP byte ptr [ECX + 0x5e],0x0
00d40664  7412  JZ 0x00d40678
00d40666  8d81d8000000  LEA EAX,[ECX + 0xd8]
00d4066c  89442404  MOV dword ptr [ESP + 0x4],EAX
00d40670  83c1d8  ADD ECX,-0x28
00d40673  e908feffff  JMP 0x00d40480
00d40678  c20400  RET 0x4
