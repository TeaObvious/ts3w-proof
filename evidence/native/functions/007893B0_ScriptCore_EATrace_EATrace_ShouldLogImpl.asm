# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007893b0 (ScriptCore.EATrace::EATrace_ShouldLogImpl)
Paired Ghidra pseudocode: 007893B0_ScriptCore_EATrace_EATrace_ShouldLogImpl.c
Window: [0x007893b0, 0x007893c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x007893c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007893b0: 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007893b0 <.text+0x3883b0>:
  7893b0:	32 c0                                           	xor    al,al
  7893b2:	c3                                              	ret
  7893b3:	cc                                              	int3
  7893b4:	cc                                              	int3
  7893b5:	cc                                              	int3
  7893b6:	cc                                              	int3
  7893b7:	cc                                              	int3
  7893b8:	cc                                              	int3
  7893b9:	cc                                              	int3
  7893ba:	cc                                              	int3
  7893bb:	cc                                              	int3
  7893bc:	cc                                              	int3
  7893bd:	cc                                              	int3
  7893be:	cc                                              	int3
  7893bf:	cc                                              	int3
