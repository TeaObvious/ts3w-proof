# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076e450 (ScriptCore.Slots::Slots_AttachToSlotImpl)
Paired Ghidra pseudocode: 0076E450_ScriptCore_Slots_Slots_AttachToSlotImpl.c
Window: [0x0076e450, 0x0076e4f0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076e4f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076e450: 53 56 57 e8 18 91 1c 00 8b 4c 24 10 8b f8 8b 44
0076e460: 24 14 50 51 8b cf e8 15 9b 1c 00 8b f0 85 f6 74
0076e470: 14 8b 15 58 a1 1e 01 52 8b ce e8 e1 5d 1c 00 8b
0076e480: d8 85 db 75 09 5f 5e b8 e9 03 00 00 5b c3 8b 44
0076e490: 24 1c 8b 4c 24 18 50 51 8b cf e8 e1 9a 1c 00 8b
0076e4a0: f8 85 ff 75 09 5f 5e b8 ea 03 00 00 5b c3 80 7c
0076e4b0: 24 28 00 74 19 8b 15 84 d4 1d 01 52 8b ce e8 9d
0076e4c0: 5d 1c 00 85 c0 74 07 8b c8 e8 22 e7 1c 00 8b 44
0076e4d0: 24 24 8b 4c 24 20 50 6a 00 51 57 8b cb e8 ae b9
0076e4e0: 1e 00 5f 5e 5b c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076e450 <.text+0x36d450>:
  76e450:	53                                              	push   ebx
  76e451:	56                                              	push   esi
  76e452:	57                                              	push   edi
  76e453:	e8 18 91 1c 00                                  	call   0x937570
  76e458:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  76e45c:	8b f8                                           	mov    edi,eax
  76e45e:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  76e462:	50                                              	push   eax
  76e463:	51                                              	push   ecx
  76e464:	8b cf                                           	mov    ecx,edi
  76e466:	e8 15 9b 1c 00                                  	call   0x937f80
  76e46b:	8b f0                                           	mov    esi,eax
  76e46d:	85 f6                                           	test   esi,esi
  76e46f:	74 14                                           	je     0x76e485
  76e471:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  76e477:	52                                              	push   edx
  76e478:	8b ce                                           	mov    ecx,esi
  76e47a:	e8 e1 5d 1c 00                                  	call   0x934260
  76e47f:	8b d8                                           	mov    ebx,eax
  76e481:	85 db                                           	test   ebx,ebx
  76e483:	75 09                                           	jne    0x76e48e
  76e485:	5f                                              	pop    edi
  76e486:	5e                                              	pop    esi
  76e487:	b8 e9 03 00 00                                  	mov    eax,0x3e9
  76e48c:	5b                                              	pop    ebx
  76e48d:	c3                                              	ret
  76e48e:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  76e492:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76e496:	50                                              	push   eax
  76e497:	51                                              	push   ecx
  76e498:	8b cf                                           	mov    ecx,edi
  76e49a:	e8 e1 9a 1c 00                                  	call   0x937f80
  76e49f:	8b f8                                           	mov    edi,eax
  76e4a1:	85 ff                                           	test   edi,edi
  76e4a3:	75 09                                           	jne    0x76e4ae
  76e4a5:	5f                                              	pop    edi
  76e4a6:	5e                                              	pop    esi
  76e4a7:	b8 ea 03 00 00                                  	mov    eax,0x3ea
  76e4ac:	5b                                              	pop    ebx
  76e4ad:	c3                                              	ret
  76e4ae:	80 7c 24 28 00                                  	cmp    BYTE PTR [esp+0x28],0x0
  76e4b3:	74 19                                           	je     0x76e4ce
  76e4b5:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  76e4bb:	52                                              	push   edx
  76e4bc:	8b ce                                           	mov    ecx,esi
  76e4be:	e8 9d 5d 1c 00                                  	call   0x934260
  76e4c3:	85 c0                                           	test   eax,eax
  76e4c5:	74 07                                           	je     0x76e4ce
  76e4c7:	8b c8                                           	mov    ecx,eax
  76e4c9:	e8 22 e7 1c 00                                  	call   0x93cbf0
  76e4ce:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  76e4d2:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  76e4d6:	50                                              	push   eax
  76e4d7:	6a 00                                           	push   0x0
  76e4d9:	51                                              	push   ecx
  76e4da:	57                                              	push   edi
  76e4db:	8b cb                                           	mov    ecx,ebx
  76e4dd:	e8 ae b9 1e 00                                  	call   0x959e90
  76e4e2:	5f                                              	pop    edi
  76e4e3:	5e                                              	pop    esi
  76e4e4:	5b                                              	pop    ebx
  76e4e5:	c3                                              	ret
  76e4e6:	cc                                              	int3
  76e4e7:	cc                                              	int3
  76e4e8:	cc                                              	int3
  76e4e9:	cc                                              	int3
  76e4ea:	cc                                              	int3
  76e4eb:	cc                                              	int3
  76e4ec:	cc                                              	int3
  76e4ed:	cc                                              	int3
  76e4ee:	cc                                              	int3
  76e4ef:	cc                                              	int3
