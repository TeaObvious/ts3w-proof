# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6c30 (ScriptCore.CASUtils::CASUtils_BlendUnitGetNumBlendKeysImpl)
Paired Ghidra pseudocode: 005A6C30_ScriptCore_CASUtils_CASUtils_BlendUnitGetNumBlendKeysImpl.c
Window: [0x005a6c30, 0x005a6c70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6c70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6c30: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6c40: 35 74 04 33 c0 5e c3 e8 44 27 1c 00 8b 10 8b c8
005a6c50: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 40 60
005a6c60: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6c30 <.text+0x1a5c30>:
  5a6c30:	56                                              	push   esi
  5a6c31:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6c35:	8b c6                                           	mov    eax,esi
  5a6c37:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6c3c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6c41:	74 04                                           	je     0x5a6c47
  5a6c43:	33 c0                                           	xor    eax,eax
  5a6c45:	5e                                              	pop    esi
  5a6c46:	c3                                              	ret
  5a6c47:	e8 44 27 1c 00                                  	call   0x769390
  5a6c4c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6c4e:	8b c8                                           	mov    ecx,eax
  5a6c50:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6c56:	56                                              	push   esi
  5a6c57:	ff d0                                           	call   eax
  5a6c59:	85 c0                                           	test   eax,eax
  5a6c5b:	74 e6                                           	je     0x5a6c43
  5a6c5d:	8b 40 60                                        	mov    eax,DWORD PTR [eax+0x60]
  5a6c60:	5e                                              	pop    esi
  5a6c61:	c3                                              	ret
  5a6c62:	cc                                              	int3
  5a6c63:	cc                                              	int3
  5a6c64:	cc                                              	int3
  5a6c65:	cc                                              	int3
  5a6c66:	cc                                              	int3
  5a6c67:	cc                                              	int3
  5a6c68:	cc                                              	int3
  5a6c69:	cc                                              	int3
  5a6c6a:	cc                                              	int3
  5a6c6b:	cc                                              	int3
  5a6c6c:	cc                                              	int3
  5a6c6d:	cc                                              	int3
  5a6c6e:	cc                                              	int3
  5a6c6f:	cc                                              	int3
