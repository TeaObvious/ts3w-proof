# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073eb90 (GetNativeDescriptorTypeName_CommandSystem)
Paired Ghidra pseudocode: 0073EB90_GetNativeDescriptorTypeName_CommandSystem.c
Window: [0x0073eb90, 0x0073eba0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073eba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073eb90: b8 e4 13 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073eb90 <.text+0x33db90>:
  73eb90:	b8 e4 13 00 01                                  	mov    eax,0x10013e4
  73eb95:	c3                                              	ret
  73eb96:	cc                                              	int3
  73eb97:	cc                                              	int3
  73eb98:	cc                                              	int3
  73eb99:	cc                                              	int3
  73eb9a:	cc                                              	int3
  73eb9b:	cc                                              	int3
  73eb9c:	cc                                              	int3
  73eb9d:	cc                                              	int3
  73eb9e:	cc                                              	int3
  73eb9f:	cc                                              	int3
