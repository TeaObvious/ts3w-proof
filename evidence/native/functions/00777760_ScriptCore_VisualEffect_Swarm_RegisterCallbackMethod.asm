# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777760 (ScriptCore.VisualEffect::Swarm_RegisterCallbackMethod)
Paired Ghidra pseudocode: 00777760_ScriptCore_VisualEffect_Swarm_RegisterCallbackMethod.c
Window: [0x00777760, 0x007777c0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x007777c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777760: 57 8b 7c 24 08 85 ff 77 53 53 56 e8 20 1c ff ff
00777770: 8b 4c 24 18 8b f0 8b 06 8b 50 58 51 8b ce ff d2
00777780: 8b 4c 24 14 8b d8 8b 06 8b 50 58 51 8b ce ff d2
00777790: 50 c1 e7 05 8d 87 58 79 1d 01 68 0c 0a 00 01 50
007777a0: e8 bb 96 e1 ff 53 8d 8f 68 79 1d 01 68 0c 0a 00
007777b0: 01 51 e8 a9 96 e1 ff 83 c4 18 5e 5b 5f c3 cc cc

LINEAR DISASSEMBLY
00777760 <.text+0x376760>:
  777760:	57                                              	push   edi
  777761:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  777765:	85 ff                                           	test   edi,edi
  777767:	77 53                                           	ja     0x7777bc
  777769:	53                                              	push   ebx
  77776a:	56                                              	push   esi
  77776b:	e8 20 1c ff ff                                  	call   0x769390
  777770:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  777774:	8b f0                                           	mov    esi,eax
  777776:	8b 06                                           	mov    eax,DWORD PTR [esi]
  777778:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  77777b:	51                                              	push   ecx
  77777c:	8b ce                                           	mov    ecx,esi
  77777e:	ff d2                                           	call   edx
  777780:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  777784:	8b d8                                           	mov    ebx,eax
  777786:	8b 06                                           	mov    eax,DWORD PTR [esi]
  777788:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  77778b:	51                                              	push   ecx
  77778c:	8b ce                                           	mov    ecx,esi
  77778e:	ff d2                                           	call   edx
  777790:	50                                              	push   eax
  777791:	c1 e7 05                                        	shl    edi,0x5
  777794:	8d 87 58 79 1d 01                               	lea    eax,[edi+0x11d7958]
  77779a:	68 0c 0a 00 01                                  	push   0x1000a0c
  77779f:	50                                              	push   eax
  7777a0:	e8 bb 96 e1 ff                                  	call   0x590e60
  7777a5:	53                                              	push   ebx
  7777a6:	8d 8f 68 79 1d 01                               	lea    ecx,[edi+0x11d7968]
  7777ac:	68 0c 0a 00 01                                  	push   0x1000a0c
  7777b1:	51                                              	push   ecx
  7777b2:	e8 a9 96 e1 ff                                  	call   0x590e60
  7777b7:	83 c4 18                                        	add    esp,0x18
  7777ba:	5e                                              	pop    esi
  7777bb:	5b                                              	pop    ebx
  7777bc:	5f                                              	pop    edi
  7777bd:	c3                                              	ret
  7777be:	cc                                              	int3
  7777bf:	cc                                              	int3
