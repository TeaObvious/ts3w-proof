# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105794f0 (World_ObjectDesigner_ShareDesignPresetImpl)
Paired Ghidra pseudocode: 105794F0_World_ObjectDesigner_ShareDesignPresetImpl.c
Window: [0x105794f0, 0x10579550) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579550
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105794f0: 56 57 e8 69 ef b7 ff 8b f8 e8 22 1c fe ff 8b 4c
10579500: 24 18 8b f0 8b 44 24 1c 8b 16 8b 52 58 50 8b 44
10579510: 24 18 51 50 8b ce ff d2 8b 4c 24 18 50 8b 06 8b
10579520: 50 58 51 8b ce ff d2 8b 4c 24 18 50 8b 06 8b 50
10579530: 58 51 8b ce ff d2 50 8b cf e8 82 92 b8 ff 5f 5e
10579540: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105794f0 <.text+0x5784f0>:
105794f0:	56                                              	push   esi
105794f1:	57                                              	push   edi
105794f2:	e8 69 ef b7 ff                                  	call   0x100f8460
105794f7:	8b f8                                           	mov    edi,eax
105794f9:	e8 22 1c fe ff                                  	call   0x1055b120
105794fe:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10579502:	8b f0                                           	mov    esi,eax
10579504:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10579508:	8b 16                                           	mov    edx,DWORD PTR [esi]
1057950a:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1057950d:	50                                              	push   eax
1057950e:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10579512:	51                                              	push   ecx
10579513:	50                                              	push   eax
10579514:	8b ce                                           	mov    ecx,esi
10579516:	ff d2                                           	call   edx
10579518:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057951c:	50                                              	push   eax
1057951d:	8b 06                                           	mov    eax,DWORD PTR [esi]
1057951f:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
10579522:	51                                              	push   ecx
10579523:	8b ce                                           	mov    ecx,esi
10579525:	ff d2                                           	call   edx
10579527:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057952b:	50                                              	push   eax
1057952c:	8b 06                                           	mov    eax,DWORD PTR [esi]
1057952e:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
10579531:	51                                              	push   ecx
10579532:	8b ce                                           	mov    ecx,esi
10579534:	ff d2                                           	call   edx
10579536:	50                                              	push   eax
10579537:	8b cf                                           	mov    ecx,edi
10579539:	e8 82 92 b8 ff                                  	call   0x101027c0
1057953e:	5f                                              	pop    edi
1057953f:	5e                                              	pop    esi
10579540:	c3                                              	ret
10579541:	cc                                              	int3
10579542:	cc                                              	int3
10579543:	cc                                              	int3
10579544:	cc                                              	int3
10579545:	cc                                              	int3
10579546:	cc                                              	int3
10579547:	cc                                              	int3
10579548:	cc                                              	int3
10579549:	cc                                              	int3
1057954a:	cc                                              	int3
1057954b:	cc                                              	int3
1057954c:	cc                                              	int3
1057954d:	cc                                              	int3
1057954e:	cc                                              	int3
1057954f:	cc                                              	int3
