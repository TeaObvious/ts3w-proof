# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0086de20 (GetNativeDescriptorTypeName_Objects)
Paired Ghidra pseudocode: 0086DE20_GetNativeDescriptorTypeName_Objects.c
Window: [0x0086de20, 0x0086de50) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x0086de50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0086de20: b8 2c 36 00 01 c3 cc cc cc cc cc cc cc cc cc cc
0086de30: 83 e9 04 e9 88 00 00 00 cc cc cc cc cc cc cc cc
0086de40: 83 e9 08 e9 78 00 00 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0086de20 <.text+0x46ce20>:
  86de20:	b8 2c 36 00 01                                  	mov    eax,0x100362c
  86de25:	c3                                              	ret
  86de26:	cc                                              	int3
  86de27:	cc                                              	int3
  86de28:	cc                                              	int3
  86de29:	cc                                              	int3
  86de2a:	cc                                              	int3
  86de2b:	cc                                              	int3
  86de2c:	cc                                              	int3
  86de2d:	cc                                              	int3
  86de2e:	cc                                              	int3
  86de2f:	cc                                              	int3
  86de30:	83 e9 04                                        	sub    ecx,0x4
  86de33:	e9 88 00 00 00                                  	jmp    0x86dec0
  86de38:	cc                                              	int3
  86de39:	cc                                              	int3
  86de3a:	cc                                              	int3
  86de3b:	cc                                              	int3
  86de3c:	cc                                              	int3
  86de3d:	cc                                              	int3
  86de3e:	cc                                              	int3
  86de3f:	cc                                              	int3
  86de40:	83 e9 08                                        	sub    ecx,0x8
  86de43:	e9 78 00 00 00                                  	jmp    0x86dec0
  86de48:	cc                                              	int3
  86de49:	cc                                              	int3
  86de4a:	cc                                              	int3
  86de4b:	cc                                              	int3
  86de4c:	cc                                              	int3
  86de4d:	cc                                              	int3
  86de4e:	cc                                              	int3
  86de4f:	cc                                              	int3
