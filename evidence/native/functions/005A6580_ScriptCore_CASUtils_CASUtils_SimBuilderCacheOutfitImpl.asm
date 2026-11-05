# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6580 (ScriptCore.CASUtils::CASUtils_SimBuilderCacheOutfitImpl)
Paired Ghidra pseudocode: 005A6580_ScriptCore_CASUtils_CASUtils_SimBuilderCacheOutfitImpl.c
Window: [0x005a6580, 0x005a6620) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6580: 33 c0 83 ec 10 56 8b 74 24 18 89 06 89 46 04 89
005a6590: 46 08 57 8b 7c 24 20 89 46 0c 8b c7 25 00 00 00
005a65a0: ff 3d 00 00 00 35 74 04 33 ff eb 14 e8 df 2d 1c
005a65b0: 00 8b 10 8b c8 8b 82 cc 00 00 00 57 ff d0 8b f8
005a65c0: e8 cb 2d 1c 00 8b 4c 24 24 8b 10 8b 52 58 51 8b
005a65d0: c8 ff d2 85 ff 74 37 8b 4c 24 30 8b 54 24 2c 51
005a65e0: 8b 4c 24 2c 52 51 50 8d 54 24 18 52 8b cf e8 bd
005a65f0: cb 03 00 8b 44 24 10 8b 4c 24 14 8b 54 24 08 89
005a6600: 06 8b 44 24 0c 89 4e 04 89 56 08 89 46 0c 5f 8b
005a6610: c6 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6580 <.text+0x1a5580>:
  5a6580:	33 c0                                           	xor    eax,eax
  5a6582:	83 ec 10                                        	sub    esp,0x10
  5a6585:	56                                              	push   esi
  5a6586:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  5a658a:	89 06                                           	mov    DWORD PTR [esi],eax
  5a658c:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  5a658f:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a6592:	57                                              	push   edi
  5a6593:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  5a6597:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  5a659a:	8b c7                                           	mov    eax,edi
  5a659c:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a65a1:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a65a6:	74 04                                           	je     0x5a65ac
  5a65a8:	33 ff                                           	xor    edi,edi
  5a65aa:	eb 14                                           	jmp    0x5a65c0
  5a65ac:	e8 df 2d 1c 00                                  	call   0x769390
  5a65b1:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a65b3:	8b c8                                           	mov    ecx,eax
  5a65b5:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a65bb:	57                                              	push   edi
  5a65bc:	ff d0                                           	call   eax
  5a65be:	8b f8                                           	mov    edi,eax
  5a65c0:	e8 cb 2d 1c 00                                  	call   0x769390
  5a65c5:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5a65c9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a65cb:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  5a65ce:	51                                              	push   ecx
  5a65cf:	8b c8                                           	mov    ecx,eax
  5a65d1:	ff d2                                           	call   edx
  5a65d3:	85 ff                                           	test   edi,edi
  5a65d5:	74 37                                           	je     0x5a660e
  5a65d7:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  5a65db:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  5a65df:	51                                              	push   ecx
  5a65e0:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  5a65e4:	52                                              	push   edx
  5a65e5:	51                                              	push   ecx
  5a65e6:	50                                              	push   eax
  5a65e7:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  5a65eb:	52                                              	push   edx
  5a65ec:	8b cf                                           	mov    ecx,edi
  5a65ee:	e8 bd cb 03 00                                  	call   0x5e31b0
  5a65f3:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  5a65f7:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a65fb:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  5a65ff:	89 06                                           	mov    DWORD PTR [esi],eax
  5a6601:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  5a6605:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  5a6608:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  5a660b:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  5a660e:	5f                                              	pop    edi
  5a660f:	8b c6                                           	mov    eax,esi
  5a6611:	5e                                              	pop    esi
  5a6612:	83 c4 10                                        	add    esp,0x10
  5a6615:	c3                                              	ret
  5a6616:	cc                                              	int3
  5a6617:	cc                                              	int3
  5a6618:	cc                                              	int3
  5a6619:	cc                                              	int3
  5a661a:	cc                                              	int3
  5a661b:	cc                                              	int3
  5a661c:	cc                                              	int3
  5a661d:	cc                                              	int3
  5a661e:	cc                                              	int3
  5a661f:	cc                                              	int3
