# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6b70 (ScriptCore.CASUtils::CASUtils_FacialBlendSupportsAgeGenderSpeciesImpl)
Paired Ghidra pseudocode: 005A6B70_ScriptCore_CASUtils_CASUtils_FacialBlendSupportsAgeGenderSpeciesImpl.c
Window: [0x005a6b70, 0x005a6bb0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6bb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6b70: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6b80: 35 74 04 32 c0 5e c3 e8 04 28 1c 00 8b 10 8b c8
005a6b90: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 4c 24
005a6ba0: 0c 51 8b c8 e8 d7 e5 01 00 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
005a6b70 <.text+0x1a5b70>:
  5a6b70:	56                                              	push   esi
  5a6b71:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6b75:	8b c6                                           	mov    eax,esi
  5a6b77:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6b7c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6b81:	74 04                                           	je     0x5a6b87
  5a6b83:	32 c0                                           	xor    al,al
  5a6b85:	5e                                              	pop    esi
  5a6b86:	c3                                              	ret
  5a6b87:	e8 04 28 1c 00                                  	call   0x769390
  5a6b8c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6b8e:	8b c8                                           	mov    ecx,eax
  5a6b90:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6b96:	56                                              	push   esi
  5a6b97:	ff d0                                           	call   eax
  5a6b99:	85 c0                                           	test   eax,eax
  5a6b9b:	74 e6                                           	je     0x5a6b83
  5a6b9d:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a6ba1:	51                                              	push   ecx
  5a6ba2:	8b c8                                           	mov    ecx,eax
  5a6ba4:	e8 d7 e5 01 00                                  	call   0x5c5180
  5a6ba9:	5e                                              	pop    esi
  5a6baa:	c3                                              	ret
  5a6bab:	cc                                              	int3
  5a6bac:	cc                                              	int3
  5a6bad:	cc                                              	int3
  5a6bae:	cc                                              	int3
  5a6baf:	cc                                              	int3
