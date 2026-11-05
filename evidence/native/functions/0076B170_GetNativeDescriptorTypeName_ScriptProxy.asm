# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076b170 (GetNativeDescriptorTypeName_ScriptProxy)
Paired Ghidra pseudocode: 0076B170_GetNativeDescriptorTypeName_ScriptProxy.c
Window: [0x0076b170, 0x0076b180) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076b180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076b170: b8 c0 8b 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076b170 <.text+0x36a170>:
  76b170:	b8 c0 8b 00 01                                  	mov    eax,0x1008bc0
  76b175:	c3                                              	ret
  76b176:	cc                                              	int3
  76b177:	cc                                              	int3
  76b178:	cc                                              	int3
  76b179:	cc                                              	int3
  76b17a:	cc                                              	int3
  76b17b:	cc                                              	int3
  76b17c:	cc                                              	int3
  76b17d:	cc                                              	int3
  76b17e:	cc                                              	int3
  76b17f:	cc                                              	int3
