# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007414d0 (ScriptCore.DeviceConfig::DeviceConfig_SetOption)
Paired Ghidra pseudocode: 007414D0_ScriptCore_DeviceConfig_DeviceConfig_SetOption.c
Window: [0x007414d0, 0x00741550) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00741550
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007414d0: 83 ec 10 57 e8 b7 7e 02 00 8b 4c 24 18 8b 10 8b
007414e0: 52 58 51 8b c8 ff d2 8b f8 85 ff 74 52 53 56 e8
007414f0: 0c d3 e4 ff 6a 00 6a ff 8b f0 8d 44 24 14 57 50
00741500: e8 bb 27 db ff 8b 4c 24 34 8b 00 83 c4 10 51 50
00741510: 8d 4e 04 e8 f8 da e4 ff 8b 54 24 14 8a d8 8b 44
00741520: 24 0c 2b d0 83 fa 01 7e 0d 85 c0 74 09 50 e8 ad
00741530: 2f da ff 83 c4 04 5e 8a c3 5b 5f 83 c4 10 c3 32
00741540: c0 5f 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007414d0 <.text+0x3404d0>:
  7414d0:	83 ec 10                                        	sub    esp,0x10
  7414d3:	57                                              	push   edi
  7414d4:	e8 b7 7e 02 00                                  	call   0x769390
  7414d9:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7414dd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7414df:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  7414e2:	51                                              	push   ecx
  7414e3:	8b c8                                           	mov    ecx,eax
  7414e5:	ff d2                                           	call   edx
  7414e7:	8b f8                                           	mov    edi,eax
  7414e9:	85 ff                                           	test   edi,edi
  7414eb:	74 52                                           	je     0x74153f
  7414ed:	53                                              	push   ebx
  7414ee:	56                                              	push   esi
  7414ef:	e8 0c d3 e4 ff                                  	call   0x58e800
  7414f4:	6a 00                                           	push   0x0
  7414f6:	6a ff                                           	push   0xffffffff
  7414f8:	8b f0                                           	mov    esi,eax
  7414fa:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  7414fe:	57                                              	push   edi
  7414ff:	50                                              	push   eax
  741500:	e8 bb 27 db ff                                  	call   0x4f3cc0
  741505:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  741509:	8b 00                                           	mov    eax,DWORD PTR [eax]
  74150b:	83 c4 10                                        	add    esp,0x10
  74150e:	51                                              	push   ecx
  74150f:	50                                              	push   eax
  741510:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  741513:	e8 f8 da e4 ff                                  	call   0x58f010
  741518:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  74151c:	8a d8                                           	mov    bl,al
  74151e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  741522:	2b d0                                           	sub    edx,eax
  741524:	83 fa 01                                        	cmp    edx,0x1
  741527:	7e 0d                                           	jle    0x741536
  741529:	85 c0                                           	test   eax,eax
  74152b:	74 09                                           	je     0x741536
  74152d:	50                                              	push   eax
  74152e:	e8 ad 2f da ff                                  	call   0x4e44e0
  741533:	83 c4 04                                        	add    esp,0x4
  741536:	5e                                              	pop    esi
  741537:	8a c3                                           	mov    al,bl
  741539:	5b                                              	pop    ebx
  74153a:	5f                                              	pop    edi
  74153b:	83 c4 10                                        	add    esp,0x10
  74153e:	c3                                              	ret
  74153f:	32 c0                                           	xor    al,al
  741541:	5f                                              	pop    edi
  741542:	83 c4 10                                        	add    esp,0x10
  741545:	c3                                              	ret
  741546:	cc                                              	int3
  741547:	cc                                              	int3
  741548:	cc                                              	int3
  741549:	cc                                              	int3
  74154a:	cc                                              	int3
  74154b:	cc                                              	int3
  74154c:	cc                                              	int3
  74154d:	cc                                              	int3
  74154e:	cc                                              	int3
  74154f:	cc                                              	int3
