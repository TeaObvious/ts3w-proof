# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073c230 (GetNativeDescriptorTypeName_AutomationUtils)
Paired Ghidra pseudocode: 0073C230_GetNativeDescriptorTypeName_AutomationUtils.c
Window: [0x0073c230, 0x0073c240) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073c240
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073c230: b8 94 05 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073c230 <.text+0x33b230>:
  73c230:	b8 94 05 00 01                                  	mov    eax,0x1000594
  73c235:	c3                                              	ret
  73c236:	cc                                              	int3
  73c237:	cc                                              	int3
  73c238:	cc                                              	int3
  73c239:	cc                                              	int3
  73c23a:	cc                                              	int3
  73c23b:	cc                                              	int3
  73c23c:	cc                                              	int3
  73c23d:	cc                                              	int3
  73c23e:	cc                                              	int3
  73c23f:	cc                                              	int3
