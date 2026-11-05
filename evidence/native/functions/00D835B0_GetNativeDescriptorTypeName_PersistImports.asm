# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d835b0 (GetNativeDescriptorTypeName_PersistImports)
Paired Ghidra pseudocode: 00D835B0_GetNativeDescriptorTypeName_PersistImports.c
Window: [0x00d835b0, 0x00d835c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d835c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d835b0: b8 b0 d2 08 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00d835b0 <.text+0x9825b0>:
  d835b0:	b8 b0 d2 08 01                                  	mov    eax,0x108d2b0
  d835b5:	c3                                              	ret
  d835b6:	cc                                              	int3
  d835b7:	cc                                              	int3
  d835b8:	cc                                              	int3
  d835b9:	cc                                              	int3
  d835ba:	cc                                              	int3
  d835bb:	cc                                              	int3
  d835bc:	cc                                              	int3
  d835bd:	cc                                              	int3
  d835be:	cc                                              	int3
  d835bf:	cc                                              	int3
