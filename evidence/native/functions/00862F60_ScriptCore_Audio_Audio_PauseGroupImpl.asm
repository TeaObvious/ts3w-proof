# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00862f60 (ScriptCore.Audio::Audio_PauseGroupImpl)
Paired Ghidra pseudocode: 00862F60_ScriptCore_Audio_Audio_PauseGroupImpl.c
Window: [0x00862f60, 0x00862fc0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00862fc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00862f60: 56 e8 9a ce 04 00 8b f0 85 f6 74 43 8b 06 8b 50
00862f70: 44 68 21 2b 4f 04 8b ce ff d2 8b 4c 24 08 8b 06
00862f80: 8b 50 4c 51 68 49 20 36 04 8b ce ff d2 8b 06 8b
00862f90: 50 4c 33 c9 38 4c 24 0c 0f 95 c1 51 68 8b 8c 2c
00862fa0: 04 8b ce ff d2 8b 06 8b 50 68 8b ce 5e ff e2 5e
00862fb0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00862f60 <.text+0x461f60>:
  862f60:	56                                              	push   esi
  862f61:	e8 9a ce 04 00                                  	call   0x8afe00
  862f66:	8b f0                                           	mov    esi,eax
  862f68:	85 f6                                           	test   esi,esi
  862f6a:	74 43                                           	je     0x862faf
  862f6c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  862f6e:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  862f71:	68 21 2b 4f 04                                  	push   0x44f2b21
  862f76:	8b ce                                           	mov    ecx,esi
  862f78:	ff d2                                           	call   edx
  862f7a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  862f7e:	8b 06                                           	mov    eax,DWORD PTR [esi]
  862f80:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  862f83:	51                                              	push   ecx
  862f84:	68 49 20 36 04                                  	push   0x4362049
  862f89:	8b ce                                           	mov    ecx,esi
  862f8b:	ff d2                                           	call   edx
  862f8d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  862f8f:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  862f92:	33 c9                                           	xor    ecx,ecx
  862f94:	38 4c 24 0c                                     	cmp    BYTE PTR [esp+0xc],cl
  862f98:	0f 95 c1                                        	setne  cl
  862f9b:	51                                              	push   ecx
  862f9c:	68 8b 8c 2c 04                                  	push   0x42c8c8b
  862fa1:	8b ce                                           	mov    ecx,esi
  862fa3:	ff d2                                           	call   edx
  862fa5:	8b 06                                           	mov    eax,DWORD PTR [esi]
  862fa7:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  862faa:	8b ce                                           	mov    ecx,esi
  862fac:	5e                                              	pop    esi
  862fad:	ff e2                                           	jmp    edx
  862faf:	5e                                              	pop    esi
  862fb0:	c3                                              	ret
  862fb1:	cc                                              	int3
  862fb2:	cc                                              	int3
  862fb3:	cc                                              	int3
  862fb4:	cc                                              	int3
  862fb5:	cc                                              	int3
  862fb6:	cc                                              	int3
  862fb7:	cc                                              	int3
  862fb8:	cc                                              	int3
  862fb9:	cc                                              	int3
  862fba:	cc                                              	int3
  862fbb:	cc                                              	int3
  862fbc:	cc                                              	int3
  862fbd:	cc                                              	int3
  862fbe:	cc                                              	int3
  862fbf:	cc                                              	int3
