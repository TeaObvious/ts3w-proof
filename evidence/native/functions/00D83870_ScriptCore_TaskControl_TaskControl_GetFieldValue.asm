# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d83870 (ScriptCore.TaskControl::TaskControl_GetFieldValue)
Paired Ghidra pseudocode: 00D83870_ScriptCore_TaskControl_TaskControl_GetFieldValue.c
Window: [0x00d83870, 0x00d83900) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d83900
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d83870: 51 8d 44 24 10 50 8b 44 24 14 8b 50 04 8b 00 8d
00d83880: 4c 24 04 51 8b 4c 24 14 52 8b 54 24 14 50 51 52
00d83890: e8 1b ff ff ff 83 c4 18 84 c0 75 04 33 c0 59 c3
00d838a0: 56 8b 74 24 04 57 56 e8 94 d7 0e 00 83 c4 04 80
00d838b0: 7e 06 15 8b f8 75 0b 57 e8 73 81 0e 00 83 c4 04
00d838c0: 8b f0 f7 46 04 00 00 00 40 74 08 8b 44 24 18 8b
00d838d0: 30 eb 04 8b 74 24 18 f6 47 14 08 74 14 e8 6e 1c
00d838e0: 0f 00 56 57 50 e8 56 fb 11 00 83 c4 0c 5f 5e 59
00d838f0: c3 8b 06 5f 5e 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00d83870 <.text+0x982870>:
  d83870:	51                                              	push   ecx
  d83871:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  d83875:	50                                              	push   eax
  d83876:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  d8387a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d8387d:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d8387f:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  d83883:	51                                              	push   ecx
  d83884:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  d83888:	52                                              	push   edx
  d83889:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  d8388d:	50                                              	push   eax
  d8388e:	51                                              	push   ecx
  d8388f:	52                                              	push   edx
  d83890:	e8 1b ff ff ff                                  	call   0xd837b0
  d83895:	83 c4 18                                        	add    esp,0x18
  d83898:	84 c0                                           	test   al,al
  d8389a:	75 04                                           	jne    0xd838a0
  d8389c:	33 c0                                           	xor    eax,eax
  d8389e:	59                                              	pop    ecx
  d8389f:	c3                                              	ret
  d838a0:	56                                              	push   esi
  d838a1:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  d838a5:	57                                              	push   edi
  d838a6:	56                                              	push   esi
  d838a7:	e8 94 d7 0e 00                                  	call   0xe71040
  d838ac:	83 c4 04                                        	add    esp,0x4
  d838af:	80 7e 06 15                                     	cmp    BYTE PTR [esi+0x6],0x15
  d838b3:	8b f8                                           	mov    edi,eax
  d838b5:	75 0b                                           	jne    0xd838c2
  d838b7:	57                                              	push   edi
  d838b8:	e8 73 81 0e 00                                  	call   0xe6ba30
  d838bd:	83 c4 04                                        	add    esp,0x4
  d838c0:	8b f0                                           	mov    esi,eax
  d838c2:	f7 46 04 00 00 00 40                            	test   DWORD PTR [esi+0x4],0x40000000
  d838c9:	74 08                                           	je     0xd838d3
  d838cb:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  d838cf:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d838d1:	eb 04                                           	jmp    0xd838d7
  d838d3:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  d838d7:	f6 47 14 08                                     	test   BYTE PTR [edi+0x14],0x8
  d838db:	74 14                                           	je     0xd838f1
  d838dd:	e8 6e 1c 0f 00                                  	call   0xe75550
  d838e2:	56                                              	push   esi
  d838e3:	57                                              	push   edi
  d838e4:	50                                              	push   eax
  d838e5:	e8 56 fb 11 00                                  	call   0xea3440
  d838ea:	83 c4 0c                                        	add    esp,0xc
  d838ed:	5f                                              	pop    edi
  d838ee:	5e                                              	pop    esi
  d838ef:	59                                              	pop    ecx
  d838f0:	c3                                              	ret
  d838f1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d838f3:	5f                                              	pop    edi
  d838f4:	5e                                              	pop    esi
  d838f5:	59                                              	pop    ecx
  d838f6:	c3                                              	ret
  d838f7:	cc                                              	int3
  d838f8:	cc                                              	int3
  d838f9:	cc                                              	int3
  d838fa:	cc                                              	int3
  d838fb:	cc                                              	int3
  d838fc:	cc                                              	int3
  d838fd:	cc                                              	int3
  d838fe:	cc                                              	int3
  d838ff:	cc                                              	int3
