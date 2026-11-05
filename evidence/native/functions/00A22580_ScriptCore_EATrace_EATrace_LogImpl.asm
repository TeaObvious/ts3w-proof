# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a22580 (ScriptCore.EATrace::EATrace_LogImpl)
Paired Ghidra pseudocode: 00A22580_ScriptCore_EATrace_EATrace_LogImpl.c
Window: [0x00a22580, 0x00a22590) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a22590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a22580: e9 eb ae de ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a22580 <.text+0x621580>:
  a22580:	e9 eb ae de ff                                  	jmp    0x80d470
  a22585:	cc                                              	int3
  a22586:	cc                                              	int3
  a22587:	cc                                              	int3
  a22588:	cc                                              	int3
  a22589:	cc                                              	int3
  a2258a:	cc                                              	int3
  a2258b:	cc                                              	int3
  a2258c:	cc                                              	int3
  a2258d:	cc                                              	int3
  a2258e:	cc                                              	int3
  a2258f:	cc                                              	int3
