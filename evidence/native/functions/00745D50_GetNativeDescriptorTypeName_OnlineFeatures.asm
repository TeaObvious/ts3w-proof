# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00745d50 (GetNativeDescriptorTypeName_OnlineFeatures)
Paired Ghidra pseudocode: 00745D50_GetNativeDescriptorTypeName_OnlineFeatures.c
Window: [0x00745d50, 0x00745d60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00745d60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00745d50: b8 08 3a 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00745d50 <.text+0x344d50>:
  745d50:	b8 08 3a 00 01                                  	mov    eax,0x1003a08
  745d55:	c3                                              	ret
  745d56:	cc                                              	int3
  745d57:	cc                                              	int3
  745d58:	cc                                              	int3
  745d59:	cc                                              	int3
  745d5a:	cc                                              	int3
  745d5b:	cc                                              	int3
  745d5c:	cc                                              	int3
  745d5d:	cc                                              	int3
  745d5e:	cc                                              	int3
  745d5f:	cc                                              	int3
