# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007863b0 (ScriptCore.World::World_DesignModeSwap_StartMaterialBuildImpl)
Paired Ghidra pseudocode: 007863B0_ScriptCore_World_World_DesignModeSwap_StartMaterialBuildImpl.c
Window: [0x007863b0, 0x00786410) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007863b0: 57 8b 7c 24 0c 85 ff 75 04 32 c0 5f c3 53 56 e8
007863c0: cc 2f fe ff 8b 5c 24 10 8b f0 8b c3 25 00 00 00
007863d0: ff 3d 00 00 00 45 75 1d 8b 16 8b 42 58 57 8b ce
007863e0: ff d0 8b 16 8b f8 8b 82 cc 00 00 00 53 8b ce ff
007863f0: d0 85 c0 75 06 5e 5b 32 c0 5f c3 57 8b c8 e8 0d
00786400: 9f 2d 00 5e 5b 5f c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007863b0 <.text+0x3853b0>:
  7863b0:	57                                              	push   edi
  7863b1:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  7863b5:	85 ff                                           	test   edi,edi
  7863b7:	75 04                                           	jne    0x7863bd
  7863b9:	32 c0                                           	xor    al,al
  7863bb:	5f                                              	pop    edi
  7863bc:	c3                                              	ret
  7863bd:	53                                              	push   ebx
  7863be:	56                                              	push   esi
  7863bf:	e8 cc 2f fe ff                                  	call   0x769390
  7863c4:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
  7863c8:	8b f0                                           	mov    esi,eax
  7863ca:	8b c3                                           	mov    eax,ebx
  7863cc:	25 00 00 00 ff                                  	and    eax,0xff000000
  7863d1:	3d 00 00 00 45                                  	cmp    eax,0x45000000
  7863d6:	75 1d                                           	jne    0x7863f5
  7863d8:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7863da:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  7863dd:	57                                              	push   edi
  7863de:	8b ce                                           	mov    ecx,esi
  7863e0:	ff d0                                           	call   eax
  7863e2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7863e4:	8b f8                                           	mov    edi,eax
  7863e6:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  7863ec:	53                                              	push   ebx
  7863ed:	8b ce                                           	mov    ecx,esi
  7863ef:	ff d0                                           	call   eax
  7863f1:	85 c0                                           	test   eax,eax
  7863f3:	75 06                                           	jne    0x7863fb
  7863f5:	5e                                              	pop    esi
  7863f6:	5b                                              	pop    ebx
  7863f7:	32 c0                                           	xor    al,al
  7863f9:	5f                                              	pop    edi
  7863fa:	c3                                              	ret
  7863fb:	57                                              	push   edi
  7863fc:	8b c8                                           	mov    ecx,eax
  7863fe:	e8 0d 9f 2d 00                                  	call   0xa60310
  786403:	5e                                              	pop    esi
  786404:	5b                                              	pop    ebx
  786405:	5f                                              	pop    edi
  786406:	c3                                              	ret
  786407:	cc                                              	int3
  786408:	cc                                              	int3
  786409:	cc                                              	int3
  78640a:	cc                                              	int3
  78640b:	cc                                              	int3
  78640c:	cc                                              	int3
  78640d:	cc                                              	int3
  78640e:	cc                                              	int3
  78640f:	cc                                              	int3
