# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00761e70 (ScriptCore.Route::Route_SubdividePathsWithSelfIntersections)
Paired Ghidra pseudocode: 00761E70_ScriptCore_Route_Route_SubdividePathsWithSelfIntersections.c
Window: [0x00761e70, 0x00762430) (1472 bytes; stop exclusive)
Next defined Ghidra entry: 0x00762430
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00761e70: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 81 ec 24 01
00761e80: 00 00 53 56 57 33 ff 3b cf 0f 84 96 05 00 00 8b
00761e90: 45 08 50 e8 18 96 fe ff 8b f0 3b f7 89 74 24 1c
00761ea0: 0f 84 7f 05 00 00 8b 16 8b 42 10 8b ce ff d0 8a
00761eb0: 8e f4 00 00 00 8b 86 f0 00 00 00 88 4c 24 1a 33
00761ec0: c9 89 4c 24 3c 89 4c 24 40 8d 54 24 3c 8b ca 89
00761ed0: 44 24 74 89 44 24 5c 8d 86 e0 00 00 00 c7 44 24
00761ee0: 44 a8 59 00 01 89 54 24 3c 89 4c 24 40 8b 08 3b
00761ef0: c8 89 7c 24 64 89 7c 24 68 89 7c 24 6c c7 44 24
00761f00: 70 84 59 00 01 c6 44 24 1b 00 89 7c 24 54 89 4c
00761f10: 24 60 0f 84 ea 04 00 00 eb 0a 8d 9b 00 00 00 00
00761f20: 8b 74 24 1c 8b 54 24 60 8b 5a 08 85 db 89 5c 24
00761f30: 50 74 0c 8d 43 04 b9 01 00 00 00 f0 0f c1 08 8b
00761f40: 13 8b 7c 24 64 8b 82 dc 00 00 00 8b cb 89 7c 24
00761f50: 68 ff d0 8b 48 04 8b 00 83 e9 30 3b c1 89 4c 24
00761f60: 58 89 44 24 48 c7 44 24 34 00 00 00 00 0f 83 b9
00761f70: 03 00 00 8d 50 60 89 54 24 20 8b 74 24 34 0f 28
00761f80: 00 0f 28 4a d0 83 c6 02 3b d1 89 54 24 38 0f 83
00761f90: b5 01 00 00 0f 29 8c 24 c0 00 00 00 0f 29 8c 24
00761fa0: f0 00 00 00 0f 29 84 24 00 01 00 00 0f 29 84 24
00761fb0: e0 00 00 00 8b 44 24 38 d9 05 ec e6 06 01 0f 28
00761fc0: 00 0f 28 48 30 51 0f 29 84 24 d4 00 00 00 d9 1c
00761fd0: 24 0f 29 84 24 b4 00 00 00 f3 0f 10 84 24 d4 00
00761fe0: 00 00 f3 0f 11 84 24 ac 00 00 00 f3 0f 10 84 24
00761ff0: bc 00 00 00 f3 0f 11 84 24 b0 00 00 00 f3 0f 10
00762000: 84 24 f4 00 00 00 6a 00 8d 8c 24 98 00 00 00 51
00762010: f3 0f 11 84 24 a4 00 00 00 f3 0f 10 84 24 d4 00
00762020: 00 00 8d 94 24 b4 00 00 00 0f 29 8c 24 1c 01 00
00762030: 00 52 0f 29 8c 24 30 01 00 00 f3 0f 10 8c 24 20
00762040: 01 00 00 f3 0f 11 84 24 ac 00 00 00 f3 0f 10 84
00762050: 24 f0 00 00 00 8d 84 24 a8 00 00 00 50 8d 8c 24
00762060: b4 00 00 00 f3 0f 11 8c 24 a4 00 00 00 f3 0f 10
00762070: 8c 24 3c 01 00 00 f3 0f 11 84 24 b4 00 00 00 f3
00762080: 0f 10 84 24 1c 01 00 00 51 f3 0f 11 8c 24 ac 00
00762090: 00 00 f3 0f 11 84 24 bc 00 00 00 e8 00 bc 06 00
007620a0: 83 c4 18 84 c0 74 7c 8b 44 24 34 83 c0 01 8b d8
007620b0: 89 84 24 80 00 00 00 03 c6 99 2b c2 d1 f8 3b 7c
007620c0: 24 6c 89 5c 24 78 89 74 24 7c 89 b4 24 84 00 00
007620d0: 00 89 84 24 88 00 00 00 c7 84 24 8c 00 00 00 01
007620e0: 00 00 00 73 2b 8b cf 83 c7 18 85 c9 89 7c 24 68
007620f0: 74 31 89 19 89 71 04 8b d3 89 51 08 8b d6 89 51
00762100: 0c 89 41 10 8b 84 24 8c 00 00 00 89 41 14 eb 13
00762110: 8d 4c 24 78 51 57 8d 4c 24 6c e8 71 53 da ff 8b
00762120: 7c 24 68 8b 44 24 38 8b 4c 24 58 83 c0 30 83 c6
00762130: 01 3b c1 89 44 24 38 0f 82 77 fe ff ff 8b 54 24
00762140: 20 8b 5c 24 50 8b 44 24 48 83 44 24 34 01 83 c0
00762150: 30 83 c2 30 3b c1 89 44 24 48 89 54 24 20 0f 82
00762160: 16 fe ff ff 39 7c 24 64 0f 84 ba 01 00 00 8b 74
00762170: 24 64 2b fe b8 ab aa aa 2a f7 ef c1 fa 02 8b c2
00762180: c1 e8 1f 03 c2 85 c0 89 44 24 20 0f 8e 9d 00 00
00762190: 00 bf 01 00 00 00 89 7c 24 38 83 c6 14 89 44 24
007621a0: 34 83 3e 00 74 73 3b f8 7d 6f 8b d0 2b d7 8d 4e
007621b0: 10 89 54 24 48 83 79 08 00 74 4c 8b 5e f8 3b 59
007621c0: fc 8d 7e f8 8d 51 fc 7c 3e 8b 5e f4 3b 19 8d 46
007621d0: f4 7f 30 3b 1a 7c 02 8b d0 8b 12 89 10 8b 11 3b
007621e0: 17 8b d1 7c 02 8b d7 8b 12 8b 00 03 c2 89 17 99
007621f0: 2b c2 d1 f8 89 46 fc 8b 41 08 01 06 c7 41 08 00
00762200: 00 00 00 8b 44 24 20 83 c1 18 83 6c 24 48 01 75
00762210: a4 8b 5c 24 50 8b 7c 24 38 83 c7 01 83 c6 18 83
00762220: 6c 24 34 01 89 7c 24 38 0f 85 73 ff ff ff 33 ff
00762230: 85 c0 0f 8e f0 00 00 00 8b 74 24 64 83 c6 10 89
00762240: 44 24 20 83 7e 04 00 0f 84 c9 00 00 00 8b 13 8b
00762250: 92 14 01 00 00 c7 44 24 4c 00 00 00 00 8b 06 2b
00762260: c7 50 8d 4c 24 50 51 8b cb ff d2 84 c0 74 7d 8b
00762270: 44 24 44 68 e7 00 00 00 68 88 99 f9 00 6a 00 6a
00762280: 00 50 6a 0c e8 77 22 d8 ff 8d 48 08 83 c4 18 85
00762290: c9 74 1a 8b 54 24 4c 89 11 8b 4c 24 4c 85 c9 74
007622a0: 0c 83 c1 04 ba 01 00 00 00 f0 0f c1 11 8d 4c 24
007622b0: 3c 89 08 8b 54 24 40 89 50 04 8b 4c 24 40 89 01
007622c0: 8b 4c 24 4c 89 44 24 40 8b 11 8b 42 48 ff d0 03
007622d0: f8 80 7c 24 1a 00 c6 44 24 1b 01 74 0f 8b 4c 24
007622e0: 74 39 4c 24 54 7f 05 83 44 24 5c 01 8b 4c 24 4c
007622f0: 85 c9 74 22 8d 41 04 8b d0 83 cb ff f0 0f c1 1a
00762300: 4b 75 13 ba 01 00 00 00 87 10 85 c9 74 08 8b 01
00762310: 8b 10 6a 01 ff d2 8b 5c 24 50 83 c6 18 83 6c 24
00762320: 20 01 0f 85 1b ff ff ff 8b 74 24 1c 8b 44 24 44
00762330: 68 e7 00 00 00 68 88 99 f9 00 6a 00 6a 00 50 6a
00762340: 0c e8 ba 21 d8 ff 8d 48 08 83 c4 18 85 c9 74 0e
00762350: 89 19 8d 4b 04 ba 01 00 00 00 f0 0f c1 11 8d 4c
00762360: 24 3c 89 08 8b 54 24 40 89 50 04 8b 4c 24 40 89
00762370: 01 89 44 24 40 8d 43 04 8b d0 83 c9 ff f0 0f c1
00762380: 0a 49 75 11 ba 01 00 00 00 87 10 8b 03 8b 10 6a
00762390: 01 8b cb ff d2 8b 44 24 60 8b 00 83 44 24 54 01
007623a0: 81 c6 e0 00 00 00 3b c6 89 44 24 60 0f 85 6e fb
007623b0: ff ff 80 7c 24 1b 00 74 45 8b ce e8 a0 8d 0e 00
007623c0: 8d 4c 24 3c 51 8b ce 89 36 89 76 04 e8 3f da ff
007623d0: ff 8b 4c 24 1c e8 96 45 ff ff 80 7c 24 1a 00 74
007623e0: 1d 8b 44 24 5c 8b 54 24 1c 3b 82 f0 00 00 00 74
007623f0: 0d 8b ca 89 81 f0 00 00 00 e8 82 4f ff ff 8b 74
00762400: 24 1c 8b 44 24 64 85 c0 74 09 50 e8 d0 20 d8 ff
00762410: 83 c4 04 8d 4c 24 3c e8 44 8d 0e 00 8b 06 8b 50
00762420: 14 8b ce ff d2 5f 5e 5b 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
00761e70 <.text+0x360e70>:
  761e70:	55                                              	push   ebp
  761e71:	8b ec                                           	mov    ebp,esp
  761e73:	83 e4 f0                                        	and    esp,0xfffffff0
  761e76:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  761e7c:	81 ec 24 01 00 00                               	sub    esp,0x124
  761e82:	53                                              	push   ebx
  761e83:	56                                              	push   esi
  761e84:	57                                              	push   edi
  761e85:	33 ff                                           	xor    edi,edi
  761e87:	3b cf                                           	cmp    ecx,edi
  761e89:	0f 84 96 05 00 00                               	je     0x762425
  761e8f:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  761e92:	50                                              	push   eax
  761e93:	e8 18 96 fe ff                                  	call   0x74b4b0
  761e98:	8b f0                                           	mov    esi,eax
  761e9a:	3b f7                                           	cmp    esi,edi
  761e9c:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  761ea0:	0f 84 7f 05 00 00                               	je     0x762425
  761ea6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  761ea8:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  761eab:	8b ce                                           	mov    ecx,esi
  761ead:	ff d0                                           	call   eax
  761eaf:	8a 8e f4 00 00 00                               	mov    cl,BYTE PTR [esi+0xf4]
  761eb5:	8b 86 f0 00 00 00                               	mov    eax,DWORD PTR [esi+0xf0]
  761ebb:	88 4c 24 1a                                     	mov    BYTE PTR [esp+0x1a],cl
  761ebf:	33 c9                                           	xor    ecx,ecx
  761ec1:	89 4c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ecx
  761ec5:	89 4c 24 40                                     	mov    DWORD PTR [esp+0x40],ecx
  761ec9:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
  761ecd:	8b ca                                           	mov    ecx,edx
  761ecf:	89 44 24 74                                     	mov    DWORD PTR [esp+0x74],eax
  761ed3:	89 44 24 5c                                     	mov    DWORD PTR [esp+0x5c],eax
  761ed7:	8d 86 e0 00 00 00                               	lea    eax,[esi+0xe0]
  761edd:	c7 44 24 44 a8 59 00 01                         	mov    DWORD PTR [esp+0x44],0x10059a8
  761ee5:	89 54 24 3c                                     	mov    DWORD PTR [esp+0x3c],edx
  761ee9:	89 4c 24 40                                     	mov    DWORD PTR [esp+0x40],ecx
  761eed:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  761eef:	3b c8                                           	cmp    ecx,eax
  761ef1:	89 7c 24 64                                     	mov    DWORD PTR [esp+0x64],edi
  761ef5:	89 7c 24 68                                     	mov    DWORD PTR [esp+0x68],edi
  761ef9:	89 7c 24 6c                                     	mov    DWORD PTR [esp+0x6c],edi
  761efd:	c7 44 24 70 84 59 00 01                         	mov    DWORD PTR [esp+0x70],0x1005984
  761f05:	c6 44 24 1b 00                                  	mov    BYTE PTR [esp+0x1b],0x0
  761f0a:	89 7c 24 54                                     	mov    DWORD PTR [esp+0x54],edi
  761f0e:	89 4c 24 60                                     	mov    DWORD PTR [esp+0x60],ecx
  761f12:	0f 84 ea 04 00 00                               	je     0x762402
  761f18:	eb 0a                                           	jmp    0x761f24
  761f1a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  761f20:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  761f24:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
  761f28:	8b 5a 08                                        	mov    ebx,DWORD PTR [edx+0x8]
  761f2b:	85 db                                           	test   ebx,ebx
  761f2d:	89 5c 24 50                                     	mov    DWORD PTR [esp+0x50],ebx
  761f31:	74 0c                                           	je     0x761f3f
  761f33:	8d 43 04                                        	lea    eax,[ebx+0x4]
  761f36:	b9 01 00 00 00                                  	mov    ecx,0x1
  761f3b:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  761f3f:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  761f41:	8b 7c 24 64                                     	mov    edi,DWORD PTR [esp+0x64]
  761f45:	8b 82 dc 00 00 00                               	mov    eax,DWORD PTR [edx+0xdc]
  761f4b:	8b cb                                           	mov    ecx,ebx
  761f4d:	89 7c 24 68                                     	mov    DWORD PTR [esp+0x68],edi
  761f51:	ff d0                                           	call   eax
  761f53:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  761f56:	8b 00                                           	mov    eax,DWORD PTR [eax]
  761f58:	83 e9 30                                        	sub    ecx,0x30
  761f5b:	3b c1                                           	cmp    eax,ecx
  761f5d:	89 4c 24 58                                     	mov    DWORD PTR [esp+0x58],ecx
  761f61:	89 44 24 48                                     	mov    DWORD PTR [esp+0x48],eax
  761f65:	c7 44 24 34 00 00 00 00                         	mov    DWORD PTR [esp+0x34],0x0
  761f6d:	0f 83 b9 03 00 00                               	jae    0x76232c
  761f73:	8d 50 60                                        	lea    edx,[eax+0x60]
  761f76:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  761f7a:	8b 74 24 34                                     	mov    esi,DWORD PTR [esp+0x34]
  761f7e:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  761f81:	0f 28 4a d0                                     	movaps xmm1,XMMWORD PTR [edx-0x30]
  761f85:	83 c6 02                                        	add    esi,0x2
  761f88:	3b d1                                           	cmp    edx,ecx
  761f8a:	89 54 24 38                                     	mov    DWORD PTR [esp+0x38],edx
  761f8e:	0f 83 b5 01 00 00                               	jae    0x762149
  761f94:	0f 29 8c 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm1
  761f9c:	0f 29 8c 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm1
  761fa4:	0f 29 84 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm0
  761fac:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
  761fb4:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  761fb8:	d9 05 ec e6 06 01                               	fld    DWORD PTR ds:0x106e6ec
  761fbe:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  761fc1:	0f 28 48 30                                     	movaps xmm1,XMMWORD PTR [eax+0x30]
  761fc5:	51                                              	push   ecx
  761fc6:	0f 29 84 24 d4 00 00 00                         	movaps XMMWORD PTR [esp+0xd4],xmm0
  761fce:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  761fd1:	0f 29 84 24 b4 00 00 00                         	movaps XMMWORD PTR [esp+0xb4],xmm0
  761fd9:	f3 0f 10 84 24 d4 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xd4]
  761fe2:	f3 0f 11 84 24 ac 00 00 00                      	movss  DWORD PTR [esp+0xac],xmm0
  761feb:	f3 0f 10 84 24 bc 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xbc]
  761ff4:	f3 0f 11 84 24 b0 00 00 00                      	movss  DWORD PTR [esp+0xb0],xmm0
  761ffd:	f3 0f 10 84 24 f4 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xf4]
  762006:	6a 00                                           	push   0x0
  762008:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
  76200f:	51                                              	push   ecx
  762010:	f3 0f 11 84 24 a4 00 00 00                      	movss  DWORD PTR [esp+0xa4],xmm0
  762019:	f3 0f 10 84 24 d4 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xd4]
  762022:	8d 94 24 b4 00 00 00                            	lea    edx,[esp+0xb4]
  762029:	0f 29 8c 24 1c 01 00 00                         	movaps XMMWORD PTR [esp+0x11c],xmm1
  762031:	52                                              	push   edx
  762032:	0f 29 8c 24 30 01 00 00                         	movaps XMMWORD PTR [esp+0x130],xmm1
  76203a:	f3 0f 10 8c 24 20 01 00 00                      	movss  xmm1,DWORD PTR [esp+0x120]
  762043:	f3 0f 11 84 24 ac 00 00 00                      	movss  DWORD PTR [esp+0xac],xmm0
  76204c:	f3 0f 10 84 24 f0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xf0]
  762055:	8d 84 24 a8 00 00 00                            	lea    eax,[esp+0xa8]
  76205c:	50                                              	push   eax
  76205d:	8d 8c 24 b4 00 00 00                            	lea    ecx,[esp+0xb4]
  762064:	f3 0f 11 8c 24 a4 00 00 00                      	movss  DWORD PTR [esp+0xa4],xmm1
  76206d:	f3 0f 10 8c 24 3c 01 00 00                      	movss  xmm1,DWORD PTR [esp+0x13c]
  762076:	f3 0f 11 84 24 b4 00 00 00                      	movss  DWORD PTR [esp+0xb4],xmm0
  76207f:	f3 0f 10 84 24 1c 01 00 00                      	movss  xmm0,DWORD PTR [esp+0x11c]
  762088:	51                                              	push   ecx
  762089:	f3 0f 11 8c 24 ac 00 00 00                      	movss  DWORD PTR [esp+0xac],xmm1
  762092:	f3 0f 11 84 24 bc 00 00 00                      	movss  DWORD PTR [esp+0xbc],xmm0
  76209b:	e8 00 bc 06 00                                  	call   0x7cdca0
  7620a0:	83 c4 18                                        	add    esp,0x18
  7620a3:	84 c0                                           	test   al,al
  7620a5:	74 7c                                           	je     0x762123
  7620a7:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  7620ab:	83 c0 01                                        	add    eax,0x1
  7620ae:	8b d8                                           	mov    ebx,eax
  7620b0:	89 84 24 80 00 00 00                            	mov    DWORD PTR [esp+0x80],eax
  7620b7:	03 c6                                           	add    eax,esi
  7620b9:	99                                              	cdq
  7620ba:	2b c2                                           	sub    eax,edx
  7620bc:	d1 f8                                           	sar    eax,1
  7620be:	3b 7c 24 6c                                     	cmp    edi,DWORD PTR [esp+0x6c]
  7620c2:	89 5c 24 78                                     	mov    DWORD PTR [esp+0x78],ebx
  7620c6:	89 74 24 7c                                     	mov    DWORD PTR [esp+0x7c],esi
  7620ca:	89 b4 24 84 00 00 00                            	mov    DWORD PTR [esp+0x84],esi
  7620d1:	89 84 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],eax
  7620d8:	c7 84 24 8c 00 00 00 01 00 00 00                	mov    DWORD PTR [esp+0x8c],0x1
  7620e3:	73 2b                                           	jae    0x762110
  7620e5:	8b cf                                           	mov    ecx,edi
  7620e7:	83 c7 18                                        	add    edi,0x18
  7620ea:	85 c9                                           	test   ecx,ecx
  7620ec:	89 7c 24 68                                     	mov    DWORD PTR [esp+0x68],edi
  7620f0:	74 31                                           	je     0x762123
  7620f2:	89 19                                           	mov    DWORD PTR [ecx],ebx
  7620f4:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  7620f7:	8b d3                                           	mov    edx,ebx
  7620f9:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  7620fc:	8b d6                                           	mov    edx,esi
  7620fe:	89 51 0c                                        	mov    DWORD PTR [ecx+0xc],edx
  762101:	89 41 10                                        	mov    DWORD PTR [ecx+0x10],eax
  762104:	8b 84 24 8c 00 00 00                            	mov    eax,DWORD PTR [esp+0x8c]
  76210b:	89 41 14                                        	mov    DWORD PTR [ecx+0x14],eax
  76210e:	eb 13                                           	jmp    0x762123
  762110:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
  762114:	51                                              	push   ecx
  762115:	57                                              	push   edi
  762116:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  76211a:	e8 71 53 da ff                                  	call   0x507490
  76211f:	8b 7c 24 68                                     	mov    edi,DWORD PTR [esp+0x68]
  762123:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  762127:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
  76212b:	83 c0 30                                        	add    eax,0x30
  76212e:	83 c6 01                                        	add    esi,0x1
  762131:	3b c1                                           	cmp    eax,ecx
  762133:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
  762137:	0f 82 77 fe ff ff                               	jb     0x761fb4
  76213d:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  762141:	8b 5c 24 50                                     	mov    ebx,DWORD PTR [esp+0x50]
  762145:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  762149:	83 44 24 34 01                                  	add    DWORD PTR [esp+0x34],0x1
  76214e:	83 c0 30                                        	add    eax,0x30
  762151:	83 c2 30                                        	add    edx,0x30
  762154:	3b c1                                           	cmp    eax,ecx
  762156:	89 44 24 48                                     	mov    DWORD PTR [esp+0x48],eax
  76215a:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  76215e:	0f 82 16 fe ff ff                               	jb     0x761f7a
  762164:	39 7c 24 64                                     	cmp    DWORD PTR [esp+0x64],edi
  762168:	0f 84 ba 01 00 00                               	je     0x762328
  76216e:	8b 74 24 64                                     	mov    esi,DWORD PTR [esp+0x64]
  762172:	2b fe                                           	sub    edi,esi
  762174:	b8 ab aa aa 2a                                  	mov    eax,0x2aaaaaab
  762179:	f7 ef                                           	imul   edi
  76217b:	c1 fa 02                                        	sar    edx,0x2
  76217e:	8b c2                                           	mov    eax,edx
  762180:	c1 e8 1f                                        	shr    eax,0x1f
  762183:	03 c2                                           	add    eax,edx
  762185:	85 c0                                           	test   eax,eax
  762187:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  76218b:	0f 8e 9d 00 00 00                               	jle    0x76222e
  762191:	bf 01 00 00 00                                  	mov    edi,0x1
  762196:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
  76219a:	83 c6 14                                        	add    esi,0x14
  76219d:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
  7621a1:	83 3e 00                                        	cmp    DWORD PTR [esi],0x0
  7621a4:	74 73                                           	je     0x762219
  7621a6:	3b f8                                           	cmp    edi,eax
  7621a8:	7d 6f                                           	jge    0x762219
  7621aa:	8b d0                                           	mov    edx,eax
  7621ac:	2b d7                                           	sub    edx,edi
  7621ae:	8d 4e 10                                        	lea    ecx,[esi+0x10]
  7621b1:	89 54 24 48                                     	mov    DWORD PTR [esp+0x48],edx
  7621b5:	83 79 08 00                                     	cmp    DWORD PTR [ecx+0x8],0x0
  7621b9:	74 4c                                           	je     0x762207
  7621bb:	8b 5e f8                                        	mov    ebx,DWORD PTR [esi-0x8]
  7621be:	3b 59 fc                                        	cmp    ebx,DWORD PTR [ecx-0x4]
  7621c1:	8d 7e f8                                        	lea    edi,[esi-0x8]
  7621c4:	8d 51 fc                                        	lea    edx,[ecx-0x4]
  7621c7:	7c 3e                                           	jl     0x762207
  7621c9:	8b 5e f4                                        	mov    ebx,DWORD PTR [esi-0xc]
  7621cc:	3b 19                                           	cmp    ebx,DWORD PTR [ecx]
  7621ce:	8d 46 f4                                        	lea    eax,[esi-0xc]
  7621d1:	7f 30                                           	jg     0x762203
  7621d3:	3b 1a                                           	cmp    ebx,DWORD PTR [edx]
  7621d5:	7c 02                                           	jl     0x7621d9
  7621d7:	8b d0                                           	mov    edx,eax
  7621d9:	8b 12                                           	mov    edx,DWORD PTR [edx]
  7621db:	89 10                                           	mov    DWORD PTR [eax],edx
  7621dd:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  7621df:	3b 17                                           	cmp    edx,DWORD PTR [edi]
  7621e1:	8b d1                                           	mov    edx,ecx
  7621e3:	7c 02                                           	jl     0x7621e7
  7621e5:	8b d7                                           	mov    edx,edi
  7621e7:	8b 12                                           	mov    edx,DWORD PTR [edx]
  7621e9:	8b 00                                           	mov    eax,DWORD PTR [eax]
  7621eb:	03 c2                                           	add    eax,edx
  7621ed:	89 17                                           	mov    DWORD PTR [edi],edx
  7621ef:	99                                              	cdq
  7621f0:	2b c2                                           	sub    eax,edx
  7621f2:	d1 f8                                           	sar    eax,1
  7621f4:	89 46 fc                                        	mov    DWORD PTR [esi-0x4],eax
  7621f7:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  7621fa:	01 06                                           	add    DWORD PTR [esi],eax
  7621fc:	c7 41 08 00 00 00 00                            	mov    DWORD PTR [ecx+0x8],0x0
  762203:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  762207:	83 c1 18                                        	add    ecx,0x18
  76220a:	83 6c 24 48 01                                  	sub    DWORD PTR [esp+0x48],0x1
  76220f:	75 a4                                           	jne    0x7621b5
  762211:	8b 5c 24 50                                     	mov    ebx,DWORD PTR [esp+0x50]
  762215:	8b 7c 24 38                                     	mov    edi,DWORD PTR [esp+0x38]
  762219:	83 c7 01                                        	add    edi,0x1
  76221c:	83 c6 18                                        	add    esi,0x18
  76221f:	83 6c 24 34 01                                  	sub    DWORD PTR [esp+0x34],0x1
  762224:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
  762228:	0f 85 73 ff ff ff                               	jne    0x7621a1
  76222e:	33 ff                                           	xor    edi,edi
  762230:	85 c0                                           	test   eax,eax
  762232:	0f 8e f0 00 00 00                               	jle    0x762328
  762238:	8b 74 24 64                                     	mov    esi,DWORD PTR [esp+0x64]
  76223c:	83 c6 10                                        	add    esi,0x10
  76223f:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  762243:	83 7e 04 00                                     	cmp    DWORD PTR [esi+0x4],0x0
  762247:	0f 84 c9 00 00 00                               	je     0x762316
  76224d:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  76224f:	8b 92 14 01 00 00                               	mov    edx,DWORD PTR [edx+0x114]
  762255:	c7 44 24 4c 00 00 00 00                         	mov    DWORD PTR [esp+0x4c],0x0
  76225d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76225f:	2b c7                                           	sub    eax,edi
  762261:	50                                              	push   eax
  762262:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  762266:	51                                              	push   ecx
  762267:	8b cb                                           	mov    ecx,ebx
  762269:	ff d2                                           	call   edx
  76226b:	84 c0                                           	test   al,al
  76226d:	74 7d                                           	je     0x7622ec
  76226f:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  762273:	68 e7 00 00 00                                  	push   0xe7
  762278:	68 88 99 f9 00                                  	push   0xf99988
  76227d:	6a 00                                           	push   0x0
  76227f:	6a 00                                           	push   0x0
  762281:	50                                              	push   eax
  762282:	6a 0c                                           	push   0xc
  762284:	e8 77 22 d8 ff                                  	call   0x4e4500
  762289:	8d 48 08                                        	lea    ecx,[eax+0x8]
  76228c:	83 c4 18                                        	add    esp,0x18
  76228f:	85 c9                                           	test   ecx,ecx
  762291:	74 1a                                           	je     0x7622ad
  762293:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  762297:	89 11                                           	mov    DWORD PTR [ecx],edx
  762299:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  76229d:	85 c9                                           	test   ecx,ecx
  76229f:	74 0c                                           	je     0x7622ad
  7622a1:	83 c1 04                                        	add    ecx,0x4
  7622a4:	ba 01 00 00 00                                  	mov    edx,0x1
  7622a9:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  7622ad:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  7622b1:	89 08                                           	mov    DWORD PTR [eax],ecx
  7622b3:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  7622b7:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  7622ba:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  7622be:	89 01                                           	mov    DWORD PTR [ecx],eax
  7622c0:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  7622c4:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
  7622c8:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  7622ca:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  7622cd:	ff d0                                           	call   eax
  7622cf:	03 f8                                           	add    edi,eax
  7622d1:	80 7c 24 1a 00                                  	cmp    BYTE PTR [esp+0x1a],0x0
  7622d6:	c6 44 24 1b 01                                  	mov    BYTE PTR [esp+0x1b],0x1
  7622db:	74 0f                                           	je     0x7622ec
  7622dd:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
  7622e1:	39 4c 24 54                                     	cmp    DWORD PTR [esp+0x54],ecx
  7622e5:	7f 05                                           	jg     0x7622ec
  7622e7:	83 44 24 5c 01                                  	add    DWORD PTR [esp+0x5c],0x1
  7622ec:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  7622f0:	85 c9                                           	test   ecx,ecx
  7622f2:	74 22                                           	je     0x762316
  7622f4:	8d 41 04                                        	lea    eax,[ecx+0x4]
  7622f7:	8b d0                                           	mov    edx,eax
  7622f9:	83 cb ff                                        	or     ebx,0xffffffff
  7622fc:	f0 0f c1 1a                                     	lock xadd DWORD PTR [edx],ebx
  762300:	4b                                              	dec    ebx
  762301:	75 13                                           	jne    0x762316
  762303:	ba 01 00 00 00                                  	mov    edx,0x1
  762308:	87 10                                           	xchg   DWORD PTR [eax],edx
  76230a:	85 c9                                           	test   ecx,ecx
  76230c:	74 08                                           	je     0x762316
  76230e:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  762310:	8b 10                                           	mov    edx,DWORD PTR [eax]
  762312:	6a 01                                           	push   0x1
  762314:	ff d2                                           	call   edx
  762316:	8b 5c 24 50                                     	mov    ebx,DWORD PTR [esp+0x50]
  76231a:	83 c6 18                                        	add    esi,0x18
  76231d:	83 6c 24 20 01                                  	sub    DWORD PTR [esp+0x20],0x1
  762322:	0f 85 1b ff ff ff                               	jne    0x762243
  762328:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  76232c:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  762330:	68 e7 00 00 00                                  	push   0xe7
  762335:	68 88 99 f9 00                                  	push   0xf99988
  76233a:	6a 00                                           	push   0x0
  76233c:	6a 00                                           	push   0x0
  76233e:	50                                              	push   eax
  76233f:	6a 0c                                           	push   0xc
  762341:	e8 ba 21 d8 ff                                  	call   0x4e4500
  762346:	8d 48 08                                        	lea    ecx,[eax+0x8]
  762349:	83 c4 18                                        	add    esp,0x18
  76234c:	85 c9                                           	test   ecx,ecx
  76234e:	74 0e                                           	je     0x76235e
  762350:	89 19                                           	mov    DWORD PTR [ecx],ebx
  762352:	8d 4b 04                                        	lea    ecx,[ebx+0x4]
  762355:	ba 01 00 00 00                                  	mov    edx,0x1
  76235a:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  76235e:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  762362:	89 08                                           	mov    DWORD PTR [eax],ecx
  762364:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  762368:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  76236b:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  76236f:	89 01                                           	mov    DWORD PTR [ecx],eax
  762371:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
  762375:	8d 43 04                                        	lea    eax,[ebx+0x4]
  762378:	8b d0                                           	mov    edx,eax
  76237a:	83 c9 ff                                        	or     ecx,0xffffffff
  76237d:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  762381:	49                                              	dec    ecx
  762382:	75 11                                           	jne    0x762395
  762384:	ba 01 00 00 00                                  	mov    edx,0x1
  762389:	87 10                                           	xchg   DWORD PTR [eax],edx
  76238b:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  76238d:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76238f:	6a 01                                           	push   0x1
  762391:	8b cb                                           	mov    ecx,ebx
  762393:	ff d2                                           	call   edx
  762395:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
  762399:	8b 00                                           	mov    eax,DWORD PTR [eax]
  76239b:	83 44 24 54 01                                  	add    DWORD PTR [esp+0x54],0x1
  7623a0:	81 c6 e0 00 00 00                               	add    esi,0xe0
  7623a6:	3b c6                                           	cmp    eax,esi
  7623a8:	89 44 24 60                                     	mov    DWORD PTR [esp+0x60],eax
  7623ac:	0f 85 6e fb ff ff                               	jne    0x761f20
  7623b2:	80 7c 24 1b 00                                  	cmp    BYTE PTR [esp+0x1b],0x0
  7623b7:	74 45                                           	je     0x7623fe
  7623b9:	8b ce                                           	mov    ecx,esi
  7623bb:	e8 a0 8d 0e 00                                  	call   0x84b160
  7623c0:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  7623c4:	51                                              	push   ecx
  7623c5:	8b ce                                           	mov    ecx,esi
  7623c7:	89 36                                           	mov    DWORD PTR [esi],esi
  7623c9:	89 76 04                                        	mov    DWORD PTR [esi+0x4],esi
  7623cc:	e8 3f da ff ff                                  	call   0x75fe10
  7623d1:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  7623d5:	e8 96 45 ff ff                                  	call   0x756970
  7623da:	80 7c 24 1a 00                                  	cmp    BYTE PTR [esp+0x1a],0x0
  7623df:	74 1d                                           	je     0x7623fe
  7623e1:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  7623e5:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  7623e9:	3b 82 f0 00 00 00                               	cmp    eax,DWORD PTR [edx+0xf0]
  7623ef:	74 0d                                           	je     0x7623fe
  7623f1:	8b ca                                           	mov    ecx,edx
  7623f3:	89 81 f0 00 00 00                               	mov    DWORD PTR [ecx+0xf0],eax
  7623f9:	e8 82 4f ff ff                                  	call   0x757380
  7623fe:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  762402:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  762406:	85 c0                                           	test   eax,eax
  762408:	74 09                                           	je     0x762413
  76240a:	50                                              	push   eax
  76240b:	e8 d0 20 d8 ff                                  	call   0x4e44e0
  762410:	83 c4 04                                        	add    esp,0x4
  762413:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  762417:	e8 44 8d 0e 00                                  	call   0x84b160
  76241c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76241e:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  762421:	8b ce                                           	mov    ecx,esi
  762423:	ff d2                                           	call   edx
  762425:	5f                                              	pop    edi
  762426:	5e                                              	pop    esi
  762427:	5b                                              	pop    ebx
  762428:	8b e5                                           	mov    esp,ebp
  76242a:	5d                                              	pop    ebp
  76242b:	c3                                              	ret
  76242c:	cc                                              	int3
  76242d:	cc                                              	int3
  76242e:	cc                                              	int3
  76242f:	cc                                              	int3
