# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00cebf10 (GetNativeRegistrationTable_UserToolUtils)
Paired Ghidra pseudocode: 00CEBF10_GetNativeRegistrationTable_UserToolUtils.c
Window: [0x00cebf10, 0x00cebf30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00cebf30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00cebf10: 8b 44 24 04 c7 00 c8 9d 18 01 c2 04 00 cc cc cc
00cebf20: c6 41 18 01 32 c0 c2 08 00 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00cebf10 <.text+0x8eaf10>:
  cebf10:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  cebf14:	c7 00 c8 9d 18 01                               	mov    DWORD PTR [eax],0x1189dc8
  cebf1a:	c2 04 00                                        	ret    0x4
  cebf1d:	cc                                              	int3
  cebf1e:	cc                                              	int3
  cebf1f:	cc                                              	int3
  cebf20:	c6 41 18 01                                     	mov    BYTE PTR [ecx+0x18],0x1
  cebf24:	32 c0                                           	xor    al,al
  cebf26:	c2 08 00                                        	ret    0x8
  cebf29:	cc                                              	int3
  cebf2a:	cc                                              	int3
  cebf2b:	cc                                              	int3
  cebf2c:	cc                                              	int3
  cebf2d:	cc                                              	int3
  cebf2e:	cc                                              	int3
  cebf2f:	cc                                              	int3
