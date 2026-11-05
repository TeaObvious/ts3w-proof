# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00998ff0 (ScriptCore.DownloadContent::DownloadContent_StoreLotContentsImpl)
Paired Ghidra pseudocode: 00998FF0_ScriptCore_DownloadContent_DownloadContent_StoreLotContentsImpl.c
Window: [0x00998ff0, 0x00999260) (624 bytes; stop exclusive)
Next defined Ghidra entry: 0x00999260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00998ff0: 81 ec d8 00 00 00 57 e8 94 03 dd ff 8b f8 8d 44
00999000: 24 04 50 8d 4c 24 14 c7 44 24 08 9c 9f 04 01 e8
00999010: ec 04 e4 ff 8b 94 24 e8 00 00 00 8d 4c 24 10 51
00999020: 52 57 e8 19 bf ff ff 83 c4 0c 84 c0 75 1d 8b 44
00999030: 24 10 85 c0 74 09 50 e8 a4 b4 b4 ff 83 c4 04 33
00999040: c0 33 d2 5f 81 c4 d8 00 00 00 c3 8d 44 24 04 50
00999050: 8d 4c 24 3c c7 44 24 08 48 9f 04 01 e8 9f 04 e4
00999060: ff 8b 17 8b 52 68 8d 44 24 04 50 8b 84 24 f0 00
00999070: 00 00 8d 4c 24 0c 51 50 8b cf ff d2 8b 44 24 04
00999080: 85 c0 7e 17 8b 4c 24 08 51 8b 4c 24 0c 8d 14 c1
00999090: 52 51 8d 4c 24 44 e8 c5 5e e4 ff 56 8b 35 f8 c4
009990a0: 1e 01 85 f6 75 2f 8b 44 24 3c 85 c0 74 09 50 e8
009990b0: 2c b4 b4 ff 83 c4 04 8b 44 24 14 85 c0 74 09 50
009990c0: e8 1b b4 b4 ff 83 c4 04 5e 33 c0 33 d2 5f 81 c4
009990d0: d8 00 00 00 c3 55 8d 4c 24 28 e8 21 e8 e3 ff 8b
009990e0: 84 24 00 01 00 00 8b 8c 24 fc 00 00 00 50 51 8b
009990f0: 8c 24 f4 00 00 00 8d 54 24 48 52 8b 94 24 f4 00
00999100: 00 00 8d 44 24 34 50 51 52 8b ce e8 c0 be 13 00
00999110: 8b f2 8b e8 0b c6 89 74 24 14 0f 84 fb 00 00 00
00999120: 6a 00 8d 4c 24 64 e8 b5 da e3 ff 8d 4c 24 60 51
00999130: 8d 54 24 1c 52 e8 e6 60 00 00 83 c4 08 84 c0 0f
00999140: 84 cd 00 00 00 6a 01 8d 44 24 54 50 8d 4c 24 30
00999150: 89 6c 24 58 89 74 24 5c c7 44 24 60 54 4b ec 94
00999160: c7 44 24 64 00 00 00 00 e8 53 f3 e3 ff 84 c0 0f
00999170: 84 9d 00 00 00 53 8d 4c 24 2c e8 c1 9e c0 ff 8b
00999180: 4c 24 34 8b 94 24 fc 00 00 00 51 52 57 8b f0 e8
00999190: 1c be ff ff 8a d8 83 c4 0c 8d 4c 24 2c 80 e3 01
009991a0: e8 cb f2 e3 ff 50 56 8d 4c 24 34 e8 90 5c c2 ff
009991b0: 8d 44 24 2c 50 8d 4c 24 20 e8 42 f8 e3 ff 8d 4c
009991c0: 24 2c 22 d8 e8 a7 e8 e3 ff 84 db 5b 74 44 8d 4c
009991d0: 24 60 e8 b9 d6 e3 ff 8d 4c 24 28 e8 b0 e7 e3 ff
009991e0: 8b 44 24 40 85 c0 74 09 50 e8 f2 b2 b4 ff 83 c4
009991f0: 04 8b 44 24 18 85 c0 74 09 50 e8 e1 b2 b4 ff 83
00999200: c4 04 8b 54 24 14 8b c5 5d 5e 5f 81 c4 d8 00 00
00999210: 00 c3 8d 4c 24 60 e8 75 d6 e3 ff 8d 4c 24 28 e8
00999220: 6c e7 e3 ff 8b 44 24 40 85 c0 74 09 50 e8 ae b2
00999230: b4 ff 83 c4 04 8b 44 24 18 85 c0 74 09 50 e8 9d
00999240: b2 b4 ff 83 c4 04 5d 5e 33 c0 33 d2 5f 81 c4 d8
00999250: 00 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00998ff0 <.text+0x597ff0>:
  998ff0:	81 ec d8 00 00 00                               	sub    esp,0xd8
  998ff6:	57                                              	push   edi
  998ff7:	e8 94 03 dd ff                                  	call   0x769390
  998ffc:	8b f8                                           	mov    edi,eax
  998ffe:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  999002:	50                                              	push   eax
  999003:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  999007:	c7 44 24 08 9c 9f 04 01                         	mov    DWORD PTR [esp+0x8],0x1049f9c
  99900f:	e8 ec 04 e4 ff                                  	call   0x7d9500
  999014:	8b 94 24 e8 00 00 00                            	mov    edx,DWORD PTR [esp+0xe8]
  99901b:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  99901f:	51                                              	push   ecx
  999020:	52                                              	push   edx
  999021:	57                                              	push   edi
  999022:	e8 19 bf ff ff                                  	call   0x994f40
  999027:	83 c4 0c                                        	add    esp,0xc
  99902a:	84 c0                                           	test   al,al
  99902c:	75 1d                                           	jne    0x99904b
  99902e:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  999032:	85 c0                                           	test   eax,eax
  999034:	74 09                                           	je     0x99903f
  999036:	50                                              	push   eax
  999037:	e8 a4 b4 b4 ff                                  	call   0x4e44e0
  99903c:	83 c4 04                                        	add    esp,0x4
  99903f:	33 c0                                           	xor    eax,eax
  999041:	33 d2                                           	xor    edx,edx
  999043:	5f                                              	pop    edi
  999044:	81 c4 d8 00 00 00                               	add    esp,0xd8
  99904a:	c3                                              	ret
  99904b:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  99904f:	50                                              	push   eax
  999050:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  999054:	c7 44 24 08 48 9f 04 01                         	mov    DWORD PTR [esp+0x8],0x1049f48
  99905c:	e8 9f 04 e4 ff                                  	call   0x7d9500
  999061:	8b 17                                           	mov    edx,DWORD PTR [edi]
  999063:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
  999066:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  99906a:	50                                              	push   eax
  99906b:	8b 84 24 f0 00 00 00                            	mov    eax,DWORD PTR [esp+0xf0]
  999072:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  999076:	51                                              	push   ecx
  999077:	50                                              	push   eax
  999078:	8b cf                                           	mov    ecx,edi
  99907a:	ff d2                                           	call   edx
  99907c:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  999080:	85 c0                                           	test   eax,eax
  999082:	7e 17                                           	jle    0x99909b
  999084:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  999088:	51                                              	push   ecx
  999089:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  99908d:	8d 14 c1                                        	lea    edx,[ecx+eax*8]
  999090:	52                                              	push   edx
  999091:	51                                              	push   ecx
  999092:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  999096:	e8 c5 5e e4 ff                                  	call   0x7def60
  99909b:	56                                              	push   esi
  99909c:	8b 35 f8 c4 1e 01                               	mov    esi,DWORD PTR ds:0x11ec4f8
  9990a2:	85 f6                                           	test   esi,esi
  9990a4:	75 2f                                           	jne    0x9990d5
  9990a6:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  9990aa:	85 c0                                           	test   eax,eax
  9990ac:	74 09                                           	je     0x9990b7
  9990ae:	50                                              	push   eax
  9990af:	e8 2c b4 b4 ff                                  	call   0x4e44e0
  9990b4:	83 c4 04                                        	add    esp,0x4
  9990b7:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  9990bb:	85 c0                                           	test   eax,eax
  9990bd:	74 09                                           	je     0x9990c8
  9990bf:	50                                              	push   eax
  9990c0:	e8 1b b4 b4 ff                                  	call   0x4e44e0
  9990c5:	83 c4 04                                        	add    esp,0x4
  9990c8:	5e                                              	pop    esi
  9990c9:	33 c0                                           	xor    eax,eax
  9990cb:	33 d2                                           	xor    edx,edx
  9990cd:	5f                                              	pop    edi
  9990ce:	81 c4 d8 00 00 00                               	add    esp,0xd8
  9990d4:	c3                                              	ret
  9990d5:	55                                              	push   ebp
  9990d6:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  9990da:	e8 21 e8 e3 ff                                  	call   0x7d7900
  9990df:	8b 84 24 00 01 00 00                            	mov    eax,DWORD PTR [esp+0x100]
  9990e6:	8b 8c 24 fc 00 00 00                            	mov    ecx,DWORD PTR [esp+0xfc]
  9990ed:	50                                              	push   eax
  9990ee:	51                                              	push   ecx
  9990ef:	8b 8c 24 f4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xf4]
  9990f6:	8d 54 24 48                                     	lea    edx,[esp+0x48]
  9990fa:	52                                              	push   edx
  9990fb:	8b 94 24 f4 00 00 00                            	mov    edx,DWORD PTR [esp+0xf4]
  999102:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  999106:	50                                              	push   eax
  999107:	51                                              	push   ecx
  999108:	52                                              	push   edx
  999109:	8b ce                                           	mov    ecx,esi
  99910b:	e8 c0 be 13 00                                  	call   0xad4fd0
  999110:	8b f2                                           	mov    esi,edx
  999112:	8b e8                                           	mov    ebp,eax
  999114:	0b c6                                           	or     eax,esi
  999116:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  99911a:	0f 84 fb 00 00 00                               	je     0x99921b
  999120:	6a 00                                           	push   0x0
  999122:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  999126:	e8 b5 da e3 ff                                  	call   0x7d6be0
  99912b:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  99912f:	51                                              	push   ecx
  999130:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  999134:	52                                              	push   edx
  999135:	e8 e6 60 00 00                                  	call   0x99f220
  99913a:	83 c4 08                                        	add    esp,0x8
  99913d:	84 c0                                           	test   al,al
  99913f:	0f 84 cd 00 00 00                               	je     0x999212
  999145:	6a 01                                           	push   0x1
  999147:	8d 44 24 54                                     	lea    eax,[esp+0x54]
  99914b:	50                                              	push   eax
  99914c:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  999150:	89 6c 24 58                                     	mov    DWORD PTR [esp+0x58],ebp
  999154:	89 74 24 5c                                     	mov    DWORD PTR [esp+0x5c],esi
  999158:	c7 44 24 60 54 4b ec 94                         	mov    DWORD PTR [esp+0x60],0x94ec4b54
  999160:	c7 44 24 64 00 00 00 00                         	mov    DWORD PTR [esp+0x64],0x0
  999168:	e8 53 f3 e3 ff                                  	call   0x7d84c0
  99916d:	84 c0                                           	test   al,al
  99916f:	0f 84 9d 00 00 00                               	je     0x999212
  999175:	53                                              	push   ebx
  999176:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  99917a:	e8 c1 9e c0 ff                                  	call   0x5a3040
  99917f:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  999183:	8b 94 24 fc 00 00 00                            	mov    edx,DWORD PTR [esp+0xfc]
  99918a:	51                                              	push   ecx
  99918b:	52                                              	push   edx
  99918c:	57                                              	push   edi
  99918d:	8b f0                                           	mov    esi,eax
  99918f:	e8 1c be ff ff                                  	call   0x994fb0
  999194:	8a d8                                           	mov    bl,al
  999196:	83 c4 0c                                        	add    esp,0xc
  999199:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  99919d:	80 e3 01                                        	and    bl,0x1
  9991a0:	e8 cb f2 e3 ff                                  	call   0x7d8470
  9991a5:	50                                              	push   eax
  9991a6:	56                                              	push   esi
  9991a7:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  9991ab:	e8 90 5c c2 ff                                  	call   0x5bee40
  9991b0:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  9991b4:	50                                              	push   eax
  9991b5:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  9991b9:	e8 42 f8 e3 ff                                  	call   0x7d8a00
  9991be:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  9991c2:	22 d8                                           	and    bl,al
  9991c4:	e8 a7 e8 e3 ff                                  	call   0x7d7a70
  9991c9:	84 db                                           	test   bl,bl
  9991cb:	5b                                              	pop    ebx
  9991cc:	74 44                                           	je     0x999212
  9991ce:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  9991d2:	e8 b9 d6 e3 ff                                  	call   0x7d6890
  9991d7:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  9991db:	e8 b0 e7 e3 ff                                  	call   0x7d7990
  9991e0:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  9991e4:	85 c0                                           	test   eax,eax
  9991e6:	74 09                                           	je     0x9991f1
  9991e8:	50                                              	push   eax
  9991e9:	e8 f2 b2 b4 ff                                  	call   0x4e44e0
  9991ee:	83 c4 04                                        	add    esp,0x4
  9991f1:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  9991f5:	85 c0                                           	test   eax,eax
  9991f7:	74 09                                           	je     0x999202
  9991f9:	50                                              	push   eax
  9991fa:	e8 e1 b2 b4 ff                                  	call   0x4e44e0
  9991ff:	83 c4 04                                        	add    esp,0x4
  999202:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  999206:	8b c5                                           	mov    eax,ebp
  999208:	5d                                              	pop    ebp
  999209:	5e                                              	pop    esi
  99920a:	5f                                              	pop    edi
  99920b:	81 c4 d8 00 00 00                               	add    esp,0xd8
  999211:	c3                                              	ret
  999212:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  999216:	e8 75 d6 e3 ff                                  	call   0x7d6890
  99921b:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  99921f:	e8 6c e7 e3 ff                                  	call   0x7d7990
  999224:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  999228:	85 c0                                           	test   eax,eax
  99922a:	74 09                                           	je     0x999235
  99922c:	50                                              	push   eax
  99922d:	e8 ae b2 b4 ff                                  	call   0x4e44e0
  999232:	83 c4 04                                        	add    esp,0x4
  999235:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  999239:	85 c0                                           	test   eax,eax
  99923b:	74 09                                           	je     0x999246
  99923d:	50                                              	push   eax
  99923e:	e8 9d b2 b4 ff                                  	call   0x4e44e0
  999243:	83 c4 04                                        	add    esp,0x4
  999246:	5d                                              	pop    ebp
  999247:	5e                                              	pop    esi
  999248:	33 c0                                           	xor    eax,eax
  99924a:	33 d2                                           	xor    edx,edx
  99924c:	5f                                              	pop    edi
  99924d:	81 c4 d8 00 00 00                               	add    esp,0xd8
  999253:	c3                                              	ret
  999254:	cc                                              	int3
  999255:	cc                                              	int3
  999256:	cc                                              	int3
  999257:	cc                                              	int3
  999258:	cc                                              	int3
  999259:	cc                                              	int3
  99925a:	cc                                              	int3
  99925b:	cc                                              	int3
  99925c:	cc                                              	int3
  99925d:	cc                                              	int3
  99925e:	cc                                              	int3
  99925f:	cc                                              	int3
