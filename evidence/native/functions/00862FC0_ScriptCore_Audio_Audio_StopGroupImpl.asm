# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00862fc0 (ScriptCore.Audio::Audio_StopGroupImpl)
Paired Ghidra pseudocode: 00862FC0_ScriptCore_Audio_Audio_StopGroupImpl.c
Window: [0x00862fc0, 0x00863020) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00863020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00862fc0: 56 e8 3a ce 04 00 8b f0 85 f6 74 43 8b 06 8b 50
00862fd0: 44 68 be ce 49 15 8b ce ff d2 8b 4c 24 08 8b 06
00862fe0: 8b 50 4c 51 68 49 20 36 04 8b ce ff d2 8b 06 8b
00862ff0: 50 4c 33 c9 38 4c 24 0c 0f 95 c1 51 68 a0 53 47
00863000: 03 8b ce ff d2 8b 06 8b 50 68 8b ce 5e ff e2 5e
00863010: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00862fc0 <.text+0x461fc0>:
  862fc0:	56                                              	push   esi
  862fc1:	e8 3a ce 04 00                                  	call   0x8afe00
  862fc6:	8b f0                                           	mov    esi,eax
  862fc8:	85 f6                                           	test   esi,esi
  862fca:	74 43                                           	je     0x86300f
  862fcc:	8b 06                                           	mov    eax,DWORD PTR [esi]
  862fce:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  862fd1:	68 be ce 49 15                                  	push   0x1549cebe
  862fd6:	8b ce                                           	mov    ecx,esi
  862fd8:	ff d2                                           	call   edx
  862fda:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  862fde:	8b 06                                           	mov    eax,DWORD PTR [esi]
  862fe0:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  862fe3:	51                                              	push   ecx
  862fe4:	68 49 20 36 04                                  	push   0x4362049
  862fe9:	8b ce                                           	mov    ecx,esi
  862feb:	ff d2                                           	call   edx
  862fed:	8b 06                                           	mov    eax,DWORD PTR [esi]
  862fef:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  862ff2:	33 c9                                           	xor    ecx,ecx
  862ff4:	38 4c 24 0c                                     	cmp    BYTE PTR [esp+0xc],cl
  862ff8:	0f 95 c1                                        	setne  cl
  862ffb:	51                                              	push   ecx
  862ffc:	68 a0 53 47 03                                  	push   0x34753a0
  863001:	8b ce                                           	mov    ecx,esi
  863003:	ff d2                                           	call   edx
  863005:	8b 06                                           	mov    eax,DWORD PTR [esi]
  863007:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  86300a:	8b ce                                           	mov    ecx,esi
  86300c:	5e                                              	pop    esi
  86300d:	ff e2                                           	jmp    edx
  86300f:	5e                                              	pop    esi
  863010:	c3                                              	ret
  863011:	cc                                              	int3
  863012:	cc                                              	int3
  863013:	cc                                              	int3
  863014:	cc                                              	int3
  863015:	cc                                              	int3
  863016:	cc                                              	int3
  863017:	cc                                              	int3
  863018:	cc                                              	int3
  863019:	cc                                              	int3
  86301a:	cc                                              	int3
  86301b:	cc                                              	int3
  86301c:	cc                                              	int3
  86301d:	cc                                              	int3
  86301e:	cc                                              	int3
  86301f:	cc                                              	int3
