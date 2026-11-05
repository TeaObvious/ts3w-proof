# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00863270 (ScriptCore.Audio::Audio_CreateSoundImpl)
Paired Ghidra pseudocode: 00863270_ScriptCore_Audio_Audio_CreateSoundImpl.c
Window: [0x00863270, 0x00863330) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00863330
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00863270: a1 40 9c 1d 01 81 ec 80 00 00 00 85 c0 56 0f 84
00863280: 9f 00 00 00 8d b0 30 84 fd ff 85 f6 0f 84 91 00
00863290: 00 00 53 55 57 e8 f6 60 f0 ff 8b 8c 24 94 00 00
008632a0: 00 8b 10 8b 52 58 6a ff 68 80 00 00 00 51 8b c8
008632b0: ff d2 50 8d 44 24 1c 50 e8 e3 ac c9 ff 8b 16 8b
008632c0: 92 18 01 00 00 83 c4 10 8d 44 24 10 50 8b ce ff
008632d0: d2 8b d8 8b 06 8b ea 8b 50 28 8b ce ff d2 8b f8
008632e0: 8b 06 8b 50 44 68 31 53 47 03 8b ce ff d2 8b 06
008632f0: 8b 50 50 55 53 68 81 53 47 03 8b ce ff d2 8b 06
00863300: 8b 50 4c 57 68 85 53 47 03 8b ce ff d2 8b 06 8b
00863310: 50 68 8b ce ff d2 8b c7 5f 5d 5b 5e 81 c4 80 00
00863320: 00 00 c3 33 c0 5e 81 c4 80 00 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
00863270 <.text+0x462270>:
  863270:	a1 40 9c 1d 01                                  	mov    eax,ds:0x11d9c40
  863275:	81 ec 80 00 00 00                               	sub    esp,0x80
  86327b:	85 c0                                           	test   eax,eax
  86327d:	56                                              	push   esi
  86327e:	0f 84 9f 00 00 00                               	je     0x863323
  863284:	8d b0 30 84 fd ff                               	lea    esi,[eax-0x27bd0]
  86328a:	85 f6                                           	test   esi,esi
  86328c:	0f 84 91 00 00 00                               	je     0x863323
  863292:	53                                              	push   ebx
  863293:	55                                              	push   ebp
  863294:	57                                              	push   edi
  863295:	e8 f6 60 f0 ff                                  	call   0x769390
  86329a:	8b 8c 24 94 00 00 00                            	mov    ecx,DWORD PTR [esp+0x94]
  8632a1:	8b 10                                           	mov    edx,DWORD PTR [eax]
  8632a3:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  8632a6:	6a ff                                           	push   0xffffffff
  8632a8:	68 80 00 00 00                                  	push   0x80
  8632ad:	51                                              	push   ecx
  8632ae:	8b c8                                           	mov    ecx,eax
  8632b0:	ff d2                                           	call   edx
  8632b2:	50                                              	push   eax
  8632b3:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  8632b7:	50                                              	push   eax
  8632b8:	e8 e3 ac c9 ff                                  	call   0x4fdfa0
  8632bd:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8632bf:	8b 92 18 01 00 00                               	mov    edx,DWORD PTR [edx+0x118]
  8632c5:	83 c4 10                                        	add    esp,0x10
  8632c8:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  8632cc:	50                                              	push   eax
  8632cd:	8b ce                                           	mov    ecx,esi
  8632cf:	ff d2                                           	call   edx
  8632d1:	8b d8                                           	mov    ebx,eax
  8632d3:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8632d5:	8b ea                                           	mov    ebp,edx
  8632d7:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  8632da:	8b ce                                           	mov    ecx,esi
  8632dc:	ff d2                                           	call   edx
  8632de:	8b f8                                           	mov    edi,eax
  8632e0:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8632e2:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  8632e5:	68 31 53 47 03                                  	push   0x3475331
  8632ea:	8b ce                                           	mov    ecx,esi
  8632ec:	ff d2                                           	call   edx
  8632ee:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8632f0:	8b 50 50                                        	mov    edx,DWORD PTR [eax+0x50]
  8632f3:	55                                              	push   ebp
  8632f4:	53                                              	push   ebx
  8632f5:	68 81 53 47 03                                  	push   0x3475381
  8632fa:	8b ce                                           	mov    ecx,esi
  8632fc:	ff d2                                           	call   edx
  8632fe:	8b 06                                           	mov    eax,DWORD PTR [esi]
  863300:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  863303:	57                                              	push   edi
  863304:	68 85 53 47 03                                  	push   0x3475385
  863309:	8b ce                                           	mov    ecx,esi
  86330b:	ff d2                                           	call   edx
  86330d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  86330f:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  863312:	8b ce                                           	mov    ecx,esi
  863314:	ff d2                                           	call   edx
  863316:	8b c7                                           	mov    eax,edi
  863318:	5f                                              	pop    edi
  863319:	5d                                              	pop    ebp
  86331a:	5b                                              	pop    ebx
  86331b:	5e                                              	pop    esi
  86331c:	81 c4 80 00 00 00                               	add    esp,0x80
  863322:	c3                                              	ret
  863323:	33 c0                                           	xor    eax,eax
  863325:	5e                                              	pop    esi
  863326:	81 c4 80 00 00 00                               	add    esp,0x80
  86332c:	c3                                              	ret
  86332d:	cc                                              	int3
  86332e:	cc                                              	int3
  86332f:	cc                                              	int3
