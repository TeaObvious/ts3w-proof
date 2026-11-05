# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00755170 (ScriptCore.Route::Route_Merge)
Paired Ghidra pseudocode: 00755170_ScriptCore_Route_Route_Merge.c
Window: [0x00755170, 0x00755220) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00755220
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00755170: 51 8b 44 24 08 8b 0d c4 50 1d 01 57 50 e8 2e 63
00755180: ff ff 8b f8 85 ff 0f 84 8d 00 00 00 8b 17 8b 42
00755190: 10 56 8b cf ff d0 80 bf f4 00 00 00 00 74 08 8b
007551a0: b7 ec 00 00 00 eb 0f 8d 87 e0 00 00 00 39 00 74
007551b0: 5a 8b 08 8b 71 08 85 f6 74 51 53 8d 5e 04 8b d3
007551c0: b8 01 00 00 00 f0 0f c1 02 8b 44 24 1c 8b 4c 24
007551d0: 18 8b 16 8b 92 08 01 00 00 50 51 8b ce ff d2 8b
007551e0: c3 83 c9 ff f0 0f c1 08 49 75 11 ba 01 00 00 00
007551f0: 87 13 8b 06 8b 10 6a 01 8b ce ff d2 8b 07 8b 50
00755200: 14 5b 5e 8b cf 5f 83 c4 04 ff e2 8b 07 8b 50 14
00755210: 5e 8b cf 5f 83 c4 04 ff e2 5f 59 c3 cc cc cc cc

LINEAR DISASSEMBLY
00755170 <.text+0x354170>:
  755170:	51                                              	push   ecx
  755171:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  755175:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75517b:	57                                              	push   edi
  75517c:	50                                              	push   eax
  75517d:	e8 2e 63 ff ff                                  	call   0x74b4b0
  755182:	8b f8                                           	mov    edi,eax
  755184:	85 ff                                           	test   edi,edi
  755186:	0f 84 8d 00 00 00                               	je     0x755219
  75518c:	8b 17                                           	mov    edx,DWORD PTR [edi]
  75518e:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  755191:	56                                              	push   esi
  755192:	8b cf                                           	mov    ecx,edi
  755194:	ff d0                                           	call   eax
  755196:	80 bf f4 00 00 00 00                            	cmp    BYTE PTR [edi+0xf4],0x0
  75519d:	74 08                                           	je     0x7551a7
  75519f:	8b b7 ec 00 00 00                               	mov    esi,DWORD PTR [edi+0xec]
  7551a5:	eb 0f                                           	jmp    0x7551b6
  7551a7:	8d 87 e0 00 00 00                               	lea    eax,[edi+0xe0]
  7551ad:	39 00                                           	cmp    DWORD PTR [eax],eax
  7551af:	74 5a                                           	je     0x75520b
  7551b1:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  7551b3:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  7551b6:	85 f6                                           	test   esi,esi
  7551b8:	74 51                                           	je     0x75520b
  7551ba:	53                                              	push   ebx
  7551bb:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  7551be:	8b d3                                           	mov    edx,ebx
  7551c0:	b8 01 00 00 00                                  	mov    eax,0x1
  7551c5:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  7551c9:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  7551cd:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7551d1:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7551d3:	8b 92 08 01 00 00                               	mov    edx,DWORD PTR [edx+0x108]
  7551d9:	50                                              	push   eax
  7551da:	51                                              	push   ecx
  7551db:	8b ce                                           	mov    ecx,esi
  7551dd:	ff d2                                           	call   edx
  7551df:	8b c3                                           	mov    eax,ebx
  7551e1:	83 c9 ff                                        	or     ecx,0xffffffff
  7551e4:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  7551e8:	49                                              	dec    ecx
  7551e9:	75 11                                           	jne    0x7551fc
  7551eb:	ba 01 00 00 00                                  	mov    edx,0x1
  7551f0:	87 13                                           	xchg   DWORD PTR [ebx],edx
  7551f2:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7551f4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7551f6:	6a 01                                           	push   0x1
  7551f8:	8b ce                                           	mov    ecx,esi
  7551fa:	ff d2                                           	call   edx
  7551fc:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7551fe:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  755201:	5b                                              	pop    ebx
  755202:	5e                                              	pop    esi
  755203:	8b cf                                           	mov    ecx,edi
  755205:	5f                                              	pop    edi
  755206:	83 c4 04                                        	add    esp,0x4
  755209:	ff e2                                           	jmp    edx
  75520b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  75520d:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  755210:	5e                                              	pop    esi
  755211:	8b cf                                           	mov    ecx,edi
  755213:	5f                                              	pop    edi
  755214:	83 c4 04                                        	add    esp,0x4
  755217:	ff e2                                           	jmp    edx
  755219:	5f                                              	pop    edi
  75521a:	59                                              	pop    ecx
  75521b:	c3                                              	ret
  75521c:	cc                                              	int3
  75521d:	cc                                              	int3
  75521e:	cc                                              	int3
  75521f:	cc                                              	int3
