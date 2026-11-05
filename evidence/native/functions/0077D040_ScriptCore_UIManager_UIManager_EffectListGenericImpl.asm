# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077d040 (ScriptCore.UIManager::UIManager_EffectListGenericImpl)
Paired Ghidra pseudocode: 0077D040_ScriptCore_UIManager_UIManager_EffectListGenericImpl.c
Window: [0x0077d040, 0x0077d320) (736 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077d320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077d040: 53 55 56 57 e8 47 c3 fe ff 8b d8 8b 44 24 14 8b
0077d050: c8 81 e1 00 00 00 ff 81 f9 00 00 00 30 0f 85 8a
0077d060: 01 00 00 8b 13 50 8b 82 cc 00 00 00 8b cb ff d0
0077d070: 85 c0 0f 84 75 01 00 00 8b 10 8b c8 8b 42 0c 68
0077d080: 18 82 ee ee ff d0 8b f8 85 ff 0f 84 5d 01 00 00
0077d090: 8b 44 24 18 83 f8 05 0f 87 50 01 00 00 ff 24 85
0077d0a0: 00 d3 77 00 8b 13 8b 44 24 20 8b 92 cc 00 00 00
0077d0b0: 50 8b cb ff d2 50 e8 25 6c d9 ff 83 c4 04 85 c0
0077d0c0: 74 0d 8b 17 50 8b 82 08 01 00 00 8b cf ff d0 5f
0077d0d0: 5e 5d b8 01 00 00 00 5b c3 8b 13 8b 44 24 20 8b
0077d0e0: 92 cc 00 00 00 50 8b cb ff d2 50 e8 f0 6b d9 ff
0077d0f0: 83 c4 04 85 c0 74 0d 8b 17 50 8b 82 0c 01 00 00
0077d100: 8b cf ff d0 5f 5e 5d b8 01 00 00 00 5b c3 8b 17
0077d110: 8b 82 10 01 00 00 6a 00 8b cf ff d0 8b f0 85 f6
0077d120: 74 4c 8b 16 8b 42 0c 68 0b 63 2b 8f 8b ce 33 db
0077d130: ff d0 85 c0 75 12 8b 16 8b 42 0c 68 2f 9c 23 08
0077d140: 8b ce ff d0 85 c0 74 02 8b de 8b 17 8b 82 10 01
0077d150: 00 00 56 8b cf ff d0 85 db 8b f0 74 0d 8b 17 8b
0077d160: 82 0c 01 00 00 53 8b cf ff d0 85 f6 75 b4 5f 5e
0077d170: 5d b8 01 00 00 00 5b c3 8b 17 8b 82 10 01 00 00
0077d180: 6a 00 8b cf ff d0 8b f0 85 f6 c7 44 24 14 00 00
0077d190: 00 00 74 59 8b 16 8b 42 0c 68 0b 63 2b 8f 8b ce
0077d1a0: ff d0 8b e8 85 ed 74 0f 8b 4c 24 1c 3b 4c 24 14
0077d1b0: 74 42 83 44 24 14 01 8b 16 8b 42 0c 68 2f 9c 23
0077d1c0: 08 8b ce ff d0 8b e8 85 ed 74 0f 8b 4c 24 1c 3b
0077d1d0: 4c 24 14 74 1f 83 44 24 14 01 8b 17 8b 82 10 01
0077d1e0: 00 00 56 8b cf ff d0 8b f0 85 f6 75 a7 5f 5e 5d
0077d1f0: 33 c0 5b c3 8b 55 00 8b 02 8b cd ff d0 8b 13 8b
0077d200: 82 c8 00 00 00 6a 30 55 8b cb ff d0 5f 5e 5d 5b
0077d210: c3 8b 44 24 20 8b c8 81 e1 00 00 00 ff 81 f9 00
0077d220: 00 00 30 75 c8 8b 13 50 8b 82 cc 00 00 00 8b cb
0077d230: ff d0 8b f0 56 e8 76 ce ff ff 56 8b d8 e8 8e ce
0077d240: ff ff 8b 17 83 c4 08 8b e8 8b 82 10 01 00 00 6a
0077d250: 00 8b cf ff d0 8b f0 85 f6 74 92 8b 16 8b 42 0c
0077d260: 68 0b 63 2b 8f 8b ce ff d0 85 c0 74 08 3b c3 0f
0077d270: 84 5a fe ff ff 8b 16 8b 42 0c 68 2f 9c 23 08 8b
0077d280: ce ff d0 85 c0 74 08 3b c5 0f 84 40 fe ff ff 8b
0077d290: 17 8b 82 10 01 00 00 56 8b cf ff d0 8b f0 85 f6
0077d2a0: 75 b9 5f 5e 5d 5b c3 8b 17 8b 82 10 01 00 00 6a
0077d2b0: 00 8b cf ff d0 8b f0 33 ed 85 f6 74 3c 8b 16 8b
0077d2c0: 42 0c 68 0b 63 2b 8f 8b ce ff d0 8b 16 8b d8 8b
0077d2d0: 42 0c 68 2f 9c 23 08 8b ce ff d0 85 db 75 04 85
0077d2e0: c0 74 03 83 c5 01 8b 17 8b 82 10 01 00 00 56 8b
0077d2f0: cf ff d0 8b f0 85 f6 75 c4 5f 5e 8b c5 5d 5b c3
0077d300: a4 d0 77 00 d9 d0 77 00 0e d1 77 00 78 d1 77 00
0077d310: 11 d2 77 00 a7 d2 77 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077d040 <.text+0x37c040>:
  77d040:	53                                              	push   ebx
  77d041:	55                                              	push   ebp
  77d042:	56                                              	push   esi
  77d043:	57                                              	push   edi
  77d044:	e8 47 c3 fe ff                                  	call   0x769390
  77d049:	8b d8                                           	mov    ebx,eax
  77d04b:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  77d04f:	8b c8                                           	mov    ecx,eax
  77d051:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  77d057:	81 f9 00 00 00 30                               	cmp    ecx,0x30000000
  77d05d:	0f 85 8a 01 00 00                               	jne    0x77d1ed
  77d063:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  77d065:	50                                              	push   eax
  77d066:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77d06c:	8b cb                                           	mov    ecx,ebx
  77d06e:	ff d0                                           	call   eax
  77d070:	85 c0                                           	test   eax,eax
  77d072:	0f 84 75 01 00 00                               	je     0x77d1ed
  77d078:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d07a:	8b c8                                           	mov    ecx,eax
  77d07c:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d07f:	68 18 82 ee ee                                  	push   0xeeee8218
  77d084:	ff d0                                           	call   eax
  77d086:	8b f8                                           	mov    edi,eax
  77d088:	85 ff                                           	test   edi,edi
  77d08a:	0f 84 5d 01 00 00                               	je     0x77d1ed
  77d090:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  77d094:	83 f8 05                                        	cmp    eax,0x5
  77d097:	0f 87 50 01 00 00                               	ja     0x77d1ed
  77d09d:	ff 24 85 00 d3 77 00                            	jmp    DWORD PTR [eax*4+0x77d300]
  77d0a4:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  77d0a6:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  77d0aa:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  77d0b0:	50                                              	push   eax
  77d0b1:	8b cb                                           	mov    ecx,ebx
  77d0b3:	ff d2                                           	call   edx
  77d0b5:	50                                              	push   eax
  77d0b6:	e8 25 6c d9 ff                                  	call   0x513ce0
  77d0bb:	83 c4 04                                        	add    esp,0x4
  77d0be:	85 c0                                           	test   eax,eax
  77d0c0:	74 0d                                           	je     0x77d0cf
  77d0c2:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77d0c4:	50                                              	push   eax
  77d0c5:	8b 82 08 01 00 00                               	mov    eax,DWORD PTR [edx+0x108]
  77d0cb:	8b cf                                           	mov    ecx,edi
  77d0cd:	ff d0                                           	call   eax
  77d0cf:	5f                                              	pop    edi
  77d0d0:	5e                                              	pop    esi
  77d0d1:	5d                                              	pop    ebp
  77d0d2:	b8 01 00 00 00                                  	mov    eax,0x1
  77d0d7:	5b                                              	pop    ebx
  77d0d8:	c3                                              	ret
  77d0d9:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  77d0db:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  77d0df:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  77d0e5:	50                                              	push   eax
  77d0e6:	8b cb                                           	mov    ecx,ebx
  77d0e8:	ff d2                                           	call   edx
  77d0ea:	50                                              	push   eax
  77d0eb:	e8 f0 6b d9 ff                                  	call   0x513ce0
  77d0f0:	83 c4 04                                        	add    esp,0x4
  77d0f3:	85 c0                                           	test   eax,eax
  77d0f5:	74 0d                                           	je     0x77d104
  77d0f7:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77d0f9:	50                                              	push   eax
  77d0fa:	8b 82 0c 01 00 00                               	mov    eax,DWORD PTR [edx+0x10c]
  77d100:	8b cf                                           	mov    ecx,edi
  77d102:	ff d0                                           	call   eax
  77d104:	5f                                              	pop    edi
  77d105:	5e                                              	pop    esi
  77d106:	5d                                              	pop    ebp
  77d107:	b8 01 00 00 00                                  	mov    eax,0x1
  77d10c:	5b                                              	pop    ebx
  77d10d:	c3                                              	ret
  77d10e:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77d110:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  77d116:	6a 00                                           	push   0x0
  77d118:	8b cf                                           	mov    ecx,edi
  77d11a:	ff d0                                           	call   eax
  77d11c:	8b f0                                           	mov    esi,eax
  77d11e:	85 f6                                           	test   esi,esi
  77d120:	74 4c                                           	je     0x77d16e
  77d122:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77d124:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d127:	68 0b 63 2b 8f                                  	push   0x8f2b630b
  77d12c:	8b ce                                           	mov    ecx,esi
  77d12e:	33 db                                           	xor    ebx,ebx
  77d130:	ff d0                                           	call   eax
  77d132:	85 c0                                           	test   eax,eax
  77d134:	75 12                                           	jne    0x77d148
  77d136:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77d138:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d13b:	68 2f 9c 23 08                                  	push   0x8239c2f
  77d140:	8b ce                                           	mov    ecx,esi
  77d142:	ff d0                                           	call   eax
  77d144:	85 c0                                           	test   eax,eax
  77d146:	74 02                                           	je     0x77d14a
  77d148:	8b de                                           	mov    ebx,esi
  77d14a:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77d14c:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  77d152:	56                                              	push   esi
  77d153:	8b cf                                           	mov    ecx,edi
  77d155:	ff d0                                           	call   eax
  77d157:	85 db                                           	test   ebx,ebx
  77d159:	8b f0                                           	mov    esi,eax
  77d15b:	74 0d                                           	je     0x77d16a
  77d15d:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77d15f:	8b 82 0c 01 00 00                               	mov    eax,DWORD PTR [edx+0x10c]
  77d165:	53                                              	push   ebx
  77d166:	8b cf                                           	mov    ecx,edi
  77d168:	ff d0                                           	call   eax
  77d16a:	85 f6                                           	test   esi,esi
  77d16c:	75 b4                                           	jne    0x77d122
  77d16e:	5f                                              	pop    edi
  77d16f:	5e                                              	pop    esi
  77d170:	5d                                              	pop    ebp
  77d171:	b8 01 00 00 00                                  	mov    eax,0x1
  77d176:	5b                                              	pop    ebx
  77d177:	c3                                              	ret
  77d178:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77d17a:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  77d180:	6a 00                                           	push   0x0
  77d182:	8b cf                                           	mov    ecx,edi
  77d184:	ff d0                                           	call   eax
  77d186:	8b f0                                           	mov    esi,eax
  77d188:	85 f6                                           	test   esi,esi
  77d18a:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  77d192:	74 59                                           	je     0x77d1ed
  77d194:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77d196:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d199:	68 0b 63 2b 8f                                  	push   0x8f2b630b
  77d19e:	8b ce                                           	mov    ecx,esi
  77d1a0:	ff d0                                           	call   eax
  77d1a2:	8b e8                                           	mov    ebp,eax
  77d1a4:	85 ed                                           	test   ebp,ebp
  77d1a6:	74 0f                                           	je     0x77d1b7
  77d1a8:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  77d1ac:	3b 4c 24 14                                     	cmp    ecx,DWORD PTR [esp+0x14]
  77d1b0:	74 42                                           	je     0x77d1f4
  77d1b2:	83 44 24 14 01                                  	add    DWORD PTR [esp+0x14],0x1
  77d1b7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77d1b9:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d1bc:	68 2f 9c 23 08                                  	push   0x8239c2f
  77d1c1:	8b ce                                           	mov    ecx,esi
  77d1c3:	ff d0                                           	call   eax
  77d1c5:	8b e8                                           	mov    ebp,eax
  77d1c7:	85 ed                                           	test   ebp,ebp
  77d1c9:	74 0f                                           	je     0x77d1da
  77d1cb:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  77d1cf:	3b 4c 24 14                                     	cmp    ecx,DWORD PTR [esp+0x14]
  77d1d3:	74 1f                                           	je     0x77d1f4
  77d1d5:	83 44 24 14 01                                  	add    DWORD PTR [esp+0x14],0x1
  77d1da:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77d1dc:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  77d1e2:	56                                              	push   esi
  77d1e3:	8b cf                                           	mov    ecx,edi
  77d1e5:	ff d0                                           	call   eax
  77d1e7:	8b f0                                           	mov    esi,eax
  77d1e9:	85 f6                                           	test   esi,esi
  77d1eb:	75 a7                                           	jne    0x77d194
  77d1ed:	5f                                              	pop    edi
  77d1ee:	5e                                              	pop    esi
  77d1ef:	5d                                              	pop    ebp
  77d1f0:	33 c0                                           	xor    eax,eax
  77d1f2:	5b                                              	pop    ebx
  77d1f3:	c3                                              	ret
  77d1f4:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  77d1f7:	8b 02                                           	mov    eax,DWORD PTR [edx]
  77d1f9:	8b cd                                           	mov    ecx,ebp
  77d1fb:	ff d0                                           	call   eax
  77d1fd:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  77d1ff:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  77d205:	6a 30                                           	push   0x30
  77d207:	55                                              	push   ebp
  77d208:	8b cb                                           	mov    ecx,ebx
  77d20a:	ff d0                                           	call   eax
  77d20c:	5f                                              	pop    edi
  77d20d:	5e                                              	pop    esi
  77d20e:	5d                                              	pop    ebp
  77d20f:	5b                                              	pop    ebx
  77d210:	c3                                              	ret
  77d211:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  77d215:	8b c8                                           	mov    ecx,eax
  77d217:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  77d21d:	81 f9 00 00 00 30                               	cmp    ecx,0x30000000
  77d223:	75 c8                                           	jne    0x77d1ed
  77d225:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  77d227:	50                                              	push   eax
  77d228:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77d22e:	8b cb                                           	mov    ecx,ebx
  77d230:	ff d0                                           	call   eax
  77d232:	8b f0                                           	mov    esi,eax
  77d234:	56                                              	push   esi
  77d235:	e8 76 ce ff ff                                  	call   0x77a0b0
  77d23a:	56                                              	push   esi
  77d23b:	8b d8                                           	mov    ebx,eax
  77d23d:	e8 8e ce ff ff                                  	call   0x77a0d0
  77d242:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77d244:	83 c4 08                                        	add    esp,0x8
  77d247:	8b e8                                           	mov    ebp,eax
  77d249:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  77d24f:	6a 00                                           	push   0x0
  77d251:	8b cf                                           	mov    ecx,edi
  77d253:	ff d0                                           	call   eax
  77d255:	8b f0                                           	mov    esi,eax
  77d257:	85 f6                                           	test   esi,esi
  77d259:	74 92                                           	je     0x77d1ed
  77d25b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77d25d:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d260:	68 0b 63 2b 8f                                  	push   0x8f2b630b
  77d265:	8b ce                                           	mov    ecx,esi
  77d267:	ff d0                                           	call   eax
  77d269:	85 c0                                           	test   eax,eax
  77d26b:	74 08                                           	je     0x77d275
  77d26d:	3b c3                                           	cmp    eax,ebx
  77d26f:	0f 84 5a fe ff ff                               	je     0x77d0cf
  77d275:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77d277:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d27a:	68 2f 9c 23 08                                  	push   0x8239c2f
  77d27f:	8b ce                                           	mov    ecx,esi
  77d281:	ff d0                                           	call   eax
  77d283:	85 c0                                           	test   eax,eax
  77d285:	74 08                                           	je     0x77d28f
  77d287:	3b c5                                           	cmp    eax,ebp
  77d289:	0f 84 40 fe ff ff                               	je     0x77d0cf
  77d28f:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77d291:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  77d297:	56                                              	push   esi
  77d298:	8b cf                                           	mov    ecx,edi
  77d29a:	ff d0                                           	call   eax
  77d29c:	8b f0                                           	mov    esi,eax
  77d29e:	85 f6                                           	test   esi,esi
  77d2a0:	75 b9                                           	jne    0x77d25b
  77d2a2:	5f                                              	pop    edi
  77d2a3:	5e                                              	pop    esi
  77d2a4:	5d                                              	pop    ebp
  77d2a5:	5b                                              	pop    ebx
  77d2a6:	c3                                              	ret
  77d2a7:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77d2a9:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  77d2af:	6a 00                                           	push   0x0
  77d2b1:	8b cf                                           	mov    ecx,edi
  77d2b3:	ff d0                                           	call   eax
  77d2b5:	8b f0                                           	mov    esi,eax
  77d2b7:	33 ed                                           	xor    ebp,ebp
  77d2b9:	85 f6                                           	test   esi,esi
  77d2bb:	74 3c                                           	je     0x77d2f9
  77d2bd:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77d2bf:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d2c2:	68 0b 63 2b 8f                                  	push   0x8f2b630b
  77d2c7:	8b ce                                           	mov    ecx,esi
  77d2c9:	ff d0                                           	call   eax
  77d2cb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77d2cd:	8b d8                                           	mov    ebx,eax
  77d2cf:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d2d2:	68 2f 9c 23 08                                  	push   0x8239c2f
  77d2d7:	8b ce                                           	mov    ecx,esi
  77d2d9:	ff d0                                           	call   eax
  77d2db:	85 db                                           	test   ebx,ebx
  77d2dd:	75 04                                           	jne    0x77d2e3
  77d2df:	85 c0                                           	test   eax,eax
  77d2e1:	74 03                                           	je     0x77d2e6
  77d2e3:	83 c5 01                                        	add    ebp,0x1
  77d2e6:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77d2e8:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  77d2ee:	56                                              	push   esi
  77d2ef:	8b cf                                           	mov    ecx,edi
  77d2f1:	ff d0                                           	call   eax
  77d2f3:	8b f0                                           	mov    esi,eax
  77d2f5:	85 f6                                           	test   esi,esi
  77d2f7:	75 c4                                           	jne    0x77d2bd
  77d2f9:	5f                                              	pop    edi
  77d2fa:	5e                                              	pop    esi
  77d2fb:	8b c5                                           	mov    eax,ebp
  77d2fd:	5d                                              	pop    ebp
  77d2fe:	5b                                              	pop    ebx
  77d2ff:	c3                                              	ret
  77d300:	a4                                              	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
  77d301:	d0 77 00                                        	shl    BYTE PTR [edi+0x0],1
  77d304:	d9 d0                                           	fnop
  77d306:	77 00                                           	ja     0x77d308
  77d308:	0e                                              	push   cs
  77d309:	d1 77 00                                        	shl    DWORD PTR [edi+0x0],1
  77d30c:	78 d1                                           	js     0x77d2df
  77d30e:	77 00                                           	ja     0x77d310
  77d310:	11 d2                                           	adc    edx,edx
  77d312:	77 00                                           	ja     0x77d314
  77d314:	a7                                              	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
  77d315:	d2 77 00                                        	shl    BYTE PTR [edi+0x0],cl
  77d318:	cc                                              	int3
  77d319:	cc                                              	int3
  77d31a:	cc                                              	int3
  77d31b:	cc                                              	int3
  77d31c:	cc                                              	int3
  77d31d:	cc                                              	int3
  77d31e:	cc                                              	int3
  77d31f:	cc                                              	int3
