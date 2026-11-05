# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7290 (ScriptCore.CASUtils::CASUtils_SimOutfitGetRigKeyImpl)
Paired Ghidra pseudocode: 005A7290_ScriptCore_CASUtils_CASUtils_SimOutfitGetRigKeyImpl.c
Window: [0x005a7290, 0x005a7300) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7290: 56 8b 74 24 0c 8b c6 25 00 00 00 ff 3d 00 00 00
005a72a0: 35 74 13 8b 44 24 08 33 c9 89 08 89 48 04 89 48
005a72b0: 08 89 48 0c 5e c3 e8 d5 20 1c 00 8b 10 8b c8 8b
005a72c0: 82 cc 00 00 00 56 ff d0 85 c0 74 d7 8b b0 b4 00
005a72d0: 00 00 8b 88 a8 00 00 00 8b 90 ac 00 00 00 57 8b
005a72e0: b8 b0 00 00 00 8b 44 24 0c 89 38 89 70 04 5f 89
005a72f0: 48 08 89 50 0c 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7290 <.text+0x1a6290>:
  5a7290:	56                                              	push   esi
  5a7291:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  5a7295:	8b c6                                           	mov    eax,esi
  5a7297:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a729c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a72a1:	74 13                                           	je     0x5a72b6
  5a72a3:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5a72a7:	33 c9                                           	xor    ecx,ecx
  5a72a9:	89 08                                           	mov    DWORD PTR [eax],ecx
  5a72ab:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  5a72ae:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  5a72b1:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  5a72b4:	5e                                              	pop    esi
  5a72b5:	c3                                              	ret
  5a72b6:	e8 d5 20 1c 00                                  	call   0x769390
  5a72bb:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a72bd:	8b c8                                           	mov    ecx,eax
  5a72bf:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a72c5:	56                                              	push   esi
  5a72c6:	ff d0                                           	call   eax
  5a72c8:	85 c0                                           	test   eax,eax
  5a72ca:	74 d7                                           	je     0x5a72a3
  5a72cc:	8b b0 b4 00 00 00                               	mov    esi,DWORD PTR [eax+0xb4]
  5a72d2:	8b 88 a8 00 00 00                               	mov    ecx,DWORD PTR [eax+0xa8]
  5a72d8:	8b 90 ac 00 00 00                               	mov    edx,DWORD PTR [eax+0xac]
  5a72de:	57                                              	push   edi
  5a72df:	8b b8 b0 00 00 00                               	mov    edi,DWORD PTR [eax+0xb0]
  5a72e5:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  5a72e9:	89 38                                           	mov    DWORD PTR [eax],edi
  5a72eb:	89 70 04                                        	mov    DWORD PTR [eax+0x4],esi
  5a72ee:	5f                                              	pop    edi
  5a72ef:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  5a72f2:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  5a72f5:	5e                                              	pop    esi
  5a72f6:	c3                                              	ret
  5a72f7:	cc                                              	int3
  5a72f8:	cc                                              	int3
  5a72f9:	cc                                              	int3
  5a72fa:	cc                                              	int3
  5a72fb:	cc                                              	int3
  5a72fc:	cc                                              	int3
  5a72fd:	cc                                              	int3
  5a72fe:	cc                                              	int3
  5a72ff:	cc                                              	int3
