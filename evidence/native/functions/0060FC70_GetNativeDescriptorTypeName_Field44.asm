# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0060fc70 (GetNativeDescriptorTypeName_Field44)
Paired Ghidra pseudocode: 0060FC70_GetNativeDescriptorTypeName_Field44.c
Window: [0x0060fc70, 0x0060fc80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0060fc80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0060fc70: 8b 41 44 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0060fc70 <.text+0x20ec70>:
  60fc70:	8b 41 44                                        	mov    eax,DWORD PTR [ecx+0x44]
  60fc73:	c3                                              	ret
  60fc74:	cc                                              	int3
  60fc75:	cc                                              	int3
  60fc76:	cc                                              	int3
  60fc77:	cc                                              	int3
  60fc78:	cc                                              	int3
  60fc79:	cc                                              	int3
  60fc7a:	cc                                              	int3
  60fc7b:	cc                                              	int3
  60fc7c:	cc                                              	int3
  60fc7d:	cc                                              	int3
  60fc7e:	cc                                              	int3
  60fc7f:	cc                                              	int3
