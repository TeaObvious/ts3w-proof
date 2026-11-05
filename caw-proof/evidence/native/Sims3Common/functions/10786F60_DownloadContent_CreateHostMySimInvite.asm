# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10786f60 (DownloadContent_CreateHostMySimInvite)
Paired Ghidra pseudocode: 10786F60_DownloadContent_CreateHostMySimInvite.c
Window: [0x10786f60, 0x10787330) (976 bytes; stop exclusive)
Next defined Ghidra entry: 0x10787330
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10786f60: 81 ec dc 00 00 00 83 bc 24 08 01 00 00 00 55 0f
10786f70: 84 ac 03 00 00 83 bc 24 10 01 00 00 00 0f 84 9e
10786f80: 03 00 00 83 bc 24 14 01 00 00 00 0f 84 90 03 00
10786f90: 00 8b ac 24 18 01 00 00 85 ed 0f 84 81 03 00 00
10786fa0: 83 bc 24 1c 01 00 00 00 0f 84 73 03 00 00 83 bc
10786fb0: 24 20 01 00 00 00 0f 84 65 03 00 00 53 56 e8 5d
10786fc0: 41 dd ff 8b f0 e8 f6 d4 fe ff 68 64 89 f8 04 8b
10786fd0: c8 e8 9a 10 ff ff 8b d8 85 db 75 0c 5e 5b 32 c0
10786fe0: 5d 81 c4 dc 00 00 00 c3 8b 8c 24 10 01 00 00 8b
10786ff0: 06 8b 50 58 57 51 8b ce ff d2 8b 8c 24 18 01 00
10787000: 00 8b f8 8b 06 8b 50 58 51 8b ce ff d2 6a 00 6a
10787010: ff 50 8d 44 24 40 50 e8 04 ff 19 00 8b 16 8b 84
10787020: 24 2c 01 00 00 8b 52 58 83 c4 10 50 8b ce ff d2
10787030: 6a 00 6a ff 50 8d 44 24 30 50 e8 e1 fe 19 00 8b
10787040: 16 8b 84 24 30 01 00 00 8b 52 58 83 c4 10 50 8b
10787050: ce ff d2 6a 00 6a ff 50 8d 44 24 60 50 e8 be fe
10787060: 19 00 8b 4c 24 64 8b 54 24 34 8b 44 24 44 83 c4
10787070: 10 51 8b 8c 24 14 01 00 00 52 8b 94 24 14 01 00
10787080: 00 50 8b 84 24 14 01 00 00 51 8b 8c 24 14 01 00
10787090: 00 52 8b 94 24 14 01 00 00 50 8b 84 24 14 01 00
107870a0: 00 51 8b 8c 24 14 01 00 00 52 8b 94 24 14 01 00
107870b0: 00 50 8b 84 24 14 01 00 00 51 8b 0d 90 f5 c8 10
107870c0: 52 50 e8 39 83 be ff 8b c8 e8 02 7c 05 00 8b c8
107870d0: e8 eb 03 0a 00 8d 4c 24 10 51 c7 44 24 14 b8 90
107870e0: b5 10 8d 4c 24 18 e8 25 07 fa ff 8d 54 24 14 52
107870f0: 55 56 e8 19 cf ff ff 83 c4 0c 84 c0 0f 84 ef 00
10787100: 00 00 8d 44 24 10 50 8d 4c 24 48 c7 44 24 14 8c
10787110: 90 b5 10 e8 f8 06 fa ff 8b 94 24 28 01 00 00 8d
10787120: 4c 24 44 51 52 56 e8 b5 f8 ff ff 83 c4 0c 84 c0
10787130: 0f 84 aa 00 00 00 68 60 90 b5 10 6a 00 6a 00 8d
10787140: 4c 24 70 e8 48 cf 18 00 d9 e8 51 d9 1c 24 bd 01
10787150: 00 00 00 01 6c 24 74 55 8d 4c 24 6c e8 0f c9 18
10787160: 00 8b 8c 24 2c 01 00 00 8d 44 24 64 50 51 56 e8
10787170: 0c cf ff ff 83 c4 0c 84 c0 74 5c 68 58 8d b5 10
10787180: 6a 00 6a 00 8d 8c 24 9c 00 00 00 e8 00 cf 18 00
10787190: d9 e8 01 ac 24 9c 00 00 00 51 d9 1c 24 55 8d 8c
107871a0: 24 98 00 00 00 e8 c6 c8 18 00 8b 84 24 30 01 00
107871b0: 00 85 c0 74 75 8d 94 24 90 00 00 00 52 50 56 e8
107871c0: bc ce ff ff 83 c4 0c 84 c0 75 5f 8d 8c 24 90 00
107871d0: 00 00 e8 f9 6f 89 ff 8d 4c 24 64 e8 f0 6f 89 ff
107871e0: 8b 44 24 44 85 c0 74 09 50 e8 a2 1c 19 00 83 c4
107871f0: 04 8b 44 24 14 85 c0 74 09 50 e8 91 1c 19 00 83
10787200: c4 04 8d 4c 24 54 e8 15 7a d8 ff 8d 4c 24 24 e8
10787210: 0c 7a d8 ff 8d 4c 24 34 e8 03 7a d8 ff 5f 5e 5b
10787220: 32 c0 5d 81 c4 dc 00 00 00 c3 6a 00 6a 00 8d 4c
10787230: 24 6c e8 a9 cc 18 00 55 8d 44 24 68 50 8d 8c 24
10787240: dc 00 00 00 e8 57 50 e4 ff 6a 00 6a 00 8d 8c 24
10787250: 98 00 00 00 e8 87 cc 18 00 55 8d 8c 24 94 00 00
10787260: 00 51 8d 8c 24 c4 00 00 00 e8 32 50 e4 ff 8b 13
10787270: 8b 52 10 6a ff 6a ff 8d 84 24 c4 00 00 00 50 8d
10787280: 8c 24 e0 00 00 00 51 8d 44 24 54 50 8d 4c 24 28
10787290: 51 57 8b cb ff d2 6a 00 55 6a 00 6a 00 6a 00 8d
107872a0: 4c 24 78 8a d8 e8 96 c9 18 00 8d 8c 24 bc 00 00
107872b0: 00 e8 4a 36 e4 ff 8d 8c 24 d4 00 00 00 e8 3e 36
107872c0: e4 ff 8d 8c 24 90 00 00 00 e8 02 6f 89 ff 8d 4c
107872d0: 24 64 e8 f9 6e 89 ff 8b 44 24 44 85 c0 74 09 50
107872e0: e8 ab 1b 19 00 83 c4 04 8b 44 24 14 85 c0 74 09
107872f0: 50 e8 9a 1b 19 00 83 c4 04 8d 4c 24 54 e8 1e 79
10787300: d8 ff 8d 4c 24 24 e8 15 79 d8 ff 8d 4c 24 34 e8
10787310: 0c 79 d8 ff 5f 5e 8a c3 5b 5d 81 c4 dc 00 00 00
10787320: c3 32 c0 5d 81 c4 dc 00 00 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10786f60 <.text+0x785f60>:
10786f60:	81 ec dc 00 00 00                               	sub    esp,0xdc
10786f66:	83 bc 24 08 01 00 00 00                         	cmp    DWORD PTR [esp+0x108],0x0
10786f6e:	55                                              	push   ebp
10786f6f:	0f 84 ac 03 00 00                               	je     0x10787321
10786f75:	83 bc 24 10 01 00 00 00                         	cmp    DWORD PTR [esp+0x110],0x0
10786f7d:	0f 84 9e 03 00 00                               	je     0x10787321
10786f83:	83 bc 24 14 01 00 00 00                         	cmp    DWORD PTR [esp+0x114],0x0
10786f8b:	0f 84 90 03 00 00                               	je     0x10787321
10786f91:	8b ac 24 18 01 00 00                            	mov    ebp,DWORD PTR [esp+0x118]
10786f98:	85 ed                                           	test   ebp,ebp
10786f9a:	0f 84 81 03 00 00                               	je     0x10787321
10786fa0:	83 bc 24 1c 01 00 00 00                         	cmp    DWORD PTR [esp+0x11c],0x0
10786fa8:	0f 84 73 03 00 00                               	je     0x10787321
10786fae:	83 bc 24 20 01 00 00 00                         	cmp    DWORD PTR [esp+0x120],0x0
10786fb6:	0f 84 65 03 00 00                               	je     0x10787321
10786fbc:	53                                              	push   ebx
10786fbd:	56                                              	push   esi
10786fbe:	e8 5d 41 dd ff                                  	call   0x1055b120
10786fc3:	8b f0                                           	mov    esi,eax
10786fc5:	e8 f6 d4 fe ff                                  	call   0x107744c0
10786fca:	68 64 89 f8 04                                  	push   0x4f88964
10786fcf:	8b c8                                           	mov    ecx,eax
10786fd1:	e8 9a 10 ff ff                                  	call   0x10778070
10786fd6:	8b d8                                           	mov    ebx,eax
10786fd8:	85 db                                           	test   ebx,ebx
10786fda:	75 0c                                           	jne    0x10786fe8
10786fdc:	5e                                              	pop    esi
10786fdd:	5b                                              	pop    ebx
10786fde:	32 c0                                           	xor    al,al
10786fe0:	5d                                              	pop    ebp
10786fe1:	81 c4 dc 00 00 00                               	add    esp,0xdc
10786fe7:	c3                                              	ret
10786fe8:	8b 8c 24 10 01 00 00                            	mov    ecx,DWORD PTR [esp+0x110]
10786fef:	8b 06                                           	mov    eax,DWORD PTR [esi]
10786ff1:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
10786ff4:	57                                              	push   edi
10786ff5:	51                                              	push   ecx
10786ff6:	8b ce                                           	mov    ecx,esi
10786ff8:	ff d2                                           	call   edx
10786ffa:	8b 8c 24 18 01 00 00                            	mov    ecx,DWORD PTR [esp+0x118]
10787001:	8b f8                                           	mov    edi,eax
10787003:	8b 06                                           	mov    eax,DWORD PTR [esi]
10787005:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
10787008:	51                                              	push   ecx
10787009:	8b ce                                           	mov    ecx,esi
1078700b:	ff d2                                           	call   edx
1078700d:	6a 00                                           	push   0x0
1078700f:	6a ff                                           	push   0xffffffff
10787011:	50                                              	push   eax
10787012:	8d 44 24 40                                     	lea    eax,[esp+0x40]
10787016:	50                                              	push   eax
10787017:	e8 04 ff 19 00                                  	call   0x10926f20
1078701c:	8b 16                                           	mov    edx,DWORD PTR [esi]
1078701e:	8b 84 24 2c 01 00 00                            	mov    eax,DWORD PTR [esp+0x12c]
10787025:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10787028:	83 c4 10                                        	add    esp,0x10
1078702b:	50                                              	push   eax
1078702c:	8b ce                                           	mov    ecx,esi
1078702e:	ff d2                                           	call   edx
10787030:	6a 00                                           	push   0x0
10787032:	6a ff                                           	push   0xffffffff
10787034:	50                                              	push   eax
10787035:	8d 44 24 30                                     	lea    eax,[esp+0x30]
10787039:	50                                              	push   eax
1078703a:	e8 e1 fe 19 00                                  	call   0x10926f20
1078703f:	8b 16                                           	mov    edx,DWORD PTR [esi]
10787041:	8b 84 24 30 01 00 00                            	mov    eax,DWORD PTR [esp+0x130]
10787048:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1078704b:	83 c4 10                                        	add    esp,0x10
1078704e:	50                                              	push   eax
1078704f:	8b ce                                           	mov    ecx,esi
10787051:	ff d2                                           	call   edx
10787053:	6a 00                                           	push   0x0
10787055:	6a ff                                           	push   0xffffffff
10787057:	50                                              	push   eax
10787058:	8d 44 24 60                                     	lea    eax,[esp+0x60]
1078705c:	50                                              	push   eax
1078705d:	e8 be fe 19 00                                  	call   0x10926f20
10787062:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
10787066:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
1078706a:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
1078706e:	83 c4 10                                        	add    esp,0x10
10787071:	51                                              	push   ecx
10787072:	8b 8c 24 14 01 00 00                            	mov    ecx,DWORD PTR [esp+0x114]
10787079:	52                                              	push   edx
1078707a:	8b 94 24 14 01 00 00                            	mov    edx,DWORD PTR [esp+0x114]
10787081:	50                                              	push   eax
10787082:	8b 84 24 14 01 00 00                            	mov    eax,DWORD PTR [esp+0x114]
10787089:	51                                              	push   ecx
1078708a:	8b 8c 24 14 01 00 00                            	mov    ecx,DWORD PTR [esp+0x114]
10787091:	52                                              	push   edx
10787092:	8b 94 24 14 01 00 00                            	mov    edx,DWORD PTR [esp+0x114]
10787099:	50                                              	push   eax
1078709a:	8b 84 24 14 01 00 00                            	mov    eax,DWORD PTR [esp+0x114]
107870a1:	51                                              	push   ecx
107870a2:	8b 8c 24 14 01 00 00                            	mov    ecx,DWORD PTR [esp+0x114]
107870a9:	52                                              	push   edx
107870aa:	8b 94 24 14 01 00 00                            	mov    edx,DWORD PTR [esp+0x114]
107870b1:	50                                              	push   eax
107870b2:	8b 84 24 14 01 00 00                            	mov    eax,DWORD PTR [esp+0x114]
107870b9:	51                                              	push   ecx
107870ba:	8b 0d 90 f5 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8f590
107870c0:	52                                              	push   edx
107870c1:	50                                              	push   eax
107870c2:	e8 39 83 be ff                                  	call   0x1036f400
107870c7:	8b c8                                           	mov    ecx,eax
107870c9:	e8 02 7c 05 00                                  	call   0x107decd0
107870ce:	8b c8                                           	mov    ecx,eax
107870d0:	e8 eb 03 0a 00                                  	call   0x108274c0
107870d5:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
107870d9:	51                                              	push   ecx
107870da:	c7 44 24 14 b8 90 b5 10                         	mov    DWORD PTR [esp+0x14],0x10b590b8
107870e2:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
107870e6:	e8 25 07 fa ff                                  	call   0x10727810
107870eb:	8d 54 24 14                                     	lea    edx,[esp+0x14]
107870ef:	52                                              	push   edx
107870f0:	55                                              	push   ebp
107870f1:	56                                              	push   esi
107870f2:	e8 19 cf ff ff                                  	call   0x10784010
107870f7:	83 c4 0c                                        	add    esp,0xc
107870fa:	84 c0                                           	test   al,al
107870fc:	0f 84 ef 00 00 00                               	je     0x107871f1
10787102:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10787106:	50                                              	push   eax
10787107:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
1078710b:	c7 44 24 14 8c 90 b5 10                         	mov    DWORD PTR [esp+0x14],0x10b5908c
10787113:	e8 f8 06 fa ff                                  	call   0x10727810
10787118:	8b 94 24 28 01 00 00                            	mov    edx,DWORD PTR [esp+0x128]
1078711f:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
10787123:	51                                              	push   ecx
10787124:	52                                              	push   edx
10787125:	56                                              	push   esi
10787126:	e8 b5 f8 ff ff                                  	call   0x107869e0
1078712b:	83 c4 0c                                        	add    esp,0xc
1078712e:	84 c0                                           	test   al,al
10787130:	0f 84 aa 00 00 00                               	je     0x107871e0
10787136:	68 60 90 b5 10                                  	push   0x10b59060
1078713b:	6a 00                                           	push   0x0
1078713d:	6a 00                                           	push   0x0
1078713f:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
10787143:	e8 48 cf 18 00                                  	call   0x10914090
10787148:	d9 e8                                           	fld1
1078714a:	51                                              	push   ecx
1078714b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1078714e:	bd 01 00 00 00                                  	mov    ebp,0x1
10787153:	01 6c 24 74                                     	add    DWORD PTR [esp+0x74],ebp
10787157:	55                                              	push   ebp
10787158:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
1078715c:	e8 0f c9 18 00                                  	call   0x10913a70
10787161:	8b 8c 24 2c 01 00 00                            	mov    ecx,DWORD PTR [esp+0x12c]
10787168:	8d 44 24 64                                     	lea    eax,[esp+0x64]
1078716c:	50                                              	push   eax
1078716d:	51                                              	push   ecx
1078716e:	56                                              	push   esi
1078716f:	e8 0c cf ff ff                                  	call   0x10784080
10787174:	83 c4 0c                                        	add    esp,0xc
10787177:	84 c0                                           	test   al,al
10787179:	74 5c                                           	je     0x107871d7
1078717b:	68 58 8d b5 10                                  	push   0x10b58d58
10787180:	6a 00                                           	push   0x0
10787182:	6a 00                                           	push   0x0
10787184:	8d 8c 24 9c 00 00 00                            	lea    ecx,[esp+0x9c]
1078718b:	e8 00 cf 18 00                                  	call   0x10914090
10787190:	d9 e8                                           	fld1
10787192:	01 ac 24 9c 00 00 00                            	add    DWORD PTR [esp+0x9c],ebp
10787199:	51                                              	push   ecx
1078719a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1078719d:	55                                              	push   ebp
1078719e:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
107871a5:	e8 c6 c8 18 00                                  	call   0x10913a70
107871aa:	8b 84 24 30 01 00 00                            	mov    eax,DWORD PTR [esp+0x130]
107871b1:	85 c0                                           	test   eax,eax
107871b3:	74 75                                           	je     0x1078722a
107871b5:	8d 94 24 90 00 00 00                            	lea    edx,[esp+0x90]
107871bc:	52                                              	push   edx
107871bd:	50                                              	push   eax
107871be:	56                                              	push   esi
107871bf:	e8 bc ce ff ff                                  	call   0x10784080
107871c4:	83 c4 0c                                        	add    esp,0xc
107871c7:	84 c0                                           	test   al,al
107871c9:	75 5f                                           	jne    0x1078722a
107871cb:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
107871d2:	e8 f9 6f 89 ff                                  	call   0x1001e1d0
107871d7:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
107871db:	e8 f0 6f 89 ff                                  	call   0x1001e1d0
107871e0:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
107871e4:	85 c0                                           	test   eax,eax
107871e6:	74 09                                           	je     0x107871f1
107871e8:	50                                              	push   eax
107871e9:	e8 a2 1c 19 00                                  	call   0x10918e90
107871ee:	83 c4 04                                        	add    esp,0x4
107871f1:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
107871f5:	85 c0                                           	test   eax,eax
107871f7:	74 09                                           	je     0x10787202
107871f9:	50                                              	push   eax
107871fa:	e8 91 1c 19 00                                  	call   0x10918e90
107871ff:	83 c4 04                                        	add    esp,0x4
10787202:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10787206:	e8 15 7a d8 ff                                  	call   0x1050ec20
1078720b:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1078720f:	e8 0c 7a d8 ff                                  	call   0x1050ec20
10787214:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
10787218:	e8 03 7a d8 ff                                  	call   0x1050ec20
1078721d:	5f                                              	pop    edi
1078721e:	5e                                              	pop    esi
1078721f:	5b                                              	pop    ebx
10787220:	32 c0                                           	xor    al,al
10787222:	5d                                              	pop    ebp
10787223:	81 c4 dc 00 00 00                               	add    esp,0xdc
10787229:	c3                                              	ret
1078722a:	6a 00                                           	push   0x0
1078722c:	6a 00                                           	push   0x0
1078722e:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
10787232:	e8 a9 cc 18 00                                  	call   0x10913ee0
10787237:	55                                              	push   ebp
10787238:	8d 44 24 68                                     	lea    eax,[esp+0x68]
1078723c:	50                                              	push   eax
1078723d:	8d 8c 24 dc 00 00 00                            	lea    ecx,[esp+0xdc]
10787244:	e8 57 50 e4 ff                                  	call   0x105cc2a0
10787249:	6a 00                                           	push   0x0
1078724b:	6a 00                                           	push   0x0
1078724d:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
10787254:	e8 87 cc 18 00                                  	call   0x10913ee0
10787259:	55                                              	push   ebp
1078725a:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
10787261:	51                                              	push   ecx
10787262:	8d 8c 24 c4 00 00 00                            	lea    ecx,[esp+0xc4]
10787269:	e8 32 50 e4 ff                                  	call   0x105cc2a0
1078726e:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10787270:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
10787273:	6a ff                                           	push   0xffffffff
10787275:	6a ff                                           	push   0xffffffff
10787277:	8d 84 24 c4 00 00 00                            	lea    eax,[esp+0xc4]
1078727e:	50                                              	push   eax
1078727f:	8d 8c 24 e0 00 00 00                            	lea    ecx,[esp+0xe0]
10787286:	51                                              	push   ecx
10787287:	8d 44 24 54                                     	lea    eax,[esp+0x54]
1078728b:	50                                              	push   eax
1078728c:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10787290:	51                                              	push   ecx
10787291:	57                                              	push   edi
10787292:	8b cb                                           	mov    ecx,ebx
10787294:	ff d2                                           	call   edx
10787296:	6a 00                                           	push   0x0
10787298:	55                                              	push   ebp
10787299:	6a 00                                           	push   0x0
1078729b:	6a 00                                           	push   0x0
1078729d:	6a 00                                           	push   0x0
1078729f:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
107872a3:	8a d8                                           	mov    bl,al
107872a5:	e8 96 c9 18 00                                  	call   0x10913c40
107872aa:	8d 8c 24 bc 00 00 00                            	lea    ecx,[esp+0xbc]
107872b1:	e8 4a 36 e4 ff                                  	call   0x105ca900
107872b6:	8d 8c 24 d4 00 00 00                            	lea    ecx,[esp+0xd4]
107872bd:	e8 3e 36 e4 ff                                  	call   0x105ca900
107872c2:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
107872c9:	e8 02 6f 89 ff                                  	call   0x1001e1d0
107872ce:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
107872d2:	e8 f9 6e 89 ff                                  	call   0x1001e1d0
107872d7:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
107872db:	85 c0                                           	test   eax,eax
107872dd:	74 09                                           	je     0x107872e8
107872df:	50                                              	push   eax
107872e0:	e8 ab 1b 19 00                                  	call   0x10918e90
107872e5:	83 c4 04                                        	add    esp,0x4
107872e8:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
107872ec:	85 c0                                           	test   eax,eax
107872ee:	74 09                                           	je     0x107872f9
107872f0:	50                                              	push   eax
107872f1:	e8 9a 1b 19 00                                  	call   0x10918e90
107872f6:	83 c4 04                                        	add    esp,0x4
107872f9:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
107872fd:	e8 1e 79 d8 ff                                  	call   0x1050ec20
10787302:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10787306:	e8 15 79 d8 ff                                  	call   0x1050ec20
1078730b:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1078730f:	e8 0c 79 d8 ff                                  	call   0x1050ec20
10787314:	5f                                              	pop    edi
10787315:	5e                                              	pop    esi
10787316:	8a c3                                           	mov    al,bl
10787318:	5b                                              	pop    ebx
10787319:	5d                                              	pop    ebp
1078731a:	81 c4 dc 00 00 00                               	add    esp,0xdc
10787320:	c3                                              	ret
10787321:	32 c0                                           	xor    al,al
10787323:	5d                                              	pop    ebp
10787324:	81 c4 dc 00 00 00                               	add    esp,0xdc
1078732a:	c3                                              	ret
1078732b:	cc                                              	int3
1078732c:	cc                                              	int3
1078732d:	cc                                              	int3
1078732e:	cc                                              	int3
1078732f:	cc                                              	int3
