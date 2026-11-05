# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005aaf20 (ScriptCore.CASUtils::CASUtils_TextSearchEndSearchImpl)
Paired Ghidra pseudocode: 005AAF20_ScriptCore_CASUtils_CASUtils_TextSearchEndSearchImpl.c
Window: [0x005aaf20, 0x005aaf60) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005aaf60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005aaf20: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005aaf30: 35 75 22 e8 58 e4 1b 00 8b 10 8b c8 8b 82 cc 00
005aaf40: 00 00 56 ff d0 85 c0 74 0c 8b 4c 24 0c 51 8b c8
005aaf50: e8 1b fd ff ff 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005aaf20 <.text+0x1a9f20>:
  5aaf20:	56                                              	push   esi
  5aaf21:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5aaf25:	8b c6                                           	mov    eax,esi
  5aaf27:	25 00 00 00 ff                                  	and    eax,0xff000000
  5aaf2c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5aaf31:	75 22                                           	jne    0x5aaf55
  5aaf33:	e8 58 e4 1b 00                                  	call   0x769390
  5aaf38:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5aaf3a:	8b c8                                           	mov    ecx,eax
  5aaf3c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5aaf42:	56                                              	push   esi
  5aaf43:	ff d0                                           	call   eax
  5aaf45:	85 c0                                           	test   eax,eax
  5aaf47:	74 0c                                           	je     0x5aaf55
  5aaf49:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5aaf4d:	51                                              	push   ecx
  5aaf4e:	8b c8                                           	mov    ecx,eax
  5aaf50:	e8 1b fd ff ff                                  	call   0x5aac70
  5aaf55:	5e                                              	pop    esi
  5aaf56:	c3                                              	ret
  5aaf57:	cc                                              	int3
  5aaf58:	cc                                              	int3
  5aaf59:	cc                                              	int3
  5aaf5a:	cc                                              	int3
  5aaf5b:	cc                                              	int3
  5aaf5c:	cc                                              	int3
  5aaf5d:	cc                                              	int3
  5aaf5e:	cc                                              	int3
  5aaf5f:	cc                                              	int3
