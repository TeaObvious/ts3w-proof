# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007552d0 (ScriptCore.Route::Route_Tesselate)
Paired Ghidra pseudocode: 007552D0_ScriptCore_Route_Route_Tesselate.c
Window: [0x007552d0, 0x00755380) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00755380
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007552d0: 51 8b 44 24 08 8b 0d c4 50 1d 01 57 50 e8 ce 61
007552e0: ff ff 8b f8 85 ff 0f 84 8b 00 00 00 8b 17 8b 42
007552f0: 10 56 8b cf ff d0 80 bf f4 00 00 00 00 74 08 8b
00755300: b7 ec 00 00 00 eb 0f 8d 87 e0 00 00 00 39 00 74
00755310: 58 8b 08 8b 71 08 85 f6 74 4f 53 8d 5e 04 8b d3
00755320: b8 01 00 00 00 f0 0f c1 02 d9 44 24 18 8b 16 8b
00755330: 82 10 01 00 00 51 8b ce d9 1c 24 ff d0 8b cb 83
00755340: ca ff f0 0f c1 11 4a 75 11 b8 01 00 00 00 87 03
00755350: 8b 16 8b 02 6a 01 8b ce ff d0 8b 17 8b 42 14 5b
00755360: 5e 8b cf 5f 83 c4 04 ff e0 8b 17 8b 42 14 5e 8b
00755370: cf 5f 83 c4 04 ff e0 5f 59 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
007552d0 <.text+0x3542d0>:
  7552d0:	51                                              	push   ecx
  7552d1:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7552d5:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  7552db:	57                                              	push   edi
  7552dc:	50                                              	push   eax
  7552dd:	e8 ce 61 ff ff                                  	call   0x74b4b0
  7552e2:	8b f8                                           	mov    edi,eax
  7552e4:	85 ff                                           	test   edi,edi
  7552e6:	0f 84 8b 00 00 00                               	je     0x755377
  7552ec:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7552ee:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  7552f1:	56                                              	push   esi
  7552f2:	8b cf                                           	mov    ecx,edi
  7552f4:	ff d0                                           	call   eax
  7552f6:	80 bf f4 00 00 00 00                            	cmp    BYTE PTR [edi+0xf4],0x0
  7552fd:	74 08                                           	je     0x755307
  7552ff:	8b b7 ec 00 00 00                               	mov    esi,DWORD PTR [edi+0xec]
  755305:	eb 0f                                           	jmp    0x755316
  755307:	8d 87 e0 00 00 00                               	lea    eax,[edi+0xe0]
  75530d:	39 00                                           	cmp    DWORD PTR [eax],eax
  75530f:	74 58                                           	je     0x755369
  755311:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  755313:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  755316:	85 f6                                           	test   esi,esi
  755318:	74 4f                                           	je     0x755369
  75531a:	53                                              	push   ebx
  75531b:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  75531e:	8b d3                                           	mov    edx,ebx
  755320:	b8 01 00 00 00                                  	mov    eax,0x1
  755325:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  755329:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  75532d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75532f:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  755335:	51                                              	push   ecx
  755336:	8b ce                                           	mov    ecx,esi
  755338:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  75533b:	ff d0                                           	call   eax
  75533d:	8b cb                                           	mov    ecx,ebx
  75533f:	83 ca ff                                        	or     edx,0xffffffff
  755342:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  755346:	4a                                              	dec    edx
  755347:	75 11                                           	jne    0x75535a
  755349:	b8 01 00 00 00                                  	mov    eax,0x1
  75534e:	87 03                                           	xchg   DWORD PTR [ebx],eax
  755350:	8b 16                                           	mov    edx,DWORD PTR [esi]
  755352:	8b 02                                           	mov    eax,DWORD PTR [edx]
  755354:	6a 01                                           	push   0x1
  755356:	8b ce                                           	mov    ecx,esi
  755358:	ff d0                                           	call   eax
  75535a:	8b 17                                           	mov    edx,DWORD PTR [edi]
  75535c:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  75535f:	5b                                              	pop    ebx
  755360:	5e                                              	pop    esi
  755361:	8b cf                                           	mov    ecx,edi
  755363:	5f                                              	pop    edi
  755364:	83 c4 04                                        	add    esp,0x4
  755367:	ff e0                                           	jmp    eax
  755369:	8b 17                                           	mov    edx,DWORD PTR [edi]
  75536b:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  75536e:	5e                                              	pop    esi
  75536f:	8b cf                                           	mov    ecx,edi
  755371:	5f                                              	pop    edi
  755372:	83 c4 04                                        	add    esp,0x4
  755375:	ff e0                                           	jmp    eax
  755377:	5f                                              	pop    edi
  755378:	59                                              	pop    ecx
  755379:	c3                                              	ret
  75537a:	cc                                              	int3
  75537b:	cc                                              	int3
  75537c:	cc                                              	int3
  75537d:	cc                                              	int3
  75537e:	cc                                              	int3
  75537f:	cc                                              	int3
