# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007741c0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeDescription)
Paired Ghidra pseudocode: 007741C0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgeDescription.c
Window: [0x007741c0, 0x00774320) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007741c0: 83 ec 34 56 c7 44 24 04 00 00 00 00 e8 bf 51 ff
007741d0: ff 8b f0 85 f6 0f 84 2e 01 00 00 8b 4c 24 3c 8b
007741e0: 06 8b 50 58 53 57 51 8b ce ff d2 6a 00 6a ff 50
007741f0: 8d 44 24 3c bf 54 8e 1c 01 bb 55 8e 1c 01 50 c7
00774200: 44 24 2c bc 9c 00 01 89 7c 24 20 89 7c 24 24 89
00774210: 5c 24 28 e8 a8 fa d7 ff 8d 4c 24 20 83 c4 10 3b
00774220: c1 74 14 8b 50 04 8b 00 52 50 e8 e1 16 c9 ff 8b
00774230: 5c 24 18 8b 7c 24 10 8b 4c 24 38 8b 44 24 30 2b
00774240: c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 90 02 d7 ff
00774250: 83 c4 04 57 e8 17 09 2b 00 83 c4 04 85 c0 0f 84
00774260: 86 00 00 00 6a 00 6a ff 50 8d 54 24 3c 52 e8 dd
00774270: f8 d7 ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d
00774280: 4c 24 24 c7 44 24 24 6c 88 00 01 66 c7 44 24 2e
00774290: 13 00 66 c7 44 24 2c 0b 00 e8 22 17 d8 ff 8b 4c
007742a0: 24 38 8b 44 24 30 2b c8 83 e1 fe 83 f9 02 7e 0d
007742b0: 85 c0 74 09 50 e8 26 02 d7 ff 83 c4 04 8b 16 8b
007742c0: 52 50 8d 44 24 0c 50 8d 4c 24 14 51 8b ce ff d2
007742d0: f6 44 24 18 04 c7 44 24 10 f4 a6 fb 00 74 0b 6a
007742e0: 00 8d 4c 24 14 e8 76 14 d8 ff 2b df 83 fb 01 7e
007742f0: 0d 85 ff 74 09 57 e8 e5 01 d7 ff 83 c4 04 8b 44
00774300: 24 0c 5f 5b 5e 83 c4 34 c3 8b 44 24 04 5e 83 c4
00774310: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007741c0 <.text+0x3731c0>:
  7741c0:	83 ec 34                                        	sub    esp,0x34
  7741c3:	56                                              	push   esi
  7741c4:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  7741cc:	e8 bf 51 ff ff                                  	call   0x769390
  7741d1:	8b f0                                           	mov    esi,eax
  7741d3:	85 f6                                           	test   esi,esi
  7741d5:	0f 84 2e 01 00 00                               	je     0x774309
  7741db:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  7741df:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7741e1:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  7741e4:	53                                              	push   ebx
  7741e5:	57                                              	push   edi
  7741e6:	51                                              	push   ecx
  7741e7:	8b ce                                           	mov    ecx,esi
  7741e9:	ff d2                                           	call   edx
  7741eb:	6a 00                                           	push   0x0
  7741ed:	6a ff                                           	push   0xffffffff
  7741ef:	50                                              	push   eax
  7741f0:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  7741f4:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  7741f9:	bb 55 8e 1c 01                                  	mov    ebx,0x11c8e55
  7741fe:	50                                              	push   eax
  7741ff:	c7 44 24 2c bc 9c 00 01                         	mov    DWORD PTR [esp+0x2c],0x1009cbc
  774207:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  77420b:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  77420f:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  774213:	e8 a8 fa d7 ff                                  	call   0x4f3cc0
  774218:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77421c:	83 c4 10                                        	add    esp,0x10
  77421f:	3b c1                                           	cmp    eax,ecx
  774221:	74 14                                           	je     0x774237
  774223:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  774226:	8b 00                                           	mov    eax,DWORD PTR [eax]
  774228:	52                                              	push   edx
  774229:	50                                              	push   eax
  77422a:	e8 e1 16 c9 ff                                  	call   0x405910
  77422f:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  774233:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  774237:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  77423b:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  77423f:	2b c8                                           	sub    ecx,eax
  774241:	83 f9 01                                        	cmp    ecx,0x1
  774244:	7e 0d                                           	jle    0x774253
  774246:	85 c0                                           	test   eax,eax
  774248:	74 09                                           	je     0x774253
  77424a:	50                                              	push   eax
  77424b:	e8 90 02 d7 ff                                  	call   0x4e44e0
  774250:	83 c4 04                                        	add    esp,0x4
  774253:	57                                              	push   edi
  774254:	e8 17 09 2b 00                                  	call   0xa24b70
  774259:	83 c4 04                                        	add    esp,0x4
  77425c:	85 c0                                           	test   eax,eax
  77425e:	0f 84 86 00 00 00                               	je     0x7742ea
  774264:	6a 00                                           	push   0x0
  774266:	6a ff                                           	push   0xffffffff
  774268:	50                                              	push   eax
  774269:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
  77426d:	52                                              	push   edx
  77426e:	e8 dd f8 d7 ff                                  	call   0x4f3b50
  774273:	83 c4 10                                        	add    esp,0x10
  774276:	6a 01                                           	push   0x1
  774278:	6a 10                                           	push   0x10
  77427a:	50                                              	push   eax
  77427b:	6a 09                                           	push   0x9
  77427d:	6a 13                                           	push   0x13
  77427f:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  774283:	c7 44 24 24 6c 88 00 01                         	mov    DWORD PTR [esp+0x24],0x100886c
  77428b:	66 c7 44 24 2e 13 00                            	mov    WORD PTR [esp+0x2e],0x13
  774292:	66 c7 44 24 2c 0b 00                            	mov    WORD PTR [esp+0x2c],0xb
  774299:	e8 22 17 d8 ff                                  	call   0x4f59c0
  77429e:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  7742a2:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  7742a6:	2b c8                                           	sub    ecx,eax
  7742a8:	83 e1 fe                                        	and    ecx,0xfffffffe
  7742ab:	83 f9 02                                        	cmp    ecx,0x2
  7742ae:	7e 0d                                           	jle    0x7742bd
  7742b0:	85 c0                                           	test   eax,eax
  7742b2:	74 09                                           	je     0x7742bd
  7742b4:	50                                              	push   eax
  7742b5:	e8 26 02 d7 ff                                  	call   0x4e44e0
  7742ba:	83 c4 04                                        	add    esp,0x4
  7742bd:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7742bf:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  7742c2:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  7742c6:	50                                              	push   eax
  7742c7:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7742cb:	51                                              	push   ecx
  7742cc:	8b ce                                           	mov    ecx,esi
  7742ce:	ff d2                                           	call   edx
  7742d0:	f6 44 24 18 04                                  	test   BYTE PTR [esp+0x18],0x4
  7742d5:	c7 44 24 10 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x10],0xfba6f4
  7742dd:	74 0b                                           	je     0x7742ea
  7742df:	6a 00                                           	push   0x0
  7742e1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7742e5:	e8 76 14 d8 ff                                  	call   0x4f5760
  7742ea:	2b df                                           	sub    ebx,edi
  7742ec:	83 fb 01                                        	cmp    ebx,0x1
  7742ef:	7e 0d                                           	jle    0x7742fe
  7742f1:	85 ff                                           	test   edi,edi
  7742f3:	74 09                                           	je     0x7742fe
  7742f5:	57                                              	push   edi
  7742f6:	e8 e5 01 d7 ff                                  	call   0x4e44e0
  7742fb:	83 c4 04                                        	add    esp,0x4
  7742fe:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  774302:	5f                                              	pop    edi
  774303:	5b                                              	pop    ebx
  774304:	5e                                              	pop    esi
  774305:	83 c4 34                                        	add    esp,0x34
  774308:	c3                                              	ret
  774309:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  77430d:	5e                                              	pop    esi
  77430e:	83 c4 34                                        	add    esp,0x34
  774311:	c3                                              	ret
  774312:	cc                                              	int3
  774313:	cc                                              	int3
  774314:	cc                                              	int3
  774315:	cc                                              	int3
  774316:	cc                                              	int3
  774317:	cc                                              	int3
  774318:	cc                                              	int3
  774319:	cc                                              	int3
  77431a:	cc                                              	int3
  77431b:	cc                                              	int3
  77431c:	cc                                              	int3
  77431d:	cc                                              	int3
  77431e:	cc                                              	int3
  77431f:	cc                                              	int3
