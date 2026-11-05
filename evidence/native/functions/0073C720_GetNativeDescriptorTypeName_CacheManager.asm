# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073c720 (GetNativeDescriptorTypeName_CacheManager)
Paired Ghidra pseudocode: 0073C720_GetNativeDescriptorTypeName_CacheManager.c
Window: [0x0073c720, 0x0073c730) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073c730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073c720: b8 b8 06 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073c720 <.text+0x33b720>:
  73c720:	b8 b8 06 00 01                                  	mov    eax,0x10006b8
  73c725:	c3                                              	ret
  73c726:	cc                                              	int3
  73c727:	cc                                              	int3
  73c728:	cc                                              	int3
  73c729:	cc                                              	int3
  73c72a:	cc                                              	int3
  73c72b:	cc                                              	int3
  73c72c:	cc                                              	int3
  73c72d:	cc                                              	int3
  73c72e:	cc                                              	int3
  73c72f:	cc                                              	int3
