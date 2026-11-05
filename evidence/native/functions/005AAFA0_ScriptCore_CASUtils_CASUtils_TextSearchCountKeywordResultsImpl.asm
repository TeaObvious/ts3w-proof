# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005aafa0 (ScriptCore.CASUtils::CASUtils_TextSearchCountKeywordResultsImpl)
Paired Ghidra pseudocode: 005AAFA0_ScriptCore_CASUtils_CASUtils_TextSearchCountKeywordResultsImpl.c
Window: [0x005aafa0, 0x005aafe0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005aafe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005aafa0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005aafb0: 35 74 04 33 c0 5e c3 e8 d4 e3 1b 00 8b 10 8b c8
005aafc0: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 4c 24
005aafd0: 0c 51 8b c8 e8 57 fd ff ff 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
005aafa0 <.text+0x1a9fa0>:
  5aafa0:	56                                              	push   esi
  5aafa1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5aafa5:	8b c6                                           	mov    eax,esi
  5aafa7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5aafac:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5aafb1:	74 04                                           	je     0x5aafb7
  5aafb3:	33 c0                                           	xor    eax,eax
  5aafb5:	5e                                              	pop    esi
  5aafb6:	c3                                              	ret
  5aafb7:	e8 d4 e3 1b 00                                  	call   0x769390
  5aafbc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5aafbe:	8b c8                                           	mov    ecx,eax
  5aafc0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5aafc6:	56                                              	push   esi
  5aafc7:	ff d0                                           	call   eax
  5aafc9:	85 c0                                           	test   eax,eax
  5aafcb:	74 e6                                           	je     0x5aafb3
  5aafcd:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5aafd1:	51                                              	push   ecx
  5aafd2:	8b c8                                           	mov    ecx,eax
  5aafd4:	e8 57 fd ff ff                                  	call   0x5aad30
  5aafd9:	5e                                              	pop    esi
  5aafda:	c3                                              	ret
  5aafdb:	cc                                              	int3
  5aafdc:	cc                                              	int3
  5aafdd:	cc                                              	int3
  5aafde:	cc                                              	int3
  5aafdf:	cc                                              	int3
