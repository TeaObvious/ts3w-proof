# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005892b0 (DirectTargetOf_GameUtils_GameUtils_IsValidInstallation)
Paired Ghidra pseudocode: 005892B0_DirectTargetOf_GameUtils_GameUtils_IsValidInstallation.c
Window: [0x005892b0, 0x00589300) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00589300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005892b0: 51 6a 01 68 88 ce fc 00 e8 03 1e 00 00 83 c4 08
005892c0: 84 c0 75 04 b0 01 59 c3 53 8d 44 24 04 50 68 19
005892d0: 00 02 00 6a 00 68 58 ce fc 00 68 02 00 00 80 32
005892e0: db ff 15 90 60 f9 00 85 c0 75 0d 8b 4c 24 04 51
005892f0: b3 01 ff 15 88 60 f9 00 8a c3 5b 59 c3 cc cc cc

LINEAR DISASSEMBLY
005892b0 <.text+0x1882b0>:
  5892b0:	51                                              	push   ecx
  5892b1:	6a 01                                           	push   0x1
  5892b3:	68 88 ce fc 00                                  	push   0xfcce88
  5892b8:	e8 03 1e 00 00                                  	call   0x58b0c0
  5892bd:	83 c4 08                                        	add    esp,0x8
  5892c0:	84 c0                                           	test   al,al
  5892c2:	75 04                                           	jne    0x5892c8
  5892c4:	b0 01                                           	mov    al,0x1
  5892c6:	59                                              	pop    ecx
  5892c7:	c3                                              	ret
  5892c8:	53                                              	push   ebx
  5892c9:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  5892cd:	50                                              	push   eax
  5892ce:	68 19 00 02 00                                  	push   0x20019
  5892d3:	6a 00                                           	push   0x0
  5892d5:	68 58 ce fc 00                                  	push   0xfcce58
  5892da:	68 02 00 00 80                                  	push   0x80000002
  5892df:	32 db                                           	xor    bl,bl
  5892e1:	ff 15 90 60 f9 00                               	call   DWORD PTR ds:0xf96090
  5892e7:	85 c0                                           	test   eax,eax
  5892e9:	75 0d                                           	jne    0x5892f8
  5892eb:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  5892ef:	51                                              	push   ecx
  5892f0:	b3 01                                           	mov    bl,0x1
  5892f2:	ff 15 88 60 f9 00                               	call   DWORD PTR ds:0xf96088
  5892f8:	8a c3                                           	mov    al,bl
  5892fa:	5b                                              	pop    ebx
  5892fb:	59                                              	pop    ecx
  5892fc:	c3                                              	ret
  5892fd:	cc                                              	int3
  5892fe:	cc                                              	int3
  5892ff:	cc                                              	int3
