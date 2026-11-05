# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a63d0 (ScriptCore.CASUtils::CASUtils_SimBuilderShareOutfitImpl)
Paired Ghidra pseudocode: 005A63D0_ScriptCore_CASUtils_CASUtils_SimBuilderShareOutfitImpl.c
Window: [0x005a63d0, 0x005a6450) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6450
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a63d0: 53 56 57 e8 b8 2f 1c 00 8b f0 85 f6 74 5e 8b 4c
005a63e0: 24 14 8b 06 8b 50 58 51 8b ce ff d2 8b 4c 24 18
005a63f0: 8b f8 8b 06 8b 50 58 51 8b ce ff d2 8b d8 8b 44
005a6400: 24 10 8b c8 81 e1 00 00 00 ff 81 f9 00 00 00 35
005a6410: 75 2a 8b 16 50 8b 82 cc 00 00 00 8b ce ff d0 85
005a6420: c0 74 19 8b 4c 24 20 8b 54 24 1c 6a 00 51 52 53
005a6430: 57 8b c8 e8 d8 c9 03 00 5f 5e 5b c3 5f 5e 32 c0
005a6440: 5b c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a63d0 <.text+0x1a53d0>:
  5a63d0:	53                                              	push   ebx
  5a63d1:	56                                              	push   esi
  5a63d2:	57                                              	push   edi
  5a63d3:	e8 b8 2f 1c 00                                  	call   0x769390
  5a63d8:	8b f0                                           	mov    esi,eax
  5a63da:	85 f6                                           	test   esi,esi
  5a63dc:	74 5e                                           	je     0x5a643c
  5a63de:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a63e2:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a63e4:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5a63e7:	51                                              	push   ecx
  5a63e8:	8b ce                                           	mov    ecx,esi
  5a63ea:	ff d2                                           	call   edx
  5a63ec:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5a63f0:	8b f8                                           	mov    edi,eax
  5a63f2:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a63f4:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5a63f7:	51                                              	push   ecx
  5a63f8:	8b ce                                           	mov    ecx,esi
  5a63fa:	ff d2                                           	call   edx
  5a63fc:	8b d8                                           	mov    ebx,eax
  5a63fe:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  5a6402:	8b c8                                           	mov    ecx,eax
  5a6404:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  5a640a:	81 f9 00 00 00 35                               	cmp    ecx,0x35000000
  5a6410:	75 2a                                           	jne    0x5a643c
  5a6412:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a6414:	50                                              	push   eax
  5a6415:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a641b:	8b ce                                           	mov    ecx,esi
  5a641d:	ff d0                                           	call   eax
  5a641f:	85 c0                                           	test   eax,eax
  5a6421:	74 19                                           	je     0x5a643c
  5a6423:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a6427:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  5a642b:	6a 00                                           	push   0x0
  5a642d:	51                                              	push   ecx
  5a642e:	52                                              	push   edx
  5a642f:	53                                              	push   ebx
  5a6430:	57                                              	push   edi
  5a6431:	8b c8                                           	mov    ecx,eax
  5a6433:	e8 d8 c9 03 00                                  	call   0x5e2e10
  5a6438:	5f                                              	pop    edi
  5a6439:	5e                                              	pop    esi
  5a643a:	5b                                              	pop    ebx
  5a643b:	c3                                              	ret
  5a643c:	5f                                              	pop    edi
  5a643d:	5e                                              	pop    esi
  5a643e:	32 c0                                           	xor    al,al
  5a6440:	5b                                              	pop    ebx
  5a6441:	c3                                              	ret
  5a6442:	cc                                              	int3
  5a6443:	cc                                              	int3
  5a6444:	cc                                              	int3
  5a6445:	cc                                              	int3
  5a6446:	cc                                              	int3
  5a6447:	cc                                              	int3
  5a6448:	cc                                              	int3
  5a6449:	cc                                              	int3
  5a644a:	cc                                              	int3
  5a644b:	cc                                              	int3
  5a644c:	cc                                              	int3
  5a644d:	cc                                              	int3
  5a644e:	cc                                              	int3
  5a644f:	cc                                              	int3
