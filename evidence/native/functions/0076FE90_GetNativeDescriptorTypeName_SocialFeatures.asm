# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076fe90 (GetNativeDescriptorTypeName_SocialFeatures)
Paired Ghidra pseudocode: 0076FE90_GetNativeDescriptorTypeName_SocialFeatures.c
Window: [0x0076fe90, 0x0076fea0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076fea0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076fe90: b8 54 9c 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076fe90 <.text+0x36ee90>:
  76fe90:	b8 54 9c 00 01                                  	mov    eax,0x1009c54
  76fe95:	c3                                              	ret
  76fe96:	cc                                              	int3
  76fe97:	cc                                              	int3
  76fe98:	cc                                              	int3
  76fe99:	cc                                              	int3
  76fe9a:	cc                                              	int3
  76fe9b:	cc                                              	int3
  76fe9c:	cc                                              	int3
  76fe9d:	cc                                              	int3
  76fe9e:	cc                                              	int3
  76fe9f:	cc                                              	int3
