# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a55b0 (ScriptCore.CASUtils::CASUtils_SimOutfitGetFurMapImpl)
Paired Ghidra pseudocode: 005A55B0_ScriptCore_CASUtils_CASUtils_SimOutfitGetFurMapImpl.c
Window: [0x005a55b0, 0x005a5620) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a55b0: 33 c0 56 8b 74 24 08 89 06 89 46 04 89 46 08 57
005a55c0: 8b 7c 24 10 89 46 0c 8b c7 25 00 00 00 ff 3d 00
005a55d0: 00 00 35 75 39 e8 b6 3d 1c 00 8b 10 8b c8 8b 82
005a55e0: cc 00 00 00 57 ff d0 85 c0 74 23 8b 88 94 00 00
005a55f0: 00 8b 90 88 00 00 00 89 4e 04 8b 88 8c 00 00 00
005a5600: 89 56 08 8b 90 90 00 00 00 89 4e 0c 89 16 5f 8b
005a5610: c6 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a55b0 <.text+0x1a45b0>:
  5a55b0:	33 c0                                           	xor    eax,eax
  5a55b2:	56                                              	push   esi
  5a55b3:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a55b7:	89 06                                           	mov    DWORD PTR [esi],eax
  5a55b9:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  5a55bc:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a55bf:	57                                              	push   edi
  5a55c0:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  5a55c4:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  5a55c7:	8b c7                                           	mov    eax,edi
  5a55c9:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a55ce:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a55d3:	75 39                                           	jne    0x5a560e
  5a55d5:	e8 b6 3d 1c 00                                  	call   0x769390
  5a55da:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a55dc:	8b c8                                           	mov    ecx,eax
  5a55de:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a55e4:	57                                              	push   edi
  5a55e5:	ff d0                                           	call   eax
  5a55e7:	85 c0                                           	test   eax,eax
  5a55e9:	74 23                                           	je     0x5a560e
  5a55eb:	8b 88 94 00 00 00                               	mov    ecx,DWORD PTR [eax+0x94]
  5a55f1:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  5a55f7:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  5a55fa:	8b 88 8c 00 00 00                               	mov    ecx,DWORD PTR [eax+0x8c]
  5a5600:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  5a5603:	8b 90 90 00 00 00                               	mov    edx,DWORD PTR [eax+0x90]
  5a5609:	89 4e 0c                                        	mov    DWORD PTR [esi+0xc],ecx
  5a560c:	89 16                                           	mov    DWORD PTR [esi],edx
  5a560e:	5f                                              	pop    edi
  5a560f:	8b c6                                           	mov    eax,esi
  5a5611:	5e                                              	pop    esi
  5a5612:	c3                                              	ret
  5a5613:	cc                                              	int3
  5a5614:	cc                                              	int3
  5a5615:	cc                                              	int3
  5a5616:	cc                                              	int3
  5a5617:	cc                                              	int3
  5a5618:	cc                                              	int3
  5a5619:	cc                                              	int3
  5a561a:	cc                                              	int3
  5a561b:	cc                                              	int3
  5a561c:	cc                                              	int3
  5a561d:	cc                                              	int3
  5a561e:	cc                                              	int3
  5a561f:	cc                                              	int3
