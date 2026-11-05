# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00741e80 (GetNativeRegistrationTable_EAText)
Paired Ghidra pseudocode: 00741E80_GetNativeRegistrationTable_EAText.c
Window: [0x00741e80, 0x00741eb0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00741eb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00741e80: 8b 44 24 04 c7 00 b0 10 16 01 c2 04 00 cc cc cc
00741e90: 81 7c 24 04 65 7d 70 f0 74 05 32 c0 c2 08 00 83
00741ea0: c1 fc e8 d9 fb ff ff b0 01 c2 08 00 cc cc cc cc

LINEAR DISASSEMBLY
00741e80 <.text+0x340e80>:
  741e80:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  741e84:	c7 00 b0 10 16 01                               	mov    DWORD PTR [eax],0x11610b0
  741e8a:	c2 04 00                                        	ret    0x4
  741e8d:	cc                                              	int3
  741e8e:	cc                                              	int3
  741e8f:	cc                                              	int3
  741e90:	81 7c 24 04 65 7d 70 f0                         	cmp    DWORD PTR [esp+0x4],0xf0707d65
  741e98:	74 05                                           	je     0x741e9f
  741e9a:	32 c0                                           	xor    al,al
  741e9c:	c2 08 00                                        	ret    0x8
  741e9f:	83 c1 fc                                        	add    ecx,0xfffffffc
  741ea2:	e8 d9 fb ff ff                                  	call   0x741a80
  741ea7:	b0 01                                           	mov    al,0x1
  741ea9:	c2 08 00                                        	ret    0x8
  741eac:	cc                                              	int3
  741ead:	cc                                              	int3
  741eae:	cc                                              	int3
  741eaf:	cc                                              	int3
