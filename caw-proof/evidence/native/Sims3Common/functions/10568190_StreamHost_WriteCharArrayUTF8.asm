# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10568190 (StreamHost_WriteCharArrayUTF8)
Paired Ghidra pseudocode: 10568190_StreamHost_WriteCharArrayUTF8.c
Window: [0x10568190, 0x105682c0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x105682c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10568190: 83 ec 2c 55 8b 6c 24 38 85 ed 75 08 8d 45 fa 5d
105681a0: 83 c4 2c c3 53 8b 5c 24 40 85 db 57 0f 8c ff 00
105681b0: 00 00 8b 7c 24 48 85 ff 0f 8e f3 00 00 00 8b 44
105681c0: 24 3c 3b 05 a4 b0 c7 10 56 75 08 8b 35 a8 b0 c7
105681d0: 10 eb 0b 50 e8 97 f0 ff ff 83 c4 04 8b f0 85 f6
105681e0: 75 0b 8d 46 fe 5e 5f 5b 5d 83 c4 2c c3 c7 44 24
105681f0: 44 00 00 00 00 e8 26 2f ff ff 8b 10 8b 52 7c 8d
10568200: 4c 24 10 51 8d 4c 24 48 51 55 8b c8 ff d2 83 7c
10568210: 24 44 00 75 0d 5e 5f 5b b8 fa ff ff ff 5d 83 c4
10568220: 2c c3 8b 44 24 10 3b d8 7d 7a 2b c3 3b c7 7c 74
10568230: 6a 01 56 8d 4c 24 2c e8 64 40 06 00 8b 44 24 44
10568240: 68 44 04 b2 10 57 50 8d 4c 24 20 51 e8 cf ec 3b
10568250: 00 8b 4c 24 24 8b 44 24 28 8b 16 2b c1 83 c4 10
10568260: 50 8b 42 38 51 8b ce ff d0 84 c0 8d 4c 24 14 75
10568270: 1b e8 aa 69 fa ff 8d 4c 24 24 e8 81 26 06 00 5e
10568280: 5f 5b b8 fd ff ff ff 5d 83 c4 2c c3 e8 8f 69 fa
10568290: ff 8d 4c 24 24 e8 66 26 06 00 5e 5f 5b 33 c0 5d
105682a0: 83 c4 2c c3 5e 5f 5b b8 f9 ff ff ff 5d 83 c4 2c
105682b0: c3 5f 5b b8 f9 ff ff ff 5d 83 c4 2c c3 cc cc cc

LINEAR DISASSEMBLY
10568190 <.text+0x567190>:
10568190:	83 ec 2c                                        	sub    esp,0x2c
10568193:	55                                              	push   ebp
10568194:	8b 6c 24 38                                     	mov    ebp,DWORD PTR [esp+0x38]
10568198:	85 ed                                           	test   ebp,ebp
1056819a:	75 08                                           	jne    0x105681a4
1056819c:	8d 45 fa                                        	lea    eax,[ebp-0x6]
1056819f:	5d                                              	pop    ebp
105681a0:	83 c4 2c                                        	add    esp,0x2c
105681a3:	c3                                              	ret
105681a4:	53                                              	push   ebx
105681a5:	8b 5c 24 40                                     	mov    ebx,DWORD PTR [esp+0x40]
105681a9:	85 db                                           	test   ebx,ebx
105681ab:	57                                              	push   edi
105681ac:	0f 8c ff 00 00 00                               	jl     0x105682b1
105681b2:	8b 7c 24 48                                     	mov    edi,DWORD PTR [esp+0x48]
105681b6:	85 ff                                           	test   edi,edi
105681b8:	0f 8e f3 00 00 00                               	jle    0x105682b1
105681be:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
105681c2:	3b 05 a4 b0 c7 10                               	cmp    eax,DWORD PTR ds:0x10c7b0a4
105681c8:	56                                              	push   esi
105681c9:	75 08                                           	jne    0x105681d3
105681cb:	8b 35 a8 b0 c7 10                               	mov    esi,DWORD PTR ds:0x10c7b0a8
105681d1:	eb 0b                                           	jmp    0x105681de
105681d3:	50                                              	push   eax
105681d4:	e8 97 f0 ff ff                                  	call   0x10567270
105681d9:	83 c4 04                                        	add    esp,0x4
105681dc:	8b f0                                           	mov    esi,eax
105681de:	85 f6                                           	test   esi,esi
105681e0:	75 0b                                           	jne    0x105681ed
105681e2:	8d 46 fe                                        	lea    eax,[esi-0x2]
105681e5:	5e                                              	pop    esi
105681e6:	5f                                              	pop    edi
105681e7:	5b                                              	pop    ebx
105681e8:	5d                                              	pop    ebp
105681e9:	83 c4 2c                                        	add    esp,0x2c
105681ec:	c3                                              	ret
105681ed:	c7 44 24 44 00 00 00 00                         	mov    DWORD PTR [esp+0x44],0x0
105681f5:	e8 26 2f ff ff                                  	call   0x1055b120
105681fa:	8b 10                                           	mov    edx,DWORD PTR [eax]
105681fc:	8b 52 7c                                        	mov    edx,DWORD PTR [edx+0x7c]
105681ff:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10568203:	51                                              	push   ecx
10568204:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10568208:	51                                              	push   ecx
10568209:	55                                              	push   ebp
1056820a:	8b c8                                           	mov    ecx,eax
1056820c:	ff d2                                           	call   edx
1056820e:	83 7c 24 44 00                                  	cmp    DWORD PTR [esp+0x44],0x0
10568213:	75 0d                                           	jne    0x10568222
10568215:	5e                                              	pop    esi
10568216:	5f                                              	pop    edi
10568217:	5b                                              	pop    ebx
10568218:	b8 fa ff ff ff                                  	mov    eax,0xfffffffa
1056821d:	5d                                              	pop    ebp
1056821e:	83 c4 2c                                        	add    esp,0x2c
10568221:	c3                                              	ret
10568222:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10568226:	3b d8                                           	cmp    ebx,eax
10568228:	7d 7a                                           	jge    0x105682a4
1056822a:	2b c3                                           	sub    eax,ebx
1056822c:	3b c7                                           	cmp    eax,edi
1056822e:	7c 74                                           	jl     0x105682a4
10568230:	6a 01                                           	push   0x1
10568232:	56                                              	push   esi
10568233:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10568237:	e8 64 40 06 00                                  	call   0x105cc2a0
1056823c:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10568240:	68 44 04 b2 10                                  	push   0x10b20444
10568245:	57                                              	push   edi
10568246:	50                                              	push   eax
10568247:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1056824b:	51                                              	push   ecx
1056824c:	e8 cf ec 3b 00                                  	call   0x10926f20
10568251:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10568255:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10568259:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056825b:	2b c1                                           	sub    eax,ecx
1056825d:	83 c4 10                                        	add    esp,0x10
10568260:	50                                              	push   eax
10568261:	8b 42 38                                        	mov    eax,DWORD PTR [edx+0x38]
10568264:	51                                              	push   ecx
10568265:	8b ce                                           	mov    ecx,esi
10568267:	ff d0                                           	call   eax
10568269:	84 c0                                           	test   al,al
1056826b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1056826f:	75 1b                                           	jne    0x1056828c
10568271:	e8 aa 69 fa ff                                  	call   0x1050ec20
10568276:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1056827a:	e8 81 26 06 00                                  	call   0x105ca900
1056827f:	5e                                              	pop    esi
10568280:	5f                                              	pop    edi
10568281:	5b                                              	pop    ebx
10568282:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
10568287:	5d                                              	pop    ebp
10568288:	83 c4 2c                                        	add    esp,0x2c
1056828b:	c3                                              	ret
1056828c:	e8 8f 69 fa ff                                  	call   0x1050ec20
10568291:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10568295:	e8 66 26 06 00                                  	call   0x105ca900
1056829a:	5e                                              	pop    esi
1056829b:	5f                                              	pop    edi
1056829c:	5b                                              	pop    ebx
1056829d:	33 c0                                           	xor    eax,eax
1056829f:	5d                                              	pop    ebp
105682a0:	83 c4 2c                                        	add    esp,0x2c
105682a3:	c3                                              	ret
105682a4:	5e                                              	pop    esi
105682a5:	5f                                              	pop    edi
105682a6:	5b                                              	pop    ebx
105682a7:	b8 f9 ff ff ff                                  	mov    eax,0xfffffff9
105682ac:	5d                                              	pop    ebp
105682ad:	83 c4 2c                                        	add    esp,0x2c
105682b0:	c3                                              	ret
105682b1:	5f                                              	pop    edi
105682b2:	5b                                              	pop    ebx
105682b3:	b8 f9 ff ff ff                                  	mov    eax,0xfffffff9
105682b8:	5d                                              	pop    ebp
105682b9:	83 c4 2c                                        	add    esp,0x2c
105682bc:	c3                                              	ret
105682bd:	cc                                              	int3
105682be:	cc                                              	int3
105682bf:	cc                                              	int3
