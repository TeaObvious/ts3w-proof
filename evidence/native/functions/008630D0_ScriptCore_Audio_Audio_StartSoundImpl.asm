# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008630d0 (ScriptCore.Audio::Audio_StartSoundImpl)
Paired Ghidra pseudocode: 008630D0_ScriptCore_Audio_Audio_StartSoundImpl.c
Window: [0x008630d0, 0x00863190) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00863190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008630d0: a1 40 9c 1d 01 81 ec 80 00 00 00 85 c0 56 0f 84
008630e0: 9f 00 00 00 8d b0 30 84 fd ff 85 f6 0f 84 91 00
008630f0: 00 00 53 55 57 e8 96 62 f0 ff 8b 8c 24 94 00 00
00863100: 00 8b 10 8b 52 58 6a ff 68 80 00 00 00 51 8b c8
00863110: ff d2 50 8d 44 24 1c 50 e8 83 ae c9 ff 8b 16 8b
00863120: 92 18 01 00 00 83 c4 10 8d 44 24 10 50 8b ce ff
00863130: d2 8b d8 8b 06 8b ea 8b 50 28 8b ce ff d2 8b f8
00863140: 8b 06 8b 50 44 68 65 53 47 03 8b ce ff d2 8b 06
00863150: 8b 50 50 55 53 68 81 53 47 03 8b ce ff d2 8b 06
00863160: 8b 50 4c 57 68 85 53 47 03 8b ce ff d2 8b 06 8b
00863170: 50 68 8b ce ff d2 8b c7 5f 5d 5b 5e 81 c4 80 00
00863180: 00 00 c3 33 c0 5e 81 c4 80 00 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
008630d0 <.text+0x4620d0>:
  8630d0:	a1 40 9c 1d 01                                  	mov    eax,ds:0x11d9c40
  8630d5:	81 ec 80 00 00 00                               	sub    esp,0x80
  8630db:	85 c0                                           	test   eax,eax
  8630dd:	56                                              	push   esi
  8630de:	0f 84 9f 00 00 00                               	je     0x863183
  8630e4:	8d b0 30 84 fd ff                               	lea    esi,[eax-0x27bd0]
  8630ea:	85 f6                                           	test   esi,esi
  8630ec:	0f 84 91 00 00 00                               	je     0x863183
  8630f2:	53                                              	push   ebx
  8630f3:	55                                              	push   ebp
  8630f4:	57                                              	push   edi
  8630f5:	e8 96 62 f0 ff                                  	call   0x769390
  8630fa:	8b 8c 24 94 00 00 00                            	mov    ecx,DWORD PTR [esp+0x94]
  863101:	8b 10                                           	mov    edx,DWORD PTR [eax]
  863103:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  863106:	6a ff                                           	push   0xffffffff
  863108:	68 80 00 00 00                                  	push   0x80
  86310d:	51                                              	push   ecx
  86310e:	8b c8                                           	mov    ecx,eax
  863110:	ff d2                                           	call   edx
  863112:	50                                              	push   eax
  863113:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  863117:	50                                              	push   eax
  863118:	e8 83 ae c9 ff                                  	call   0x4fdfa0
  86311d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  86311f:	8b 92 18 01 00 00                               	mov    edx,DWORD PTR [edx+0x118]
  863125:	83 c4 10                                        	add    esp,0x10
  863128:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  86312c:	50                                              	push   eax
  86312d:	8b ce                                           	mov    ecx,esi
  86312f:	ff d2                                           	call   edx
  863131:	8b d8                                           	mov    ebx,eax
  863133:	8b 06                                           	mov    eax,DWORD PTR [esi]
  863135:	8b ea                                           	mov    ebp,edx
  863137:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  86313a:	8b ce                                           	mov    ecx,esi
  86313c:	ff d2                                           	call   edx
  86313e:	8b f8                                           	mov    edi,eax
  863140:	8b 06                                           	mov    eax,DWORD PTR [esi]
  863142:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  863145:	68 65 53 47 03                                  	push   0x3475365
  86314a:	8b ce                                           	mov    ecx,esi
  86314c:	ff d2                                           	call   edx
  86314e:	8b 06                                           	mov    eax,DWORD PTR [esi]
  863150:	8b 50 50                                        	mov    edx,DWORD PTR [eax+0x50]
  863153:	55                                              	push   ebp
  863154:	53                                              	push   ebx
  863155:	68 81 53 47 03                                  	push   0x3475381
  86315a:	8b ce                                           	mov    ecx,esi
  86315c:	ff d2                                           	call   edx
  86315e:	8b 06                                           	mov    eax,DWORD PTR [esi]
  863160:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  863163:	57                                              	push   edi
  863164:	68 85 53 47 03                                  	push   0x3475385
  863169:	8b ce                                           	mov    ecx,esi
  86316b:	ff d2                                           	call   edx
  86316d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  86316f:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  863172:	8b ce                                           	mov    ecx,esi
  863174:	ff d2                                           	call   edx
  863176:	8b c7                                           	mov    eax,edi
  863178:	5f                                              	pop    edi
  863179:	5d                                              	pop    ebp
  86317a:	5b                                              	pop    ebx
  86317b:	5e                                              	pop    esi
  86317c:	81 c4 80 00 00 00                               	add    esp,0x80
  863182:	c3                                              	ret
  863183:	33 c0                                           	xor    eax,eax
  863185:	5e                                              	pop    esi
  863186:	81 c4 80 00 00 00                               	add    esp,0x80
  86318c:	c3                                              	ret
  86318d:	cc                                              	int3
  86318e:	cc                                              	int3
  86318f:	cc                                              	int3
