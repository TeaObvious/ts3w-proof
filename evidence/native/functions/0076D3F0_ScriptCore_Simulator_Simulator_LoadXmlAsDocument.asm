# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076d3f0 (ScriptCore.Simulator::Simulator_LoadXmlAsDocument)
Paired Ghidra pseudocode: 0076D3F0_ScriptCore_Simulator_Simulator_LoadXmlAsDocument.c
Window: [0x0076d3f0, 0x0076d490) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076d490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076d3f0: 51 8b 4c 24 14 8b 54 24 10 56 57 8d 44 24 08 50
0076d400: 8b 44 24 18 51 8b 4c 24 18 52 50 51 c7 44 24 1c
0076d410: 00 00 00 00 e8 07 f8 ff ff 83 c4 14 84 c0 74 57
0076d420: e8 6b bf ff ff 8b 4c 24 08 8b 11 8b f8 8b 42 18
0076d430: ff d0 8b f0 85 f6 74 3f 8b 16 8b 42 04 8b ce ff
0076d440: d0 8b 17 8b 82 b8 00 00 00 56 8b cf ff d0 8b 16
0076d450: 8b f8 8b 42 18 8b ce ff d0 8b 16 8b 42 08 8b ce
0076d460: ff d0 8b 4c 24 08 85 c9 74 07 8b 11 8b 42 08 ff
0076d470: d0 8b c7 5f 5e 59 c3 8b 4c 24 08 85 c9 74 07 8b
0076d480: 11 8b 42 08 ff d0 5f 33 c0 5e 59 c3 cc cc cc cc

LINEAR DISASSEMBLY
0076d3f0 <.text+0x36c3f0>:
  76d3f0:	51                                              	push   ecx
  76d3f1:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  76d3f5:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  76d3f9:	56                                              	push   esi
  76d3fa:	57                                              	push   edi
  76d3fb:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  76d3ff:	50                                              	push   eax
  76d400:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  76d404:	51                                              	push   ecx
  76d405:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76d409:	52                                              	push   edx
  76d40a:	50                                              	push   eax
  76d40b:	51                                              	push   ecx
  76d40c:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
  76d414:	e8 07 f8 ff ff                                  	call   0x76cc20
  76d419:	83 c4 14                                        	add    esp,0x14
  76d41c:	84 c0                                           	test   al,al
  76d41e:	74 57                                           	je     0x76d477
  76d420:	e8 6b bf ff ff                                  	call   0x769390
  76d425:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76d429:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  76d42b:	8b f8                                           	mov    edi,eax
  76d42d:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  76d430:	ff d0                                           	call   eax
  76d432:	8b f0                                           	mov    esi,eax
  76d434:	85 f6                                           	test   esi,esi
  76d436:	74 3f                                           	je     0x76d477
  76d438:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76d43a:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  76d43d:	8b ce                                           	mov    ecx,esi
  76d43f:	ff d0                                           	call   eax
  76d441:	8b 17                                           	mov    edx,DWORD PTR [edi]
  76d443:	8b 82 b8 00 00 00                               	mov    eax,DWORD PTR [edx+0xb8]
  76d449:	56                                              	push   esi
  76d44a:	8b cf                                           	mov    ecx,edi
  76d44c:	ff d0                                           	call   eax
  76d44e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76d450:	8b f8                                           	mov    edi,eax
  76d452:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  76d455:	8b ce                                           	mov    ecx,esi
  76d457:	ff d0                                           	call   eax
  76d459:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76d45b:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  76d45e:	8b ce                                           	mov    ecx,esi
  76d460:	ff d0                                           	call   eax
  76d462:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76d466:	85 c9                                           	test   ecx,ecx
  76d468:	74 07                                           	je     0x76d471
  76d46a:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  76d46c:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  76d46f:	ff d0                                           	call   eax
  76d471:	8b c7                                           	mov    eax,edi
  76d473:	5f                                              	pop    edi
  76d474:	5e                                              	pop    esi
  76d475:	59                                              	pop    ecx
  76d476:	c3                                              	ret
  76d477:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76d47b:	85 c9                                           	test   ecx,ecx
  76d47d:	74 07                                           	je     0x76d486
  76d47f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  76d481:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  76d484:	ff d0                                           	call   eax
  76d486:	5f                                              	pop    edi
  76d487:	33 c0                                           	xor    eax,eax
  76d489:	5e                                              	pop    esi
  76d48a:	59                                              	pop    ecx
  76d48b:	c3                                              	ret
  76d48c:	cc                                              	int3
  76d48d:	cc                                              	int3
  76d48e:	cc                                              	int3
  76d48f:	cc                                              	int3
