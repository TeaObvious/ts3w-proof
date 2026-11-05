# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a64f0 (ScriptCore.CASUtils::CASUtils_SimBuilderSaveSkinTonePresetImpl)
Paired Ghidra pseudocode: 005A64F0_ScriptCore_CASUtils_CASUtils_SimBuilderSaveSkinTonePresetImpl.c
Window: [0x005a64f0, 0x005a6580) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6580
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a64f0: 83 ec 10 56 57 e8 96 2e 1c 00 8b 74 24 1c 8b f8
005a6500: 33 c0 85 ff 89 06 89 46 04 89 46 08 89 46 0c 74
005a6510: 67 8b 4c 24 24 8b 07 8b 50 58 53 51 8b cf ff d2
005a6520: 8b d8 8b 44 24 24 8b c8 81 e1 00 00 00 ff 81 f9
005a6530: 00 00 00 35 75 39 8b 17 50 8b 82 cc 00 00 00 8b
005a6540: cf ff d0 85 c0 74 28 53 8d 4c 24 10 51 8b c8 e8
005a6550: cc a0 03 00 8b 54 24 14 8b 44 24 18 8b 4c 24 0c
005a6560: 89 16 8b 54 24 10 89 46 04 89 4e 08 89 56 0c 5b
005a6570: 5f 8b c6 5e 83 c4 10 c3 5f 8b c6 5e 83 c4 10 c3

LINEAR DISASSEMBLY
005a64f0 <.text+0x1a54f0>:
  5a64f0:	83 ec 10                                        	sub    esp,0x10
  5a64f3:	56                                              	push   esi
  5a64f4:	57                                              	push   edi
  5a64f5:	e8 96 2e 1c 00                                  	call   0x769390
  5a64fa:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  5a64fe:	8b f8                                           	mov    edi,eax
  5a6500:	33 c0                                           	xor    eax,eax
  5a6502:	85 ff                                           	test   edi,edi
  5a6504:	89 06                                           	mov    DWORD PTR [esi],eax
  5a6506:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  5a6509:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a650c:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  5a650f:	74 67                                           	je     0x5a6578
  5a6511:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5a6515:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5a6517:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5a651a:	53                                              	push   ebx
  5a651b:	51                                              	push   ecx
  5a651c:	8b cf                                           	mov    ecx,edi
  5a651e:	ff d2                                           	call   edx
  5a6520:	8b d8                                           	mov    ebx,eax
  5a6522:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  5a6526:	8b c8                                           	mov    ecx,eax
  5a6528:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  5a652e:	81 f9 00 00 00 35                               	cmp    ecx,0x35000000
  5a6534:	75 39                                           	jne    0x5a656f
  5a6536:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5a6538:	50                                              	push   eax
  5a6539:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a653f:	8b cf                                           	mov    ecx,edi
  5a6541:	ff d0                                           	call   eax
  5a6543:	85 c0                                           	test   eax,eax
  5a6545:	74 28                                           	je     0x5a656f
  5a6547:	53                                              	push   ebx
  5a6548:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a654c:	51                                              	push   ecx
  5a654d:	8b c8                                           	mov    ecx,eax
  5a654f:	e8 cc a0 03 00                                  	call   0x5e0620
  5a6554:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  5a6558:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  5a655c:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a6560:	89 16                                           	mov    DWORD PTR [esi],edx
  5a6562:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  5a6566:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  5a6569:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
  5a656c:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  5a656f:	5b                                              	pop    ebx
  5a6570:	5f                                              	pop    edi
  5a6571:	8b c6                                           	mov    eax,esi
  5a6573:	5e                                              	pop    esi
  5a6574:	83 c4 10                                        	add    esp,0x10
  5a6577:	c3                                              	ret
  5a6578:	5f                                              	pop    edi
  5a6579:	8b c6                                           	mov    eax,esi
  5a657b:	5e                                              	pop    esi
  5a657c:	83 c4 10                                        	add    esp,0x10
  5a657f:	c3                                              	ret
