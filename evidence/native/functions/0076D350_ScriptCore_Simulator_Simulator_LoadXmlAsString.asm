# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076d350 (ScriptCore.Simulator::Simulator_LoadXmlAsString)
Paired Ghidra pseudocode: 0076D350_ScriptCore_Simulator_Simulator_LoadXmlAsString.c
Window: [0x0076d350, 0x0076d3f0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076d3f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076d350: 51 8b 4c 24 14 8b 54 24 10 56 57 8d 44 24 08 50
0076d360: 8b 44 24 18 51 8b 4c 24 18 52 50 51 c7 44 24 1c
0076d370: 00 00 00 00 e8 a7 f8 ff ff 83 c4 14 84 c0 74 57
0076d380: e8 0b c0 ff ff 8b 4c 24 08 8b 11 8b f8 8b 42 18
0076d390: ff d0 8b f0 85 f6 74 3f 8b 16 8b 42 04 8b ce ff
0076d3a0: d0 8b 17 8b 82 b4 00 00 00 56 8b cf ff d0 8b 16
0076d3b0: 8b f8 8b 42 18 8b ce ff d0 8b 16 8b 42 08 8b ce
0076d3c0: ff d0 8b 4c 24 08 85 c9 74 07 8b 11 8b 42 08 ff
0076d3d0: d0 8b c7 5f 5e 59 c3 8b 4c 24 08 85 c9 74 07 8b
0076d3e0: 11 8b 42 08 ff d0 5f 33 c0 5e 59 c3 cc cc cc cc

LINEAR DISASSEMBLY
0076d350 <.text+0x36c350>:
  76d350:	51                                              	push   ecx
  76d351:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  76d355:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  76d359:	56                                              	push   esi
  76d35a:	57                                              	push   edi
  76d35b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  76d35f:	50                                              	push   eax
  76d360:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  76d364:	51                                              	push   ecx
  76d365:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76d369:	52                                              	push   edx
  76d36a:	50                                              	push   eax
  76d36b:	51                                              	push   ecx
  76d36c:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
  76d374:	e8 a7 f8 ff ff                                  	call   0x76cc20
  76d379:	83 c4 14                                        	add    esp,0x14
  76d37c:	84 c0                                           	test   al,al
  76d37e:	74 57                                           	je     0x76d3d7
  76d380:	e8 0b c0 ff ff                                  	call   0x769390
  76d385:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76d389:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  76d38b:	8b f8                                           	mov    edi,eax
  76d38d:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  76d390:	ff d0                                           	call   eax
  76d392:	8b f0                                           	mov    esi,eax
  76d394:	85 f6                                           	test   esi,esi
  76d396:	74 3f                                           	je     0x76d3d7
  76d398:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76d39a:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  76d39d:	8b ce                                           	mov    ecx,esi
  76d39f:	ff d0                                           	call   eax
  76d3a1:	8b 17                                           	mov    edx,DWORD PTR [edi]
  76d3a3:	8b 82 b4 00 00 00                               	mov    eax,DWORD PTR [edx+0xb4]
  76d3a9:	56                                              	push   esi
  76d3aa:	8b cf                                           	mov    ecx,edi
  76d3ac:	ff d0                                           	call   eax
  76d3ae:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76d3b0:	8b f8                                           	mov    edi,eax
  76d3b2:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  76d3b5:	8b ce                                           	mov    ecx,esi
  76d3b7:	ff d0                                           	call   eax
  76d3b9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76d3bb:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  76d3be:	8b ce                                           	mov    ecx,esi
  76d3c0:	ff d0                                           	call   eax
  76d3c2:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76d3c6:	85 c9                                           	test   ecx,ecx
  76d3c8:	74 07                                           	je     0x76d3d1
  76d3ca:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  76d3cc:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  76d3cf:	ff d0                                           	call   eax
  76d3d1:	8b c7                                           	mov    eax,edi
  76d3d3:	5f                                              	pop    edi
  76d3d4:	5e                                              	pop    esi
  76d3d5:	59                                              	pop    ecx
  76d3d6:	c3                                              	ret
  76d3d7:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76d3db:	85 c9                                           	test   ecx,ecx
  76d3dd:	74 07                                           	je     0x76d3e6
  76d3df:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  76d3e1:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  76d3e4:	ff d0                                           	call   eax
  76d3e6:	5f                                              	pop    edi
  76d3e7:	33 c0                                           	xor    eax,eax
  76d3e9:	5e                                              	pop    esi
  76d3ea:	59                                              	pop    ecx
  76d3eb:	c3                                              	ret
  76d3ec:	cc                                              	int3
  76d3ed:	cc                                              	int3
  76d3ee:	cc                                              	int3
  76d3ef:	cc                                              	int3
