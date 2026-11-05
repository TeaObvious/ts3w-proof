# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6b30 (ScriptCore.CASUtils::CASUtils_FacialBlendGetRegionFlagsImpl)
Paired Ghidra pseudocode: 005A6B30_ScriptCore_CASUtils_CASUtils_FacialBlendGetRegionFlagsImpl.c
Window: [0x005a6b30, 0x005a6b70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6b70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6b30: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6b40: 35 74 04 33 c0 5e c3 e8 44 28 1c 00 8b 10 8b c8
005a6b50: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b c8 5e
005a6b60: e9 5b e8 01 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6b30 <.text+0x1a5b30>:
  5a6b30:	56                                              	push   esi
  5a6b31:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6b35:	8b c6                                           	mov    eax,esi
  5a6b37:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6b3c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6b41:	74 04                                           	je     0x5a6b47
  5a6b43:	33 c0                                           	xor    eax,eax
  5a6b45:	5e                                              	pop    esi
  5a6b46:	c3                                              	ret
  5a6b47:	e8 44 28 1c 00                                  	call   0x769390
  5a6b4c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6b4e:	8b c8                                           	mov    ecx,eax
  5a6b50:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6b56:	56                                              	push   esi
  5a6b57:	ff d0                                           	call   eax
  5a6b59:	85 c0                                           	test   eax,eax
  5a6b5b:	74 e6                                           	je     0x5a6b43
  5a6b5d:	8b c8                                           	mov    ecx,eax
  5a6b5f:	5e                                              	pop    esi
  5a6b60:	e9 5b e8 01 00                                  	jmp    0x5c53c0
  5a6b65:	cc                                              	int3
  5a6b66:	cc                                              	int3
  5a6b67:	cc                                              	int3
  5a6b68:	cc                                              	int3
  5a6b69:	cc                                              	int3
  5a6b6a:	cc                                              	int3
  5a6b6b:	cc                                              	int3
  5a6b6c:	cc                                              	int3
  5a6b6d:	cc                                              	int3
  5a6b6e:	cc                                              	int3
  5a6b6f:	cc                                              	int3
