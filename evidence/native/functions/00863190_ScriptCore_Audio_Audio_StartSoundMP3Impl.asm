# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00863190 (ScriptCore.Audio::Audio_StartSoundMP3Impl)
Paired Ghidra pseudocode: 00863190_ScriptCore_Audio_Audio_StartSoundMP3Impl.c
Window: [0x00863190, 0x00863270) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00863270
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00863190: a1 40 9c 1d 01 81 ec 08 02 00 00 85 c0 56 0f 84
008631a0: bf 00 00 00 8d b0 30 84 fd ff 85 f6 0f 84 b1 00
008631b0: 00 00 53 55 57 e8 d6 61 f0 ff 8b 8c 24 1c 02 00
008631c0: 00 8b 10 8b 52 58 68 04 01 00 00 51 8b c8 ff d2
008631d0: 50 8d 44 24 18 50 e8 75 c3 c9 ff 8b 16 8b 82 18
008631e0: 01 00 00 83 c4 0c 68 04 8f 02 01 8b ce 66 c7 84
008631f0: 24 1a 02 00 00 00 00 ff d0 8b ea 8b 16 8b d8 8b
00863200: 42 28 8b ce ff d0 8b 16 8b f8 8b 42 44 68 65 53
00863210: 47 03 8b ce ff d0 8b 16 8b 42 50 55 53 68 81 53
00863220: 47 03 8b ce ff d0 8b 16 8b 42 4c 57 68 85 53 47
00863230: 03 8b ce ff d0 8b 16 8b 52 5c 68 08 02 00 00 8d
00863240: 44 24 14 50 68 2e 37 a9 9f 8b ce ff d2 8b 06 8b
00863250: 50 68 8b ce ff d2 8b c7 5f 5d 5b 5e 81 c4 08 02
00863260: 00 00 c3 33 c0 5e 81 c4 08 02 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
00863190 <.text+0x462190>:
  863190:	a1 40 9c 1d 01                                  	mov    eax,ds:0x11d9c40
  863195:	81 ec 08 02 00 00                               	sub    esp,0x208
  86319b:	85 c0                                           	test   eax,eax
  86319d:	56                                              	push   esi
  86319e:	0f 84 bf 00 00 00                               	je     0x863263
  8631a4:	8d b0 30 84 fd ff                               	lea    esi,[eax-0x27bd0]
  8631aa:	85 f6                                           	test   esi,esi
  8631ac:	0f 84 b1 00 00 00                               	je     0x863263
  8631b2:	53                                              	push   ebx
  8631b3:	55                                              	push   ebp
  8631b4:	57                                              	push   edi
  8631b5:	e8 d6 61 f0 ff                                  	call   0x769390
  8631ba:	8b 8c 24 1c 02 00 00                            	mov    ecx,DWORD PTR [esp+0x21c]
  8631c1:	8b 10                                           	mov    edx,DWORD PTR [eax]
  8631c3:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  8631c6:	68 04 01 00 00                                  	push   0x104
  8631cb:	51                                              	push   ecx
  8631cc:	8b c8                                           	mov    ecx,eax
  8631ce:	ff d2                                           	call   edx
  8631d0:	50                                              	push   eax
  8631d1:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  8631d5:	50                                              	push   eax
  8631d6:	e8 75 c3 c9 ff                                  	call   0x4ff550
  8631db:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8631dd:	8b 82 18 01 00 00                               	mov    eax,DWORD PTR [edx+0x118]
  8631e3:	83 c4 0c                                        	add    esp,0xc
  8631e6:	68 04 8f 02 01                                  	push   0x1028f04
  8631eb:	8b ce                                           	mov    ecx,esi
  8631ed:	66 c7 84 24 1a 02 00 00 00 00                   	mov    WORD PTR [esp+0x21a],0x0
  8631f7:	ff d0                                           	call   eax
  8631f9:	8b ea                                           	mov    ebp,edx
  8631fb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8631fd:	8b d8                                           	mov    ebx,eax
  8631ff:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
  863202:	8b ce                                           	mov    ecx,esi
  863204:	ff d0                                           	call   eax
  863206:	8b 16                                           	mov    edx,DWORD PTR [esi]
  863208:	8b f8                                           	mov    edi,eax
  86320a:	8b 42 44                                        	mov    eax,DWORD PTR [edx+0x44]
  86320d:	68 65 53 47 03                                  	push   0x3475365
  863212:	8b ce                                           	mov    ecx,esi
  863214:	ff d0                                           	call   eax
  863216:	8b 16                                           	mov    edx,DWORD PTR [esi]
  863218:	8b 42 50                                        	mov    eax,DWORD PTR [edx+0x50]
  86321b:	55                                              	push   ebp
  86321c:	53                                              	push   ebx
  86321d:	68 81 53 47 03                                  	push   0x3475381
  863222:	8b ce                                           	mov    ecx,esi
  863224:	ff d0                                           	call   eax
  863226:	8b 16                                           	mov    edx,DWORD PTR [esi]
  863228:	8b 42 4c                                        	mov    eax,DWORD PTR [edx+0x4c]
  86322b:	57                                              	push   edi
  86322c:	68 85 53 47 03                                  	push   0x3475385
  863231:	8b ce                                           	mov    ecx,esi
  863233:	ff d0                                           	call   eax
  863235:	8b 16                                           	mov    edx,DWORD PTR [esi]
  863237:	8b 52 5c                                        	mov    edx,DWORD PTR [edx+0x5c]
  86323a:	68 08 02 00 00                                  	push   0x208
  86323f:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  863243:	50                                              	push   eax
  863244:	68 2e 37 a9 9f                                  	push   0x9fa9372e
  863249:	8b ce                                           	mov    ecx,esi
  86324b:	ff d2                                           	call   edx
  86324d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  86324f:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  863252:	8b ce                                           	mov    ecx,esi
  863254:	ff d2                                           	call   edx
  863256:	8b c7                                           	mov    eax,edi
  863258:	5f                                              	pop    edi
  863259:	5d                                              	pop    ebp
  86325a:	5b                                              	pop    ebx
  86325b:	5e                                              	pop    esi
  86325c:	81 c4 08 02 00 00                               	add    esp,0x208
  863262:	c3                                              	ret
  863263:	33 c0                                           	xor    eax,eax
  863265:	5e                                              	pop    esi
  863266:	81 c4 08 02 00 00                               	add    esp,0x208
  86326c:	c3                                              	ret
  86326d:	cc                                              	int3
  86326e:	cc                                              	int3
  86326f:	cc                                              	int3
