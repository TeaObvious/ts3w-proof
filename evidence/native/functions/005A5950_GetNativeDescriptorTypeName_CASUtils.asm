# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5950 (GetNativeDescriptorTypeName_CASUtils)
Paired Ghidra pseudocode: 005A5950_GetNativeDescriptorTypeName_CASUtils.c
Window: [0x005a5950, 0x005a5960) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5960
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5950: b8 d4 f6 fd 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5950 <.text+0x1a4950>:
  5a5950:	b8 d4 f6 fd 00                                  	mov    eax,0xfdf6d4
  5a5955:	c3                                              	ret
  5a5956:	cc                                              	int3
  5a5957:	cc                                              	int3
  5a5958:	cc                                              	int3
  5a5959:	cc                                              	int3
  5a595a:	cc                                              	int3
  5a595b:	cc                                              	int3
  5a595c:	cc                                              	int3
  5a595d:	cc                                              	int3
  5a595e:	cc                                              	int3
  5a595f:	cc                                              	int3
