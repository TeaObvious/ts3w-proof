# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00755220 (ScriptCore.Route::Route_Truncate)
Paired Ghidra pseudocode: 00755220_ScriptCore_Route_Route_Truncate.c
Window: [0x00755220, 0x007552d0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x007552d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00755220: 51 8b 44 24 08 8b 0d c4 50 1d 01 57 50 e8 7e 62
00755230: ff ff 8b f8 85 ff 0f 84 88 00 00 00 8b 17 8b 42
00755240: 10 56 8b cf ff d0 80 bf f4 00 00 00 00 74 08 8b
00755250: b7 ec 00 00 00 eb 0f 8d 87 e0 00 00 00 39 00 74
00755260: 55 8b 08 8b 71 08 85 f6 74 4c 53 8d 5e 04 8b d3
00755270: b8 01 00 00 00 f0 0f c1 02 8b 16 8b 44 24 18 8b
00755280: 92 0c 01 00 00 50 8b ce ff d2 8b c3 83 c9 ff f0
00755290: 0f c1 08 49 75 11 ba 01 00 00 00 87 13 8b 06 8b
007552a0: 10 6a 01 8b ce ff d2 8b 07 8b 50 14 5b 5e 8b cf
007552b0: 5f 83 c4 04 ff e2 8b 07 8b 50 14 5e 8b cf 5f 83
007552c0: c4 04 ff e2 5f 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00755220 <.text+0x354220>:
  755220:	51                                              	push   ecx
  755221:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  755225:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75522b:	57                                              	push   edi
  75522c:	50                                              	push   eax
  75522d:	e8 7e 62 ff ff                                  	call   0x74b4b0
  755232:	8b f8                                           	mov    edi,eax
  755234:	85 ff                                           	test   edi,edi
  755236:	0f 84 88 00 00 00                               	je     0x7552c4
  75523c:	8b 17                                           	mov    edx,DWORD PTR [edi]
  75523e:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  755241:	56                                              	push   esi
  755242:	8b cf                                           	mov    ecx,edi
  755244:	ff d0                                           	call   eax
  755246:	80 bf f4 00 00 00 00                            	cmp    BYTE PTR [edi+0xf4],0x0
  75524d:	74 08                                           	je     0x755257
  75524f:	8b b7 ec 00 00 00                               	mov    esi,DWORD PTR [edi+0xec]
  755255:	eb 0f                                           	jmp    0x755266
  755257:	8d 87 e0 00 00 00                               	lea    eax,[edi+0xe0]
  75525d:	39 00                                           	cmp    DWORD PTR [eax],eax
  75525f:	74 55                                           	je     0x7552b6
  755261:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  755263:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  755266:	85 f6                                           	test   esi,esi
  755268:	74 4c                                           	je     0x7552b6
  75526a:	53                                              	push   ebx
  75526b:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  75526e:	8b d3                                           	mov    edx,ebx
  755270:	b8 01 00 00 00                                  	mov    eax,0x1
  755275:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  755279:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75527b:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  75527f:	8b 92 0c 01 00 00                               	mov    edx,DWORD PTR [edx+0x10c]
  755285:	50                                              	push   eax
  755286:	8b ce                                           	mov    ecx,esi
  755288:	ff d2                                           	call   edx
  75528a:	8b c3                                           	mov    eax,ebx
  75528c:	83 c9 ff                                        	or     ecx,0xffffffff
  75528f:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  755293:	49                                              	dec    ecx
  755294:	75 11                                           	jne    0x7552a7
  755296:	ba 01 00 00 00                                  	mov    edx,0x1
  75529b:	87 13                                           	xchg   DWORD PTR [ebx],edx
  75529d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  75529f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7552a1:	6a 01                                           	push   0x1
  7552a3:	8b ce                                           	mov    ecx,esi
  7552a5:	ff d2                                           	call   edx
  7552a7:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7552a9:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  7552ac:	5b                                              	pop    ebx
  7552ad:	5e                                              	pop    esi
  7552ae:	8b cf                                           	mov    ecx,edi
  7552b0:	5f                                              	pop    edi
  7552b1:	83 c4 04                                        	add    esp,0x4
  7552b4:	ff e2                                           	jmp    edx
  7552b6:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7552b8:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  7552bb:	5e                                              	pop    esi
  7552bc:	8b cf                                           	mov    ecx,edi
  7552be:	5f                                              	pop    edi
  7552bf:	83 c4 04                                        	add    esp,0x4
  7552c2:	ff e2                                           	jmp    edx
  7552c4:	5f                                              	pop    edi
  7552c5:	59                                              	pop    ecx
  7552c6:	c3                                              	ret
  7552c7:	cc                                              	int3
  7552c8:	cc                                              	int3
  7552c9:	cc                                              	int3
  7552ca:	cc                                              	int3
  7552cb:	cc                                              	int3
  7552cc:	cc                                              	int3
  7552cd:	cc                                              	int3
  7552ce:	cc                                              	int3
  7552cf:	cc                                              	int3
