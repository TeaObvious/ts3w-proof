# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec11f0 (GetNativeDescriptorTypeName_GameUtils)
Paired Ghidra pseudocode: 00EC11F0_GetNativeDescriptorTypeName_GameUtils.c
Window: [0x00ec11f0, 0x00ec1200) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1200
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec11f0: b8 94 31 0f 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec11f0 <.text+0xac01f0>:
  ec11f0:	b8 94 31 0f 01                                  	mov    eax,0x10f3194
  ec11f5:	c3                                              	ret
  ec11f6:	cc                                              	int3
  ec11f7:	cc                                              	int3
  ec11f8:	cc                                              	int3
  ec11f9:	cc                                              	int3
  ec11fa:	cc                                              	int3
  ec11fb:	cc                                              	int3
  ec11fc:	cc                                              	int3
  ec11fd:	cc                                              	int3
  ec11fe:	cc                                              	int3
  ec11ff:	cc                                              	int3
