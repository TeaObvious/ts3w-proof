# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0080d470 (ScriptCore.EATrace::EATrace_LogImpl)
Paired Ghidra pseudocode: 0080D470_ScriptCore_EATrace_EATrace_LogImpl.c
Window: [0x0080d470, 0x0080d490) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0080d490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0080d470: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
0080d480: 8b 44 24 04 f7 d8 1b c0 f7 d0 23 c1 c2 04 00 cc

LINEAR DISASSEMBLY
0080d470 <.text+0x40c470>:
  80d470:	33 c0                                           	xor    eax,eax
  80d472:	c3                                              	ret
  80d473:	cc                                              	int3
  80d474:	cc                                              	int3
  80d475:	cc                                              	int3
  80d476:	cc                                              	int3
  80d477:	cc                                              	int3
  80d478:	cc                                              	int3
  80d479:	cc                                              	int3
  80d47a:	cc                                              	int3
  80d47b:	cc                                              	int3
  80d47c:	cc                                              	int3
  80d47d:	cc                                              	int3
  80d47e:	cc                                              	int3
  80d47f:	cc                                              	int3
  80d480:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  80d484:	f7 d8                                           	neg    eax
  80d486:	1b c0                                           	sbb    eax,eax
  80d488:	f7 d0                                           	not    eax
  80d48a:	23 c1                                           	and    eax,ecx
  80d48c:	c2 04 00                                        	ret    0x4
  80d48f:	cc                                              	int3
