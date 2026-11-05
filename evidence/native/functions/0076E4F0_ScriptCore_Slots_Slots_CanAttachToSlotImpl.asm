# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076e4f0 (ScriptCore.Slots::Slots_CanAttachToSlotImpl)
Paired Ghidra pseudocode: 0076E4F0_ScriptCore_Slots_Slots_CanAttachToSlotImpl.c
Window: [0x0076e4f0, 0x0076e560) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076e560
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076e4f0: 56 57 e8 79 90 1c 00 8b 4c 24 0c 8b f8 8b 44 24
0076e500: 10 50 51 8b cf e8 76 9a 1c 00 8b f0 85 f6 74 12
0076e510: 8b 15 58 a1 1e 01 52 8b ce e8 42 5d 1c 00 85 c0
0076e520: 75 08 5f b8 e9 03 00 00 5e c3 8b 44 24 18 8b 4c
0076e530: 24 14 50 51 8b cf e8 45 9a 1c 00 85 c0 75 08 5f
0076e540: b8 ea 03 00 00 5e c3 8b 54 24 1c 6a 00 6a 00 52
0076e550: 50 56 e8 c9 50 3d 00 83 c4 14 5f 5e c3 cc cc cc

LINEAR DISASSEMBLY
0076e4f0 <.text+0x36d4f0>:
  76e4f0:	56                                              	push   esi
  76e4f1:	57                                              	push   edi
  76e4f2:	e8 79 90 1c 00                                  	call   0x937570
  76e4f7:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76e4fb:	8b f8                                           	mov    edi,eax
  76e4fd:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  76e501:	50                                              	push   eax
  76e502:	51                                              	push   ecx
  76e503:	8b cf                                           	mov    ecx,edi
  76e505:	e8 76 9a 1c 00                                  	call   0x937f80
  76e50a:	8b f0                                           	mov    esi,eax
  76e50c:	85 f6                                           	test   esi,esi
  76e50e:	74 12                                           	je     0x76e522
  76e510:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  76e516:	52                                              	push   edx
  76e517:	8b ce                                           	mov    ecx,esi
  76e519:	e8 42 5d 1c 00                                  	call   0x934260
  76e51e:	85 c0                                           	test   eax,eax
  76e520:	75 08                                           	jne    0x76e52a
  76e522:	5f                                              	pop    edi
  76e523:	b8 e9 03 00 00                                  	mov    eax,0x3e9
  76e528:	5e                                              	pop    esi
  76e529:	c3                                              	ret
  76e52a:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  76e52e:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  76e532:	50                                              	push   eax
  76e533:	51                                              	push   ecx
  76e534:	8b cf                                           	mov    ecx,edi
  76e536:	e8 45 9a 1c 00                                  	call   0x937f80
  76e53b:	85 c0                                           	test   eax,eax
  76e53d:	75 08                                           	jne    0x76e547
  76e53f:	5f                                              	pop    edi
  76e540:	b8 ea 03 00 00                                  	mov    eax,0x3ea
  76e545:	5e                                              	pop    esi
  76e546:	c3                                              	ret
  76e547:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  76e54b:	6a 00                                           	push   0x0
  76e54d:	6a 00                                           	push   0x0
  76e54f:	52                                              	push   edx
  76e550:	50                                              	push   eax
  76e551:	56                                              	push   esi
  76e552:	e8 c9 50 3d 00                                  	call   0xb43620
  76e557:	83 c4 14                                        	add    esp,0x14
  76e55a:	5f                                              	pop    edi
  76e55b:	5e                                              	pop    esi
  76e55c:	c3                                              	ret
  76e55d:	cc                                              	int3
  76e55e:	cc                                              	int3
  76e55f:	cc                                              	int3
