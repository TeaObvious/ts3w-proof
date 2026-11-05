# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00863020 (ScriptCore.Audio::Audio_EnableGroupImpl)
Paired Ghidra pseudocode: 00863020_ScriptCore_Audio_Audio_EnableGroupImpl.c
Window: [0x00863020, 0x00863080) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00863080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00863020: 56 e8 da cd 04 00 8b f0 85 f6 74 43 8b 06 8b 50
00863030: 44 68 94 bf 49 d5 8b ce ff d2 8b 4c 24 08 8b 06
00863040: 8b 50 4c 51 68 49 20 36 04 8b ce ff d2 8b 06 8b
00863050: 50 4c 33 c9 38 4c 24 0c 0f 95 c1 51 68 0a c5 49
00863060: 15 8b ce ff d2 8b 06 8b 50 68 8b ce 5e ff e2 5e
00863070: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00863020 <.text+0x462020>:
  863020:	56                                              	push   esi
  863021:	e8 da cd 04 00                                  	call   0x8afe00
  863026:	8b f0                                           	mov    esi,eax
  863028:	85 f6                                           	test   esi,esi
  86302a:	74 43                                           	je     0x86306f
  86302c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  86302e:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  863031:	68 94 bf 49 d5                                  	push   0xd549bf94
  863036:	8b ce                                           	mov    ecx,esi
  863038:	ff d2                                           	call   edx
  86303a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  86303e:	8b 06                                           	mov    eax,DWORD PTR [esi]
  863040:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  863043:	51                                              	push   ecx
  863044:	68 49 20 36 04                                  	push   0x4362049
  863049:	8b ce                                           	mov    ecx,esi
  86304b:	ff d2                                           	call   edx
  86304d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  86304f:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  863052:	33 c9                                           	xor    ecx,ecx
  863054:	38 4c 24 0c                                     	cmp    BYTE PTR [esp+0xc],cl
  863058:	0f 95 c1                                        	setne  cl
  86305b:	51                                              	push   ecx
  86305c:	68 0a c5 49 15                                  	push   0x1549c50a
  863061:	8b ce                                           	mov    ecx,esi
  863063:	ff d2                                           	call   edx
  863065:	8b 06                                           	mov    eax,DWORD PTR [esi]
  863067:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  86306a:	8b ce                                           	mov    ecx,esi
  86306c:	5e                                              	pop    esi
  86306d:	ff e2                                           	jmp    edx
  86306f:	5e                                              	pop    esi
  863070:	c3                                              	ret
  863071:	cc                                              	int3
  863072:	cc                                              	int3
  863073:	cc                                              	int3
  863074:	cc                                              	int3
  863075:	cc                                              	int3
  863076:	cc                                              	int3
  863077:	cc                                              	int3
  863078:	cc                                              	int3
  863079:	cc                                              	int3
  86307a:	cc                                              	int3
  86307b:	cc                                              	int3
  86307c:	cc                                              	int3
  86307d:	cc                                              	int3
  86307e:	cc                                              	int3
  86307f:	cc                                              	int3
