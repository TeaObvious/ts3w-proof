# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00864100 (ScriptCore.Audio::Audio_StartSoundArrayImpl)
Paired Ghidra pseudocode: 00864100_ScriptCore_Audio_Audio_StartSoundArrayImpl.c
Window: [0x00864100, 0x00864300) (512 bytes; stop exclusive)
Next defined Ghidra entry: 0x00864300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00864100: a1 40 9c 1d 01 83 ec 3c 53 55 33 db 3b c3 56 57
00864110: 74 08 8d b0 30 84 fd ff eb 02 33 f6 e8 4f 34 0d
00864120: 00 8b e8 e8 68 52 f0 ff 3b f3 8b f8 0f 84 4e 01
00864130: 00 00 3b eb 0f 84 46 01 00 00 3b fb 0f 84 3e 01
00864140: 00 00 8b 4c 24 50 8b 07 8b 50 58 51 8b cf ff d2
00864150: 50 8d 4c 24 30 89 5c 24 30 89 5c 24 34 89 5c 24
00864160: 38 c7 44 24 3c a4 8f 02 01 e8 22 74 ba ff 8b 4c
00864170: 24 54 8b 07 8b 50 58 51 8b cf ff d2 50 8d 4c 24
00864180: 20 89 5c 24 20 89 5c 24 24 89 5c 24 28 c7 44 24
00864190: 2c 90 8f 02 01 e8 f6 73 ba ff 8b 07 8d 4c 24 14
008641a0: 51 8b 4c 24 5c 8d 54 24 14 52 8b 50 68 51 8b cf
008641b0: 89 5c 24 1c 89 5c 24 20 ff d2 8d 44 24 2c 50 8d
008641c0: 4c 24 40 51 e8 27 fc c8 ff 8b 16 8b 42 28 8b 7c
008641d0: 24 44 83 c4 08 8b ce ff d0 8b 16 89 44 24 18 8b
008641e0: 42 44 68 be e8 29 0a 8b ce ff d0 8b 16 8b 42 54
008641f0: 53 57 68 7e 53 47 03 8b ce ff d0 8b 4c 24 10 8b
00864200: 44 24 14 8b 7c 24 18 55 56 51 8d 54 24 28 52 50
00864210: 57 e8 6a fb ff ff 8b 16 83 c4 18 84 c0 8b ce 75
00864220: 69 8b 42 6c ff d0 8b 4c 24 44 8b 44 24 3c 2b c8
00864230: 83 f9 01 7e 0d 3b c3 74 09 50 e8 a1 02 c8 ff 83
00864240: c4 04 8b 54 24 24 8b 44 24 1c 2b d0 83 e2 fe 83
00864250: fa 02 7e 0d 3b c3 74 09 50 e8 82 02 c8 ff 83 c4
00864260: 04 8b 4c 24 34 8b 44 24 2c 2b c8 83 e1 fe 83 f9
00864270: 02 7e 0d 3b c3 74 09 50 e8 63 02 c8 ff 83 c4 04
00864280: 5f 5e 5d 33 c0 5b 83 c4 3c c3 8b 42 68 ff d0 8b
00864290: 4c 24 44 8b 44 24 3c 2b c8 83 f9 01 7e 0d 3b c3
008642a0: 74 09 50 e8 38 02 c8 ff 83 c4 04 8b 54 24 24 8b
008642b0: 44 24 1c 2b d0 83 e2 fe 83 fa 02 7e 0d 3b c3 74
008642c0: 09 50 e8 19 02 c8 ff 83 c4 04 8b 4c 24 34 8b 44
008642d0: 24 2c 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c3 74 09
008642e0: 50 e8 fa 01 c8 ff 83 c4 04 8b c7 5f 5e 5d 5b 83
008642f0: c4 3c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00864100 <.text+0x463100>:
  864100:	a1 40 9c 1d 01                                  	mov    eax,ds:0x11d9c40
  864105:	83 ec 3c                                        	sub    esp,0x3c
  864108:	53                                              	push   ebx
  864109:	55                                              	push   ebp
  86410a:	33 db                                           	xor    ebx,ebx
  86410c:	3b c3                                           	cmp    eax,ebx
  86410e:	56                                              	push   esi
  86410f:	57                                              	push   edi
  864110:	74 08                                           	je     0x86411a
  864112:	8d b0 30 84 fd ff                               	lea    esi,[eax-0x27bd0]
  864118:	eb 02                                           	jmp    0x86411c
  86411a:	33 f6                                           	xor    esi,esi
  86411c:	e8 4f 34 0d 00                                  	call   0x937570
  864121:	8b e8                                           	mov    ebp,eax
  864123:	e8 68 52 f0 ff                                  	call   0x769390
  864128:	3b f3                                           	cmp    esi,ebx
  86412a:	8b f8                                           	mov    edi,eax
  86412c:	0f 84 4e 01 00 00                               	je     0x864280
  864132:	3b eb                                           	cmp    ebp,ebx
  864134:	0f 84 46 01 00 00                               	je     0x864280
  86413a:	3b fb                                           	cmp    edi,ebx
  86413c:	0f 84 3e 01 00 00                               	je     0x864280
  864142:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
  864146:	8b 07                                           	mov    eax,DWORD PTR [edi]
  864148:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  86414b:	51                                              	push   ecx
  86414c:	8b cf                                           	mov    ecx,edi
  86414e:	ff d2                                           	call   edx
  864150:	50                                              	push   eax
  864151:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  864155:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
  864159:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
  86415d:	89 5c 24 38                                     	mov    DWORD PTR [esp+0x38],ebx
  864161:	c7 44 24 3c a4 8f 02 01                         	mov    DWORD PTR [esp+0x3c],0x1028fa4
  864169:	e8 22 74 ba ff                                  	call   0x40b590
  86416e:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
  864172:	8b 07                                           	mov    eax,DWORD PTR [edi]
  864174:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  864177:	51                                              	push   ecx
  864178:	8b cf                                           	mov    ecx,edi
  86417a:	ff d2                                           	call   edx
  86417c:	50                                              	push   eax
  86417d:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  864181:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  864185:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  864189:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  86418d:	c7 44 24 2c 90 8f 02 01                         	mov    DWORD PTR [esp+0x2c],0x1028f90
  864195:	e8 f6 73 ba ff                                  	call   0x40b590
  86419a:	8b 07                                           	mov    eax,DWORD PTR [edi]
  86419c:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  8641a0:	51                                              	push   ecx
  8641a1:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
  8641a5:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  8641a9:	52                                              	push   edx
  8641aa:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  8641ad:	51                                              	push   ecx
  8641ae:	8b cf                                           	mov    ecx,edi
  8641b0:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  8641b4:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  8641b8:	ff d2                                           	call   edx
  8641ba:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  8641be:	50                                              	push   eax
  8641bf:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  8641c3:	51                                              	push   ecx
  8641c4:	e8 27 fc c8 ff                                  	call   0x4f3df0
  8641c9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8641cb:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
  8641ce:	8b 7c 24 44                                     	mov    edi,DWORD PTR [esp+0x44]
  8641d2:	83 c4 08                                        	add    esp,0x8
  8641d5:	8b ce                                           	mov    ecx,esi
  8641d7:	ff d0                                           	call   eax
  8641d9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8641db:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  8641df:	8b 42 44                                        	mov    eax,DWORD PTR [edx+0x44]
  8641e2:	68 be e8 29 0a                                  	push   0xa29e8be
  8641e7:	8b ce                                           	mov    ecx,esi
  8641e9:	ff d0                                           	call   eax
  8641eb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8641ed:	8b 42 54                                        	mov    eax,DWORD PTR [edx+0x54]
  8641f0:	53                                              	push   ebx
  8641f1:	57                                              	push   edi
  8641f2:	68 7e 53 47 03                                  	push   0x347537e
  8641f7:	8b ce                                           	mov    ecx,esi
  8641f9:	ff d0                                           	call   eax
  8641fb:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  8641ff:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  864203:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
  864207:	55                                              	push   ebp
  864208:	56                                              	push   esi
  864209:	51                                              	push   ecx
  86420a:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  86420e:	52                                              	push   edx
  86420f:	50                                              	push   eax
  864210:	57                                              	push   edi
  864211:	e8 6a fb ff ff                                  	call   0x863d80
  864216:	8b 16                                           	mov    edx,DWORD PTR [esi]
  864218:	83 c4 18                                        	add    esp,0x18
  86421b:	84 c0                                           	test   al,al
  86421d:	8b ce                                           	mov    ecx,esi
  86421f:	75 69                                           	jne    0x86428a
  864221:	8b 42 6c                                        	mov    eax,DWORD PTR [edx+0x6c]
  864224:	ff d0                                           	call   eax
  864226:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  86422a:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  86422e:	2b c8                                           	sub    ecx,eax
  864230:	83 f9 01                                        	cmp    ecx,0x1
  864233:	7e 0d                                           	jle    0x864242
  864235:	3b c3                                           	cmp    eax,ebx
  864237:	74 09                                           	je     0x864242
  864239:	50                                              	push   eax
  86423a:	e8 a1 02 c8 ff                                  	call   0x4e44e0
  86423f:	83 c4 04                                        	add    esp,0x4
  864242:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  864246:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  86424a:	2b d0                                           	sub    edx,eax
  86424c:	83 e2 fe                                        	and    edx,0xfffffffe
  86424f:	83 fa 02                                        	cmp    edx,0x2
  864252:	7e 0d                                           	jle    0x864261
  864254:	3b c3                                           	cmp    eax,ebx
  864256:	74 09                                           	je     0x864261
  864258:	50                                              	push   eax
  864259:	e8 82 02 c8 ff                                  	call   0x4e44e0
  86425e:	83 c4 04                                        	add    esp,0x4
  864261:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  864265:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  864269:	2b c8                                           	sub    ecx,eax
  86426b:	83 e1 fe                                        	and    ecx,0xfffffffe
  86426e:	83 f9 02                                        	cmp    ecx,0x2
  864271:	7e 0d                                           	jle    0x864280
  864273:	3b c3                                           	cmp    eax,ebx
  864275:	74 09                                           	je     0x864280
  864277:	50                                              	push   eax
  864278:	e8 63 02 c8 ff                                  	call   0x4e44e0
  86427d:	83 c4 04                                        	add    esp,0x4
  864280:	5f                                              	pop    edi
  864281:	5e                                              	pop    esi
  864282:	5d                                              	pop    ebp
  864283:	33 c0                                           	xor    eax,eax
  864285:	5b                                              	pop    ebx
  864286:	83 c4 3c                                        	add    esp,0x3c
  864289:	c3                                              	ret
  86428a:	8b 42 68                                        	mov    eax,DWORD PTR [edx+0x68]
  86428d:	ff d0                                           	call   eax
  86428f:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  864293:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  864297:	2b c8                                           	sub    ecx,eax
  864299:	83 f9 01                                        	cmp    ecx,0x1
  86429c:	7e 0d                                           	jle    0x8642ab
  86429e:	3b c3                                           	cmp    eax,ebx
  8642a0:	74 09                                           	je     0x8642ab
  8642a2:	50                                              	push   eax
  8642a3:	e8 38 02 c8 ff                                  	call   0x4e44e0
  8642a8:	83 c4 04                                        	add    esp,0x4
  8642ab:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  8642af:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  8642b3:	2b d0                                           	sub    edx,eax
  8642b5:	83 e2 fe                                        	and    edx,0xfffffffe
  8642b8:	83 fa 02                                        	cmp    edx,0x2
  8642bb:	7e 0d                                           	jle    0x8642ca
  8642bd:	3b c3                                           	cmp    eax,ebx
  8642bf:	74 09                                           	je     0x8642ca
  8642c1:	50                                              	push   eax
  8642c2:	e8 19 02 c8 ff                                  	call   0x4e44e0
  8642c7:	83 c4 04                                        	add    esp,0x4
  8642ca:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  8642ce:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  8642d2:	2b c8                                           	sub    ecx,eax
  8642d4:	83 e1 fe                                        	and    ecx,0xfffffffe
  8642d7:	83 f9 02                                        	cmp    ecx,0x2
  8642da:	7e 0d                                           	jle    0x8642e9
  8642dc:	3b c3                                           	cmp    eax,ebx
  8642de:	74 09                                           	je     0x8642e9
  8642e0:	50                                              	push   eax
  8642e1:	e8 fa 01 c8 ff                                  	call   0x4e44e0
  8642e6:	83 c4 04                                        	add    esp,0x4
  8642e9:	8b c7                                           	mov    eax,edi
  8642eb:	5f                                              	pop    edi
  8642ec:	5e                                              	pop    esi
  8642ed:	5d                                              	pop    ebp
  8642ee:	5b                                              	pop    ebx
  8642ef:	83 c4 3c                                        	add    esp,0x3c
  8642f2:	c3                                              	ret
  8642f3:	cc                                              	int3
  8642f4:	cc                                              	int3
  8642f5:	cc                                              	int3
  8642f6:	cc                                              	int3
  8642f7:	cc                                              	int3
  8642f8:	cc                                              	int3
  8642f9:	cc                                              	int3
  8642fa:	cc                                              	int3
  8642fb:	cc                                              	int3
  8642fc:	cc                                              	int3
  8642fd:	cc                                              	int3
  8642fe:	cc                                              	int3
  8642ff:	cc                                              	int3
