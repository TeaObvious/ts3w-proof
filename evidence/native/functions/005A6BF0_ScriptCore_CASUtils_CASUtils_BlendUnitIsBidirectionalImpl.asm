# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6bf0 (ScriptCore.CASUtils::CASUtils_BlendUnitIsBidirectionalImpl)
Paired Ghidra pseudocode: 005A6BF0_ScriptCore_CASUtils_CASUtils_BlendUnitIsBidirectionalImpl.c
Window: [0x005a6bf0, 0x005a6c30) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6c30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6bf0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6c00: 35 74 04 32 c0 5e c3 e8 84 27 1c 00 8b 10 8b c8
005a6c10: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8a 40 50
005a6c20: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6bf0 <.text+0x1a5bf0>:
  5a6bf0:	56                                              	push   esi
  5a6bf1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6bf5:	8b c6                                           	mov    eax,esi
  5a6bf7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6bfc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6c01:	74 04                                           	je     0x5a6c07
  5a6c03:	32 c0                                           	xor    al,al
  5a6c05:	5e                                              	pop    esi
  5a6c06:	c3                                              	ret
  5a6c07:	e8 84 27 1c 00                                  	call   0x769390
  5a6c0c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6c0e:	8b c8                                           	mov    ecx,eax
  5a6c10:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6c16:	56                                              	push   esi
  5a6c17:	ff d0                                           	call   eax
  5a6c19:	85 c0                                           	test   eax,eax
  5a6c1b:	74 e6                                           	je     0x5a6c03
  5a6c1d:	8a 40 50                                        	mov    al,BYTE PTR [eax+0x50]
  5a6c20:	5e                                              	pop    esi
  5a6c21:	c3                                              	ret
  5a6c22:	cc                                              	int3
  5a6c23:	cc                                              	int3
  5a6c24:	cc                                              	int3
  5a6c25:	cc                                              	int3
  5a6c26:	cc                                              	int3
  5a6c27:	cc                                              	int3
  5a6c28:	cc                                              	int3
  5a6c29:	cc                                              	int3
  5a6c2a:	cc                                              	int3
  5a6c2b:	cc                                              	int3
  5a6c2c:	cc                                              	int3
  5a6c2d:	cc                                              	int3
  5a6c2e:	cc                                              	int3
  5a6c2f:	cc                                              	int3
