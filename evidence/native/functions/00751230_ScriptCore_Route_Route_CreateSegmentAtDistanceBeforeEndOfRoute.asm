# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00751230 (ScriptCore.Route::Route_CreateSegmentAtDistanceBeforeEndOfRoute)
Paired Ghidra pseudocode: 00751230_ScriptCore_Route_Route_CreateSegmentAtDistanceBeforeEndOfRoute.c
Window: [0x00751230, 0x00751320) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x00751320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00751230: 8b 44 24 04 8b 0d c4 50 1d 01 83 ec 0c 55 50 e8
00751240: 6c a2 ff ff 8b e8 85 ed 0f 84 c2 00 00 00 8b 55
00751250: 00 8b 42 10 53 56 57 8b cd ff d0 0f 57 c0 8d 9d
00751260: e0 00 00 00 3b 1b f3 0f 11 44 24 10 8b fb 0f 84
00751270: 8b 00 00 00 8b 4f 04 8b 71 08 8b 16 f3 0f 10 44
00751280: 24 24 f3 0f 5c 44 24 10 8b 82 2c 01 00 00 8b ce
00751290: f3 0f 11 44 24 14 ff d0 d9 5c 24 18 f3 0f 10 44
007512a0: 24 18 0f 2f 44 24 14 72 3f 8b 16 8b 42 48 8b ce
007512b0: ff d0 85 c0 74 3e 8b 3e d9 44 24 14 8b 57 48 6a
007512c0: 01 51 8b ce d9 1c 24 ff d2 83 e8 01 50 8b 87 ec
007512d0: 00 00 00 8b ce ff d0 8b 55 00 8b 42 14 5f 5e 5b
007512e0: 8b cd 5d 83 c4 0c ff e0 f3 0f 58 44 24 10 f3 0f
007512f0: 11 44 24 10 8b 7f 04 3b 3b 0f 85 75 ff ff ff 8b
00751300: 55 00 8b 42 14 5f 5e 5b 8b cd 5d 83 c4 0c ff e0
00751310: 5d 83 c4 0c c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00751230 <.text+0x350230>:
  751230:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  751234:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75123a:	83 ec 0c                                        	sub    esp,0xc
  75123d:	55                                              	push   ebp
  75123e:	50                                              	push   eax
  75123f:	e8 6c a2 ff ff                                  	call   0x74b4b0
  751244:	8b e8                                           	mov    ebp,eax
  751246:	85 ed                                           	test   ebp,ebp
  751248:	0f 84 c2 00 00 00                               	je     0x751310
  75124e:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  751251:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  751254:	53                                              	push   ebx
  751255:	56                                              	push   esi
  751256:	57                                              	push   edi
  751257:	8b cd                                           	mov    ecx,ebp
  751259:	ff d0                                           	call   eax
  75125b:	0f 57 c0                                        	xorps  xmm0,xmm0
  75125e:	8d 9d e0 00 00 00                               	lea    ebx,[ebp+0xe0]
  751264:	3b 1b                                           	cmp    ebx,DWORD PTR [ebx]
  751266:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  75126c:	8b fb                                           	mov    edi,ebx
  75126e:	0f 84 8b 00 00 00                               	je     0x7512ff
  751274:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
  751277:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  75127a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75127c:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [esp+0x24]
  751282:	f3 0f 5c 44 24 10                               	subss  xmm0,DWORD PTR [esp+0x10]
  751288:	8b 82 2c 01 00 00                               	mov    eax,DWORD PTR [edx+0x12c]
  75128e:	8b ce                                           	mov    ecx,esi
  751290:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  751296:	ff d0                                           	call   eax
  751298:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  75129c:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
  7512a2:	0f 2f 44 24 14                                  	comiss xmm0,DWORD PTR [esp+0x14]
  7512a7:	72 3f                                           	jb     0x7512e8
  7512a9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7512ab:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  7512ae:	8b ce                                           	mov    ecx,esi
  7512b0:	ff d0                                           	call   eax
  7512b2:	85 c0                                           	test   eax,eax
  7512b4:	74 3e                                           	je     0x7512f4
  7512b6:	8b 3e                                           	mov    edi,DWORD PTR [esi]
  7512b8:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  7512bc:	8b 57 48                                        	mov    edx,DWORD PTR [edi+0x48]
  7512bf:	6a 01                                           	push   0x1
  7512c1:	51                                              	push   ecx
  7512c2:	8b ce                                           	mov    ecx,esi
  7512c4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7512c7:	ff d2                                           	call   edx
  7512c9:	83 e8 01                                        	sub    eax,0x1
  7512cc:	50                                              	push   eax
  7512cd:	8b 87 ec 00 00 00                               	mov    eax,DWORD PTR [edi+0xec]
  7512d3:	8b ce                                           	mov    ecx,esi
  7512d5:	ff d0                                           	call   eax
  7512d7:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  7512da:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7512dd:	5f                                              	pop    edi
  7512de:	5e                                              	pop    esi
  7512df:	5b                                              	pop    ebx
  7512e0:	8b cd                                           	mov    ecx,ebp
  7512e2:	5d                                              	pop    ebp
  7512e3:	83 c4 0c                                        	add    esp,0xc
  7512e6:	ff e0                                           	jmp    eax
  7512e8:	f3 0f 58 44 24 10                               	addss  xmm0,DWORD PTR [esp+0x10]
  7512ee:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  7512f4:	8b 7f 04                                        	mov    edi,DWORD PTR [edi+0x4]
  7512f7:	3b 3b                                           	cmp    edi,DWORD PTR [ebx]
  7512f9:	0f 85 75 ff ff ff                               	jne    0x751274
  7512ff:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  751302:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  751305:	5f                                              	pop    edi
  751306:	5e                                              	pop    esi
  751307:	5b                                              	pop    ebx
  751308:	8b cd                                           	mov    ecx,ebp
  75130a:	5d                                              	pop    ebp
  75130b:	83 c4 0c                                        	add    esp,0xc
  75130e:	ff e0                                           	jmp    eax
  751310:	5d                                              	pop    ebp
  751311:	83 c4 0c                                        	add    esp,0xc
  751314:	c3                                              	ret
  751315:	cc                                              	int3
  751316:	cc                                              	int3
  751317:	cc                                              	int3
  751318:	cc                                              	int3
  751319:	cc                                              	int3
  75131a:	cc                                              	int3
  75131b:	cc                                              	int3
  75131c:	cc                                              	int3
  75131d:	cc                                              	int3
  75131e:	cc                                              	int3
  75131f:	cc                                              	int3
