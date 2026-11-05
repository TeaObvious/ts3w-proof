# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00c95c20 (GetNativeDescriptorTypeName_CTProductModularObject)
Paired Ghidra pseudocode: 00C95C20_GetNativeDescriptorTypeName_CTProductModularObject.c
Window: [0x00c95c20, 0x00c95c30) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00c95c30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00c95c20: b8 ac cd 07 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00c95c20 <.text+0x894c20>:
  c95c20:	b8 ac cd 07 01                                  	mov    eax,0x107cdac
  c95c25:	c3                                              	ret
  c95c26:	cc                                              	int3
  c95c27:	cc                                              	int3
  c95c28:	cc                                              	int3
  c95c29:	cc                                              	int3
  c95c2a:	cc                                              	int3
  c95c2b:	cc                                              	int3
  c95c2c:	cc                                              	int3
  c95c2d:	cc                                              	int3
  c95c2e:	cc                                              	int3
  c95c2f:	cc                                              	int3
