# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5b70 (ScriptCore.CASUtils::CASUtils_SimBuilderSetAgeGenderSpeciesImpl)
Paired Ghidra pseudocode: 005A5B70_ScriptCore_CASUtils_CASUtils_SimBuilderSetAgeGenderSpeciesImpl.c
Window: [0x005a5b70, 0x005a5bb0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5bb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5b70: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5b80: 35 75 22 e8 08 38 1c 00 8b 10 8b c8 8b 82 cc 00
005a5b90: 00 00 56 ff d0 85 c0 74 0c 8b 4c 24 0c 51 8b c8
005a5ba0: e8 9b af 03 00 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5b70 <.text+0x1a4b70>:
  5a5b70:	56                                              	push   esi
  5a5b71:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a5b75:	8b c6                                           	mov    eax,esi
  5a5b77:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a5b7c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5b81:	75 22                                           	jne    0x5a5ba5
  5a5b83:	e8 08 38 1c 00                                  	call   0x769390
  5a5b88:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a5b8a:	8b c8                                           	mov    ecx,eax
  5a5b8c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5b92:	56                                              	push   esi
  5a5b93:	ff d0                                           	call   eax
  5a5b95:	85 c0                                           	test   eax,eax
  5a5b97:	74 0c                                           	je     0x5a5ba5
  5a5b99:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a5b9d:	51                                              	push   ecx
  5a5b9e:	8b c8                                           	mov    ecx,eax
  5a5ba0:	e8 9b af 03 00                                  	call   0x5e0b40
  5a5ba5:	5e                                              	pop    esi
  5a5ba6:	c3                                              	ret
  5a5ba7:	cc                                              	int3
  5a5ba8:	cc                                              	int3
  5a5ba9:	cc                                              	int3
  5a5baa:	cc                                              	int3
  5a5bab:	cc                                              	int3
  5a5bac:	cc                                              	int3
  5a5bad:	cc                                              	int3
  5a5bae:	cc                                              	int3
  5a5baf:	cc                                              	int3
