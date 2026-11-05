# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec12b0 (ScriptCore.GameUtils::GameUtils_DeleteCSVFileImpl)
Paired Ghidra pseudocode: 00EC12B0_ScriptCore_GameUtils_GameUtils_DeleteCSVFileImpl.c
Window: [0x00ec12b0, 0x00ec1300) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec12b0: 57 8b 7c 24 08 8b c7 25 00 00 00 ff 3d 00 00 00
00ec12c0: 40 75 36 56 e8 c7 80 8a ff 8b 10 8b c8 8b 82 cc
00ec12d0: 00 00 00 57 ff d0 8b f0 85 f6 74 1c e8 af 80 8a
00ec12e0: ff 8b 10 8b c8 8b 82 d8 00 00 00 57 ff d0 8b 16
00ec12f0: 8b 02 6a 01 8b ce ff d0 5e 5f c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00ec12b0 <.text+0xac02b0>:
  ec12b0:	57                                              	push   edi
  ec12b1:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  ec12b5:	8b c7                                           	mov    eax,edi
  ec12b7:	25 00 00 00 ff                                  	and    eax,0xff000000
  ec12bc:	3d 00 00 00 40                                  	cmp    eax,0x40000000
  ec12c1:	75 36                                           	jne    0xec12f9
  ec12c3:	56                                              	push   esi
  ec12c4:	e8 c7 80 8a ff                                  	call   0x769390
  ec12c9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec12cb:	8b c8                                           	mov    ecx,eax
  ec12cd:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  ec12d3:	57                                              	push   edi
  ec12d4:	ff d0                                           	call   eax
  ec12d6:	8b f0                                           	mov    esi,eax
  ec12d8:	85 f6                                           	test   esi,esi
  ec12da:	74 1c                                           	je     0xec12f8
  ec12dc:	e8 af 80 8a ff                                  	call   0x769390
  ec12e1:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec12e3:	8b c8                                           	mov    ecx,eax
  ec12e5:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
  ec12eb:	57                                              	push   edi
  ec12ec:	ff d0                                           	call   eax
  ec12ee:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ec12f0:	8b 02                                           	mov    eax,DWORD PTR [edx]
  ec12f2:	6a 01                                           	push   0x1
  ec12f4:	8b ce                                           	mov    ecx,esi
  ec12f6:	ff d0                                           	call   eax
  ec12f8:	5e                                              	pop    esi
  ec12f9:	5f                                              	pop    edi
  ec12fa:	c3                                              	ret
  ec12fb:	cc                                              	int3
  ec12fc:	cc                                              	int3
  ec12fd:	cc                                              	int3
  ec12fe:	cc                                              	int3
  ec12ff:	cc                                              	int3
