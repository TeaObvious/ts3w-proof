# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007419c0 (ScriptCore.EAText::EAText_Compare)
Paired Ghidra pseudocode: 007419C0_ScriptCore_EAText_EAText_Compare.c
Window: [0x007419c0, 0x00741a20) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00741a20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007419c0: a1 10 4f 1d 01 85 c0 53 56 57 74 05 8d 58 f8 eb
007419d0: 02 33 db e8 b8 79 02 00 8b 4c 24 10 8b f0 8b 06
007419e0: 8b 50 58 51 8b ce ff d2 8b 4c 24 14 8b f8 8b 06
007419f0: 8b 50 58 51 8b ce ff d2 50 57 8d 4b 08 e8 5e 17
00741a00: d1 ff 5f 5e 5b c3 cc cc cc cc cc cc cc cc cc cc
00741a10: 83 e9 04 e9 08 00 00 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007419c0 <.text+0x3409c0>:
  7419c0:	a1 10 4f 1d 01                                  	mov    eax,ds:0x11d4f10
  7419c5:	85 c0                                           	test   eax,eax
  7419c7:	53                                              	push   ebx
  7419c8:	56                                              	push   esi
  7419c9:	57                                              	push   edi
  7419ca:	74 05                                           	je     0x7419d1
  7419cc:	8d 58 f8                                        	lea    ebx,[eax-0x8]
  7419cf:	eb 02                                           	jmp    0x7419d3
  7419d1:	33 db                                           	xor    ebx,ebx
  7419d3:	e8 b8 79 02 00                                  	call   0x769390
  7419d8:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7419dc:	8b f0                                           	mov    esi,eax
  7419de:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7419e0:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  7419e3:	51                                              	push   ecx
  7419e4:	8b ce                                           	mov    ecx,esi
  7419e6:	ff d2                                           	call   edx
  7419e8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7419ec:	8b f8                                           	mov    edi,eax
  7419ee:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7419f0:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  7419f3:	51                                              	push   ecx
  7419f4:	8b ce                                           	mov    ecx,esi
  7419f6:	ff d2                                           	call   edx
  7419f8:	50                                              	push   eax
  7419f9:	57                                              	push   edi
  7419fa:	8d 4b 08                                        	lea    ecx,[ebx+0x8]
  7419fd:	e8 5e 17 d1 ff                                  	call   0x453160
  741a02:	5f                                              	pop    edi
  741a03:	5e                                              	pop    esi
  741a04:	5b                                              	pop    ebx
  741a05:	c3                                              	ret
  741a06:	cc                                              	int3
  741a07:	cc                                              	int3
  741a08:	cc                                              	int3
  741a09:	cc                                              	int3
  741a0a:	cc                                              	int3
  741a0b:	cc                                              	int3
  741a0c:	cc                                              	int3
  741a0d:	cc                                              	int3
  741a0e:	cc                                              	int3
  741a0f:	cc                                              	int3
  741a10:	83 e9 04                                        	sub    ecx,0x4
  741a13:	e9 08 00 00 00                                  	jmp    0x741a20
  741a18:	cc                                              	int3
  741a19:	cc                                              	int3
  741a1a:	cc                                              	int3
  741a1b:	cc                                              	int3
  741a1c:	cc                                              	int3
  741a1d:	cc                                              	int3
  741a1e:	cc                                              	int3
  741a1f:	cc                                              	int3
