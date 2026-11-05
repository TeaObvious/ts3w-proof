# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00997f50 (ScriptCore.DownloadContent::DownloadContent_CreateHostMySimInvite)
Paired Ghidra pseudocode: 00997F50_ScriptCore_DownloadContent_DownloadContent_CreateHostMySimInvite.c
Window: [0x00997f50, 0x00998320) (976 bytes; stop exclusive)
Next defined Ghidra entry: 0x00998320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00997f50: 81 ec dc 00 00 00 83 bc 24 08 01 00 00 00 55 0f
00997f60: 84 ac 03 00 00 83 bc 24 10 01 00 00 00 0f 84 9e
00997f70: 03 00 00 83 bc 24 14 01 00 00 00 0f 84 90 03 00
00997f80: 00 8b ac 24 18 01 00 00 85 ed 0f 84 81 03 00 00
00997f90: 83 bc 24 1c 01 00 00 00 0f 84 73 03 00 00 83 bc
00997fa0: 24 20 01 00 00 00 0f 84 65 03 00 00 53 56 e8 dd
00997fb0: 13 dd ff 8b f0 e8 a6 ae fe ff 68 64 89 f8 04 8b
00997fc0: c8 e8 5a e9 fe ff 8b d8 85 db 75 0c 5e 5b 32 c0
00997fd0: 5d 81 c4 dc 00 00 00 c3 8b 8c 24 10 01 00 00 8b
00997fe0: 06 8b 50 58 57 51 8b ce ff d2 8b 8c 24 18 01 00
00997ff0: 00 8b f8 8b 06 8b 50 58 51 8b ce ff d2 6a 00 6a
00998000: ff 50 8d 44 24 40 50 e8 b4 bc b5 ff 8b 16 8b 84
00998010: 24 2c 01 00 00 8b 52 58 83 c4 10 50 8b ce ff d2
00998020: 6a 00 6a ff 50 8d 44 24 30 50 e8 91 bc b5 ff 8b
00998030: 16 8b 84 24 30 01 00 00 8b 52 58 83 c4 10 50 8b
00998040: ce ff d2 6a 00 6a ff 50 8d 44 24 60 50 e8 6e bc
00998050: b5 ff 8b 4c 24 64 8b 54 24 34 8b 44 24 44 83 c4
00998060: 10 51 8b 8c 24 14 01 00 00 52 8b 94 24 14 01 00
00998070: 00 50 8b 84 24 14 01 00 00 51 8b 8c 24 14 01 00
00998080: 00 52 8b 94 24 14 01 00 00 50 8b 84 24 14 01 00
00998090: 00 51 8b 8c 24 14 01 00 00 52 8b 94 24 14 01 00
009980a0: 00 50 8b 84 24 14 01 00 00 51 8b 0d a0 bd 1e 01
009980b0: 52 50 e8 b9 3f bd ff 8b c8 e8 32 67 04 00 8b c8
009980c0: e8 bb 3d 0a 00 8d 4c 24 10 51 c7 44 24 14 e0 a3
009980d0: 04 01 8d 4c 24 18 e8 25 14 e4 ff 8d 54 24 14 52
009980e0: 55 56 e8 59 ce ff ff 83 c4 0c 84 c0 0f 84 ef 00
009980f0: 00 00 8d 44 24 10 50 8d 4c 24 48 c7 44 24 14 b4
00998100: a3 04 01 e8 f8 13 e4 ff 8b 94 24 28 01 00 00 8d
00998110: 4c 24 44 51 52 56 e8 b5 f8 ff ff 83 c4 0c 84 c0
00998120: 0f 84 aa 00 00 00 68 88 a3 04 01 6a 00 6a 00 8d
00998130: 4c 24 70 e8 28 73 b4 ff d9 e8 51 d9 1c 24 bd 01
00998140: 00 00 00 01 6c 24 74 55 8d 4c 24 6c e8 ef 6c b4
00998150: ff 8b 8c 24 2c 01 00 00 8d 44 24 64 50 51 56 e8
00998160: 4c ce ff ff 83 c4 0c 84 c0 74 5c 68 80 a0 04 01
00998170: 6a 00 6a 00 8d 8c 24 9c 00 00 00 e8 e0 72 b4 ff
00998180: d9 e8 01 ac 24 9c 00 00 00 51 d9 1c 24 55 8d 8c
00998190: 24 98 00 00 00 e8 a6 6c b4 ff 8b 84 24 30 01 00
009981a0: 00 85 c0 74 75 8d 94 24 90 00 00 00 52 50 56 e8
009981b0: fc cd ff ff 83 c4 0c 84 c0 75 5f 8d 8c 24 90 00
009981c0: 00 00 e8 69 d9 ab ff 8d 4c 24 64 e8 60 d9 ab ff
009981d0: 8b 44 24 44 85 c0 74 09 50 e8 02 c3 b4 ff 83 c4
009981e0: 04 8b 44 24 14 85 c0 74 09 50 e8 f1 c2 b4 ff 83
009981f0: c4 04 8d 4c 24 54 e8 c5 44 d8 ff 8d 4c 24 24 e8
00998200: bc 44 d8 ff 8d 4c 24 34 e8 b3 44 d8 ff 5f 5e 5b
00998210: 32 c0 5d 81 c4 dc 00 00 00 c3 6a 00 6a 00 8d 4c
00998220: 24 6c e8 89 70 b4 ff 55 8d 44 24 68 50 8d 8c 24
00998230: dc 00 00 00 e8 a7 11 e4 ff 6a 00 6a 00 8d 8c 24
00998240: 98 00 00 00 e8 67 70 b4 ff 55 8d 8c 24 94 00 00
00998250: 00 51 8d 8c 24 c4 00 00 00 e8 82 11 e4 ff 8b 13
00998260: 8b 52 10 6a ff 6a ff 8d 84 24 c4 00 00 00 50 8d
00998270: 8c 24 e0 00 00 00 51 8d 44 24 54 50 8d 4c 24 28
00998280: 51 57 8b cb ff d2 6a 00 55 6a 00 6a 00 6a 00 8d
00998290: 4c 24 78 8a d8 e8 76 6d b4 ff 8d 8c 24 bc 00 00
009982a0: 00 e8 ea f6 e3 ff 8d 8c 24 d4 00 00 00 e8 de f6
009982b0: e3 ff 8d 8c 24 90 00 00 00 e8 72 d8 ab ff 8d 4c
009982c0: 24 64 e8 69 d8 ab ff 8b 44 24 44 85 c0 74 09 50
009982d0: e8 0b c2 b4 ff 83 c4 04 8b 44 24 14 85 c0 74 09
009982e0: 50 e8 fa c1 b4 ff 83 c4 04 8d 4c 24 54 e8 ce 43
009982f0: d8 ff 8d 4c 24 24 e8 c5 43 d8 ff 8d 4c 24 34 e8
00998300: bc 43 d8 ff 5f 5e 8a c3 5b 5d 81 c4 dc 00 00 00
00998310: c3 32 c0 5d 81 c4 dc 00 00 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00997f50 <.text+0x596f50>:
  997f50:	81 ec dc 00 00 00                               	sub    esp,0xdc
  997f56:	83 bc 24 08 01 00 00 00                         	cmp    DWORD PTR [esp+0x108],0x0
  997f5e:	55                                              	push   ebp
  997f5f:	0f 84 ac 03 00 00                               	je     0x998311
  997f65:	83 bc 24 10 01 00 00 00                         	cmp    DWORD PTR [esp+0x110],0x0
  997f6d:	0f 84 9e 03 00 00                               	je     0x998311
  997f73:	83 bc 24 14 01 00 00 00                         	cmp    DWORD PTR [esp+0x114],0x0
  997f7b:	0f 84 90 03 00 00                               	je     0x998311
  997f81:	8b ac 24 18 01 00 00                            	mov    ebp,DWORD PTR [esp+0x118]
  997f88:	85 ed                                           	test   ebp,ebp
  997f8a:	0f 84 81 03 00 00                               	je     0x998311
  997f90:	83 bc 24 1c 01 00 00 00                         	cmp    DWORD PTR [esp+0x11c],0x0
  997f98:	0f 84 73 03 00 00                               	je     0x998311
  997f9e:	83 bc 24 20 01 00 00 00                         	cmp    DWORD PTR [esp+0x120],0x0
  997fa6:	0f 84 65 03 00 00                               	je     0x998311
  997fac:	53                                              	push   ebx
  997fad:	56                                              	push   esi
  997fae:	e8 dd 13 dd ff                                  	call   0x769390
  997fb3:	8b f0                                           	mov    esi,eax
  997fb5:	e8 a6 ae fe ff                                  	call   0x982e60
  997fba:	68 64 89 f8 04                                  	push   0x4f88964
  997fbf:	8b c8                                           	mov    ecx,eax
  997fc1:	e8 5a e9 fe ff                                  	call   0x986920
  997fc6:	8b d8                                           	mov    ebx,eax
  997fc8:	85 db                                           	test   ebx,ebx
  997fca:	75 0c                                           	jne    0x997fd8
  997fcc:	5e                                              	pop    esi
  997fcd:	5b                                              	pop    ebx
  997fce:	32 c0                                           	xor    al,al
  997fd0:	5d                                              	pop    ebp
  997fd1:	81 c4 dc 00 00 00                               	add    esp,0xdc
  997fd7:	c3                                              	ret
  997fd8:	8b 8c 24 10 01 00 00                            	mov    ecx,DWORD PTR [esp+0x110]
  997fdf:	8b 06                                           	mov    eax,DWORD PTR [esi]
  997fe1:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  997fe4:	57                                              	push   edi
  997fe5:	51                                              	push   ecx
  997fe6:	8b ce                                           	mov    ecx,esi
  997fe8:	ff d2                                           	call   edx
  997fea:	8b 8c 24 18 01 00 00                            	mov    ecx,DWORD PTR [esp+0x118]
  997ff1:	8b f8                                           	mov    edi,eax
  997ff3:	8b 06                                           	mov    eax,DWORD PTR [esi]
  997ff5:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  997ff8:	51                                              	push   ecx
  997ff9:	8b ce                                           	mov    ecx,esi
  997ffb:	ff d2                                           	call   edx
  997ffd:	6a 00                                           	push   0x0
  997fff:	6a ff                                           	push   0xffffffff
  998001:	50                                              	push   eax
  998002:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  998006:	50                                              	push   eax
  998007:	e8 b4 bc b5 ff                                  	call   0x4f3cc0
  99800c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  99800e:	8b 84 24 2c 01 00 00                            	mov    eax,DWORD PTR [esp+0x12c]
  998015:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  998018:	83 c4 10                                        	add    esp,0x10
  99801b:	50                                              	push   eax
  99801c:	8b ce                                           	mov    ecx,esi
  99801e:	ff d2                                           	call   edx
  998020:	6a 00                                           	push   0x0
  998022:	6a ff                                           	push   0xffffffff
  998024:	50                                              	push   eax
  998025:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  998029:	50                                              	push   eax
  99802a:	e8 91 bc b5 ff                                  	call   0x4f3cc0
  99802f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  998031:	8b 84 24 30 01 00 00                            	mov    eax,DWORD PTR [esp+0x130]
  998038:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  99803b:	83 c4 10                                        	add    esp,0x10
  99803e:	50                                              	push   eax
  99803f:	8b ce                                           	mov    ecx,esi
  998041:	ff d2                                           	call   edx
  998043:	6a 00                                           	push   0x0
  998045:	6a ff                                           	push   0xffffffff
  998047:	50                                              	push   eax
  998048:	8d 44 24 60                                     	lea    eax,[esp+0x60]
  99804c:	50                                              	push   eax
  99804d:	e8 6e bc b5 ff                                  	call   0x4f3cc0
  998052:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  998056:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  99805a:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  99805e:	83 c4 10                                        	add    esp,0x10
  998061:	51                                              	push   ecx
  998062:	8b 8c 24 14 01 00 00                            	mov    ecx,DWORD PTR [esp+0x114]
  998069:	52                                              	push   edx
  99806a:	8b 94 24 14 01 00 00                            	mov    edx,DWORD PTR [esp+0x114]
  998071:	50                                              	push   eax
  998072:	8b 84 24 14 01 00 00                            	mov    eax,DWORD PTR [esp+0x114]
  998079:	51                                              	push   ecx
  99807a:	8b 8c 24 14 01 00 00                            	mov    ecx,DWORD PTR [esp+0x114]
  998081:	52                                              	push   edx
  998082:	8b 94 24 14 01 00 00                            	mov    edx,DWORD PTR [esp+0x114]
  998089:	50                                              	push   eax
  99808a:	8b 84 24 14 01 00 00                            	mov    eax,DWORD PTR [esp+0x114]
  998091:	51                                              	push   ecx
  998092:	8b 8c 24 14 01 00 00                            	mov    ecx,DWORD PTR [esp+0x114]
  998099:	52                                              	push   edx
  99809a:	8b 94 24 14 01 00 00                            	mov    edx,DWORD PTR [esp+0x114]
  9980a1:	50                                              	push   eax
  9980a2:	8b 84 24 14 01 00 00                            	mov    eax,DWORD PTR [esp+0x114]
  9980a9:	51                                              	push   ecx
  9980aa:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  9980b0:	52                                              	push   edx
  9980b1:	50                                              	push   eax
  9980b2:	e8 b9 3f bd ff                                  	call   0x56c070
  9980b7:	8b c8                                           	mov    ecx,eax
  9980b9:	e8 32 67 04 00                                  	call   0x9de7f0
  9980be:	8b c8                                           	mov    ecx,eax
  9980c0:	e8 bb 3d 0a 00                                  	call   0xa3be80
  9980c5:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  9980c9:	51                                              	push   ecx
  9980ca:	c7 44 24 14 e0 a3 04 01                         	mov    DWORD PTR [esp+0x14],0x104a3e0
  9980d2:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  9980d6:	e8 25 14 e4 ff                                  	call   0x7d9500
  9980db:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  9980df:	52                                              	push   edx
  9980e0:	55                                              	push   ebp
  9980e1:	56                                              	push   esi
  9980e2:	e8 59 ce ff ff                                  	call   0x994f40
  9980e7:	83 c4 0c                                        	add    esp,0xc
  9980ea:	84 c0                                           	test   al,al
  9980ec:	0f 84 ef 00 00 00                               	je     0x9981e1
  9980f2:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  9980f6:	50                                              	push   eax
  9980f7:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  9980fb:	c7 44 24 14 b4 a3 04 01                         	mov    DWORD PTR [esp+0x14],0x104a3b4
  998103:	e8 f8 13 e4 ff                                  	call   0x7d9500
  998108:	8b 94 24 28 01 00 00                            	mov    edx,DWORD PTR [esp+0x128]
  99810f:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  998113:	51                                              	push   ecx
  998114:	52                                              	push   edx
  998115:	56                                              	push   esi
  998116:	e8 b5 f8 ff ff                                  	call   0x9979d0
  99811b:	83 c4 0c                                        	add    esp,0xc
  99811e:	84 c0                                           	test   al,al
  998120:	0f 84 aa 00 00 00                               	je     0x9981d0
  998126:	68 88 a3 04 01                                  	push   0x104a388
  99812b:	6a 00                                           	push   0x0
  99812d:	6a 00                                           	push   0x0
  99812f:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  998133:	e8 28 73 b4 ff                                  	call   0x4df460
  998138:	d9 e8                                           	fld1
  99813a:	51                                              	push   ecx
  99813b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  99813e:	bd 01 00 00 00                                  	mov    ebp,0x1
  998143:	01 6c 24 74                                     	add    DWORD PTR [esp+0x74],ebp
  998147:	55                                              	push   ebp
  998148:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  99814c:	e8 ef 6c b4 ff                                  	call   0x4dee40
  998151:	8b 8c 24 2c 01 00 00                            	mov    ecx,DWORD PTR [esp+0x12c]
  998158:	8d 44 24 64                                     	lea    eax,[esp+0x64]
  99815c:	50                                              	push   eax
  99815d:	51                                              	push   ecx
  99815e:	56                                              	push   esi
  99815f:	e8 4c ce ff ff                                  	call   0x994fb0
  998164:	83 c4 0c                                        	add    esp,0xc
  998167:	84 c0                                           	test   al,al
  998169:	74 5c                                           	je     0x9981c7
  99816b:	68 80 a0 04 01                                  	push   0x104a080
  998170:	6a 00                                           	push   0x0
  998172:	6a 00                                           	push   0x0
  998174:	8d 8c 24 9c 00 00 00                            	lea    ecx,[esp+0x9c]
  99817b:	e8 e0 72 b4 ff                                  	call   0x4df460
  998180:	d9 e8                                           	fld1
  998182:	01 ac 24 9c 00 00 00                            	add    DWORD PTR [esp+0x9c],ebp
  998189:	51                                              	push   ecx
  99818a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  99818d:	55                                              	push   ebp
  99818e:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
  998195:	e8 a6 6c b4 ff                                  	call   0x4dee40
  99819a:	8b 84 24 30 01 00 00                            	mov    eax,DWORD PTR [esp+0x130]
  9981a1:	85 c0                                           	test   eax,eax
  9981a3:	74 75                                           	je     0x99821a
  9981a5:	8d 94 24 90 00 00 00                            	lea    edx,[esp+0x90]
  9981ac:	52                                              	push   edx
  9981ad:	50                                              	push   eax
  9981ae:	56                                              	push   esi
  9981af:	e8 fc cd ff ff                                  	call   0x994fb0
  9981b4:	83 c4 0c                                        	add    esp,0xc
  9981b7:	84 c0                                           	test   al,al
  9981b9:	75 5f                                           	jne    0x99821a
  9981bb:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
  9981c2:	e8 69 d9 ab ff                                  	call   0x455b30
  9981c7:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  9981cb:	e8 60 d9 ab ff                                  	call   0x455b30
  9981d0:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  9981d4:	85 c0                                           	test   eax,eax
  9981d6:	74 09                                           	je     0x9981e1
  9981d8:	50                                              	push   eax
  9981d9:	e8 02 c3 b4 ff                                  	call   0x4e44e0
  9981de:	83 c4 04                                        	add    esp,0x4
  9981e1:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  9981e5:	85 c0                                           	test   eax,eax
  9981e7:	74 09                                           	je     0x9981f2
  9981e9:	50                                              	push   eax
  9981ea:	e8 f1 c2 b4 ff                                  	call   0x4e44e0
  9981ef:	83 c4 04                                        	add    esp,0x4
  9981f2:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  9981f6:	e8 c5 44 d8 ff                                  	call   0x71c6c0
  9981fb:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  9981ff:	e8 bc 44 d8 ff                                  	call   0x71c6c0
  998204:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  998208:	e8 b3 44 d8 ff                                  	call   0x71c6c0
  99820d:	5f                                              	pop    edi
  99820e:	5e                                              	pop    esi
  99820f:	5b                                              	pop    ebx
  998210:	32 c0                                           	xor    al,al
  998212:	5d                                              	pop    ebp
  998213:	81 c4 dc 00 00 00                               	add    esp,0xdc
  998219:	c3                                              	ret
  99821a:	6a 00                                           	push   0x0
  99821c:	6a 00                                           	push   0x0
  99821e:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  998222:	e8 89 70 b4 ff                                  	call   0x4df2b0
  998227:	55                                              	push   ebp
  998228:	8d 44 24 68                                     	lea    eax,[esp+0x68]
  99822c:	50                                              	push   eax
  99822d:	8d 8c 24 dc 00 00 00                            	lea    ecx,[esp+0xdc]
  998234:	e8 a7 11 e4 ff                                  	call   0x7d93e0
  998239:	6a 00                                           	push   0x0
  99823b:	6a 00                                           	push   0x0
  99823d:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
  998244:	e8 67 70 b4 ff                                  	call   0x4df2b0
  998249:	55                                              	push   ebp
  99824a:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
  998251:	51                                              	push   ecx
  998252:	8d 8c 24 c4 00 00 00                            	lea    ecx,[esp+0xc4]
  998259:	e8 82 11 e4 ff                                  	call   0x7d93e0
  99825e:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  998260:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
  998263:	6a ff                                           	push   0xffffffff
  998265:	6a ff                                           	push   0xffffffff
  998267:	8d 84 24 c4 00 00 00                            	lea    eax,[esp+0xc4]
  99826e:	50                                              	push   eax
  99826f:	8d 8c 24 e0 00 00 00                            	lea    ecx,[esp+0xe0]
  998276:	51                                              	push   ecx
  998277:	8d 44 24 54                                     	lea    eax,[esp+0x54]
  99827b:	50                                              	push   eax
  99827c:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  998280:	51                                              	push   ecx
  998281:	57                                              	push   edi
  998282:	8b cb                                           	mov    ecx,ebx
  998284:	ff d2                                           	call   edx
  998286:	6a 00                                           	push   0x0
  998288:	55                                              	push   ebp
  998289:	6a 00                                           	push   0x0
  99828b:	6a 00                                           	push   0x0
  99828d:	6a 00                                           	push   0x0
  99828f:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
  998293:	8a d8                                           	mov    bl,al
  998295:	e8 76 6d b4 ff                                  	call   0x4df010
  99829a:	8d 8c 24 bc 00 00 00                            	lea    ecx,[esp+0xbc]
  9982a1:	e8 ea f6 e3 ff                                  	call   0x7d7990
  9982a6:	8d 8c 24 d4 00 00 00                            	lea    ecx,[esp+0xd4]
  9982ad:	e8 de f6 e3 ff                                  	call   0x7d7990
  9982b2:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
  9982b9:	e8 72 d8 ab ff                                  	call   0x455b30
  9982be:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  9982c2:	e8 69 d8 ab ff                                  	call   0x455b30
  9982c7:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  9982cb:	85 c0                                           	test   eax,eax
  9982cd:	74 09                                           	je     0x9982d8
  9982cf:	50                                              	push   eax
  9982d0:	e8 0b c2 b4 ff                                  	call   0x4e44e0
  9982d5:	83 c4 04                                        	add    esp,0x4
  9982d8:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  9982dc:	85 c0                                           	test   eax,eax
  9982de:	74 09                                           	je     0x9982e9
  9982e0:	50                                              	push   eax
  9982e1:	e8 fa c1 b4 ff                                  	call   0x4e44e0
  9982e6:	83 c4 04                                        	add    esp,0x4
  9982e9:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  9982ed:	e8 ce 43 d8 ff                                  	call   0x71c6c0
  9982f2:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  9982f6:	e8 c5 43 d8 ff                                  	call   0x71c6c0
  9982fb:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  9982ff:	e8 bc 43 d8 ff                                  	call   0x71c6c0
  998304:	5f                                              	pop    edi
  998305:	5e                                              	pop    esi
  998306:	8a c3                                           	mov    al,bl
  998308:	5b                                              	pop    ebx
  998309:	5d                                              	pop    ebp
  99830a:	81 c4 dc 00 00 00                               	add    esp,0xdc
  998310:	c3                                              	ret
  998311:	32 c0                                           	xor    al,al
  998313:	5d                                              	pop    ebp
  998314:	81 c4 dc 00 00 00                               	add    esp,0xdc
  99831a:	c3                                              	ret
  99831b:	cc                                              	int3
  99831c:	cc                                              	int3
  99831d:	cc                                              	int3
  99831e:	cc                                              	int3
  99831f:	cc                                              	int3
