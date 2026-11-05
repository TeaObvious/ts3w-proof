# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10788000 (DownloadContent_StoreLotContentsImpl)
Paired Ghidra pseudocode: 10788000_DownloadContent_StoreLotContentsImpl.c
Window: [0x10788000, 0x10788270) (624 bytes; stop exclusive)
Next defined Ghidra entry: 0x10788270
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10788000: 81 ec d8 00 00 00 57 e8 14 31 dd ff 8b f8 8d 44
10788010: 24 04 50 8d 4c 24 14 c7 44 24 08 98 8c b5 10 e8
10788020: ec f7 f9 ff 8b 94 24 e8 00 00 00 8d 4c 24 10 51
10788030: 52 57 e8 d9 bf ff ff 83 c4 0c 84 c0 75 1d 8b 44
10788040: 24 10 85 c0 74 09 50 e8 44 0e 19 00 83 c4 04 33
10788050: c0 33 d2 5f 81 c4 d8 00 00 00 c3 8d 44 24 04 50
10788060: 8d 4c 24 3c c7 44 24 08 44 8c b5 10 e8 9f f7 f9
10788070: ff 8b 17 8b 52 68 8d 44 24 04 50 8b 84 24 f0 00
10788080: 00 00 8d 4c 24 0c 51 50 8b cf ff d2 8b 44 24 04
10788090: 85 c0 7e 17 8b 4c 24 08 51 8b 4c 24 0c 8d 14 c1
107880a0: 52 51 8d 4c 24 44 e8 b5 ab 01 00 56 8b 35 d8 e9
107880b0: c6 10 85 f6 75 2f 8b 44 24 3c 85 c0 74 09 50 e8
107880c0: cc 0d 19 00 83 c4 04 8b 44 24 14 85 c0 74 09 50
107880d0: e8 bb 0d 19 00 83 c4 04 5e 33 c0 33 d2 5f 81 c4
107880e0: d8 00 00 00 c3 55 8d 4c 24 28 e8 81 27 e4 ff 8b
107880f0: 84 24 00 01 00 00 8b 8c 24 fc 00 00 00 50 51 8b
10788100: 8c 24 f4 00 00 00 8d 54 24 48 52 8b 94 24 f4 00
10788110: 00 00 8d 44 24 34 50 51 52 8b ce e8 30 36 91 ff
10788120: 8b f2 8b e8 0b c6 89 74 24 14 0f 84 fb 00 00 00
10788130: 6a 00 8d 4c 24 64 e8 15 1a e4 ff 8d 4c 24 60 51
10788140: 8d 54 24 1c 52 e8 06 62 00 00 83 c4 08 84 c0 0f
10788150: 84 cd 00 00 00 6a 01 8d 44 24 54 50 8d 4c 24 30
10788160: 89 6c 24 58 89 74 24 5c c7 44 24 60 54 4b ec 94
10788170: c7 44 24 64 00 00 00 00 e8 03 32 e4 ff 84 c0 0f
10788180: 84 9d 00 00 00 53 8d 4c 24 2c e8 71 48 8e ff 8b
10788190: 4c 24 34 8b 94 24 fc 00 00 00 51 52 57 8b f0 e8
107881a0: dc be ff ff 8a d8 83 c4 0c 8d 4c 24 2c 80 e3 01
107881b0: e8 7b 31 e4 ff 50 56 8d 4c 24 34 e8 80 48 8e ff
107881c0: 8d 44 24 2c 50 8d 4c 24 20 e8 f2 36 e4 ff 8d 4c
107881d0: 24 2c 22 d8 e8 07 28 e4 ff 84 db 5b 74 44 8d 4c
107881e0: 24 60 e8 19 16 e4 ff 8d 4c 24 28 e8 10 27 e4 ff
107881f0: 8b 44 24 40 85 c0 74 09 50 e8 92 0c 19 00 83 c4
10788200: 04 8b 44 24 18 85 c0 74 09 50 e8 81 0c 19 00 83
10788210: c4 04 8b 54 24 14 8b c5 5d 5e 5f 81 c4 d8 00 00
10788220: 00 c3 8d 4c 24 60 e8 d5 15 e4 ff 8d 4c 24 28 e8
10788230: cc 26 e4 ff 8b 44 24 40 85 c0 74 09 50 e8 4e 0c
10788240: 19 00 83 c4 04 8b 44 24 18 85 c0 74 09 50 e8 3d
10788250: 0c 19 00 83 c4 04 5d 5e 33 c0 33 d2 5f 81 c4 d8
10788260: 00 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10788000 <.text+0x787000>:
10788000:	81 ec d8 00 00 00                               	sub    esp,0xd8
10788006:	57                                              	push   edi
10788007:	e8 14 31 dd ff                                  	call   0x1055b120
1078800c:	8b f8                                           	mov    edi,eax
1078800e:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10788012:	50                                              	push   eax
10788013:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10788017:	c7 44 24 08 98 8c b5 10                         	mov    DWORD PTR [esp+0x8],0x10b58c98
1078801f:	e8 ec f7 f9 ff                                  	call   0x10727810
10788024:	8b 94 24 e8 00 00 00                            	mov    edx,DWORD PTR [esp+0xe8]
1078802b:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1078802f:	51                                              	push   ecx
10788030:	52                                              	push   edx
10788031:	57                                              	push   edi
10788032:	e8 d9 bf ff ff                                  	call   0x10784010
10788037:	83 c4 0c                                        	add    esp,0xc
1078803a:	84 c0                                           	test   al,al
1078803c:	75 1d                                           	jne    0x1078805b
1078803e:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10788042:	85 c0                                           	test   eax,eax
10788044:	74 09                                           	je     0x1078804f
10788046:	50                                              	push   eax
10788047:	e8 44 0e 19 00                                  	call   0x10918e90
1078804c:	83 c4 04                                        	add    esp,0x4
1078804f:	33 c0                                           	xor    eax,eax
10788051:	33 d2                                           	xor    edx,edx
10788053:	5f                                              	pop    edi
10788054:	81 c4 d8 00 00 00                               	add    esp,0xd8
1078805a:	c3                                              	ret
1078805b:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1078805f:	50                                              	push   eax
10788060:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
10788064:	c7 44 24 08 44 8c b5 10                         	mov    DWORD PTR [esp+0x8],0x10b58c44
1078806c:	e8 9f f7 f9 ff                                  	call   0x10727810
10788071:	8b 17                                           	mov    edx,DWORD PTR [edi]
10788073:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
10788076:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1078807a:	50                                              	push   eax
1078807b:	8b 84 24 f0 00 00 00                            	mov    eax,DWORD PTR [esp+0xf0]
10788082:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10788086:	51                                              	push   ecx
10788087:	50                                              	push   eax
10788088:	8b cf                                           	mov    ecx,edi
1078808a:	ff d2                                           	call   edx
1078808c:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10788090:	85 c0                                           	test   eax,eax
10788092:	7e 17                                           	jle    0x107880ab
10788094:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10788098:	51                                              	push   ecx
10788099:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1078809d:	8d 14 c1                                        	lea    edx,[ecx+eax*8]
107880a0:	52                                              	push   edx
107880a1:	51                                              	push   ecx
107880a2:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
107880a6:	e8 b5 ab 01 00                                  	call   0x107a2c60
107880ab:	56                                              	push   esi
107880ac:	8b 35 d8 e9 c6 10                               	mov    esi,DWORD PTR ds:0x10c6e9d8
107880b2:	85 f6                                           	test   esi,esi
107880b4:	75 2f                                           	jne    0x107880e5
107880b6:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
107880ba:	85 c0                                           	test   eax,eax
107880bc:	74 09                                           	je     0x107880c7
107880be:	50                                              	push   eax
107880bf:	e8 cc 0d 19 00                                  	call   0x10918e90
107880c4:	83 c4 04                                        	add    esp,0x4
107880c7:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
107880cb:	85 c0                                           	test   eax,eax
107880cd:	74 09                                           	je     0x107880d8
107880cf:	50                                              	push   eax
107880d0:	e8 bb 0d 19 00                                  	call   0x10918e90
107880d5:	83 c4 04                                        	add    esp,0x4
107880d8:	5e                                              	pop    esi
107880d9:	33 c0                                           	xor    eax,eax
107880db:	33 d2                                           	xor    edx,edx
107880dd:	5f                                              	pop    edi
107880de:	81 c4 d8 00 00 00                               	add    esp,0xd8
107880e4:	c3                                              	ret
107880e5:	55                                              	push   ebp
107880e6:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
107880ea:	e8 81 27 e4 ff                                  	call   0x105ca870
107880ef:	8b 84 24 00 01 00 00                            	mov    eax,DWORD PTR [esp+0x100]
107880f6:	8b 8c 24 fc 00 00 00                            	mov    ecx,DWORD PTR [esp+0xfc]
107880fd:	50                                              	push   eax
107880fe:	51                                              	push   ecx
107880ff:	8b 8c 24 f4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xf4]
10788106:	8d 54 24 48                                     	lea    edx,[esp+0x48]
1078810a:	52                                              	push   edx
1078810b:	8b 94 24 f4 00 00 00                            	mov    edx,DWORD PTR [esp+0xf4]
10788112:	8d 44 24 34                                     	lea    eax,[esp+0x34]
10788116:	50                                              	push   eax
10788117:	51                                              	push   ecx
10788118:	52                                              	push   edx
10788119:	8b ce                                           	mov    ecx,esi
1078811b:	e8 30 36 91 ff                                  	call   0x1009b750
10788120:	8b f2                                           	mov    esi,edx
10788122:	8b e8                                           	mov    ebp,eax
10788124:	0b c6                                           	or     eax,esi
10788126:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
1078812a:	0f 84 fb 00 00 00                               	je     0x1078822b
10788130:	6a 00                                           	push   0x0
10788132:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
10788136:	e8 15 1a e4 ff                                  	call   0x105c9b50
1078813b:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
1078813f:	51                                              	push   ecx
10788140:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
10788144:	52                                              	push   edx
10788145:	e8 06 62 00 00                                  	call   0x1078e350
1078814a:	83 c4 08                                        	add    esp,0x8
1078814d:	84 c0                                           	test   al,al
1078814f:	0f 84 cd 00 00 00                               	je     0x10788222
10788155:	6a 01                                           	push   0x1
10788157:	8d 44 24 54                                     	lea    eax,[esp+0x54]
1078815b:	50                                              	push   eax
1078815c:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10788160:	89 6c 24 58                                     	mov    DWORD PTR [esp+0x58],ebp
10788164:	89 74 24 5c                                     	mov    DWORD PTR [esp+0x5c],esi
10788168:	c7 44 24 60 54 4b ec 94                         	mov    DWORD PTR [esp+0x60],0x94ec4b54
10788170:	c7 44 24 64 00 00 00 00                         	mov    DWORD PTR [esp+0x64],0x0
10788178:	e8 03 32 e4 ff                                  	call   0x105cb380
1078817d:	84 c0                                           	test   al,al
1078817f:	0f 84 9d 00 00 00                               	je     0x10788222
10788185:	53                                              	push   ebx
10788186:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1078818a:	e8 71 48 8e ff                                  	call   0x1006ca00
1078818f:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10788193:	8b 94 24 fc 00 00 00                            	mov    edx,DWORD PTR [esp+0xfc]
1078819a:	51                                              	push   ecx
1078819b:	52                                              	push   edx
1078819c:	57                                              	push   edi
1078819d:	8b f0                                           	mov    esi,eax
1078819f:	e8 dc be ff ff                                  	call   0x10784080
107881a4:	8a d8                                           	mov    bl,al
107881a6:	83 c4 0c                                        	add    esp,0xc
107881a9:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
107881ad:	80 e3 01                                        	and    bl,0x1
107881b0:	e8 7b 31 e4 ff                                  	call   0x105cb330
107881b5:	50                                              	push   eax
107881b6:	56                                              	push   esi
107881b7:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
107881bb:	e8 80 48 8e ff                                  	call   0x1006ca40
107881c0:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
107881c4:	50                                              	push   eax
107881c5:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
107881c9:	e8 f2 36 e4 ff                                  	call   0x105cb8c0
107881ce:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
107881d2:	22 d8                                           	and    bl,al
107881d4:	e8 07 28 e4 ff                                  	call   0x105ca9e0
107881d9:	84 db                                           	test   bl,bl
107881db:	5b                                              	pop    ebx
107881dc:	74 44                                           	je     0x10788222
107881de:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
107881e2:	e8 19 16 e4 ff                                  	call   0x105c9800
107881e7:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
107881eb:	e8 10 27 e4 ff                                  	call   0x105ca900
107881f0:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
107881f4:	85 c0                                           	test   eax,eax
107881f6:	74 09                                           	je     0x10788201
107881f8:	50                                              	push   eax
107881f9:	e8 92 0c 19 00                                  	call   0x10918e90
107881fe:	83 c4 04                                        	add    esp,0x4
10788201:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10788205:	85 c0                                           	test   eax,eax
10788207:	74 09                                           	je     0x10788212
10788209:	50                                              	push   eax
1078820a:	e8 81 0c 19 00                                  	call   0x10918e90
1078820f:	83 c4 04                                        	add    esp,0x4
10788212:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10788216:	8b c5                                           	mov    eax,ebp
10788218:	5d                                              	pop    ebp
10788219:	5e                                              	pop    esi
1078821a:	5f                                              	pop    edi
1078821b:	81 c4 d8 00 00 00                               	add    esp,0xd8
10788221:	c3                                              	ret
10788222:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
10788226:	e8 d5 15 e4 ff                                  	call   0x105c9800
1078822b:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1078822f:	e8 cc 26 e4 ff                                  	call   0x105ca900
10788234:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
10788238:	85 c0                                           	test   eax,eax
1078823a:	74 09                                           	je     0x10788245
1078823c:	50                                              	push   eax
1078823d:	e8 4e 0c 19 00                                  	call   0x10918e90
10788242:	83 c4 04                                        	add    esp,0x4
10788245:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10788249:	85 c0                                           	test   eax,eax
1078824b:	74 09                                           	je     0x10788256
1078824d:	50                                              	push   eax
1078824e:	e8 3d 0c 19 00                                  	call   0x10918e90
10788253:	83 c4 04                                        	add    esp,0x4
10788256:	5d                                              	pop    ebp
10788257:	5e                                              	pop    esi
10788258:	33 c0                                           	xor    eax,eax
1078825a:	33 d2                                           	xor    edx,edx
1078825c:	5f                                              	pop    edi
1078825d:	81 c4 d8 00 00 00                               	add    esp,0xd8
10788263:	c3                                              	ret
10788264:	cc                                              	int3
10788265:	cc                                              	int3
10788266:	cc                                              	int3
10788267:	cc                                              	int3
10788268:	cc                                              	int3
10788269:	cc                                              	int3
1078826a:	cc                                              	int3
1078826b:	cc                                              	int3
1078826c:	cc                                              	int3
1078826d:	cc                                              	int3
1078826e:	cc                                              	int3
1078826f:	cc                                              	int3
