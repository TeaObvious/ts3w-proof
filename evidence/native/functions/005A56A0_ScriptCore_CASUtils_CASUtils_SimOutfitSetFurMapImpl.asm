# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a56a0 (ScriptCore.CASUtils::CASUtils_SimOutfitSetFurMapImpl)
Paired Ghidra pseudocode: 005A56A0_ScriptCore_CASUtils_CASUtils_SimOutfitSetFurMapImpl.c
Window: [0x005a56a0, 0x005a5700) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5700
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a56a0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a56b0: 35 75 40 e8 d8 3c 1c 00 8b 10 8b c8 8b 82 cc 00
005a56c0: 00 00 56 ff d0 85 c0 74 2a 8b 4c 24 14 8b 54 24
005a56d0: 18 8b 74 24 10 57 8b 7c 24 10 89 88 88 00 00 00
005a56e0: 89 90 8c 00 00 00 89 b8 90 00 00 00 89 b0 94 00
005a56f0: 00 00 5f 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a56a0 <.text+0x1a46a0>:
  5a56a0:	56                                              	push   esi
  5a56a1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a56a5:	8b c6                                           	mov    eax,esi
  5a56a7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a56ac:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a56b1:	75 40                                           	jne    0x5a56f3
  5a56b3:	e8 d8 3c 1c 00                                  	call   0x769390
  5a56b8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a56ba:	8b c8                                           	mov    ecx,eax
  5a56bc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a56c2:	56                                              	push   esi
  5a56c3:	ff d0                                           	call   eax
  5a56c5:	85 c0                                           	test   eax,eax
  5a56c7:	74 2a                                           	je     0x5a56f3
  5a56c9:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a56cd:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  5a56d1:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  5a56d5:	57                                              	push   edi
  5a56d6:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  5a56da:	89 88 88 00 00 00                               	mov    DWORD PTR [eax+0x88],ecx
  5a56e0:	89 90 8c 00 00 00                               	mov    DWORD PTR [eax+0x8c],edx
  5a56e6:	89 b8 90 00 00 00                               	mov    DWORD PTR [eax+0x90],edi
  5a56ec:	89 b0 94 00 00 00                               	mov    DWORD PTR [eax+0x94],esi
  5a56f2:	5f                                              	pop    edi
  5a56f3:	5e                                              	pop    esi
  5a56f4:	c3                                              	ret
  5a56f5:	cc                                              	int3
  5a56f6:	cc                                              	int3
  5a56f7:	cc                                              	int3
  5a56f8:	cc                                              	int3
  5a56f9:	cc                                              	int3
  5a56fa:	cc                                              	int3
  5a56fb:	cc                                              	int3
  5a56fc:	cc                                              	int3
  5a56fd:	cc                                              	int3
  5a56fe:	cc                                              	int3
  5a56ff:	cc                                              	int3
