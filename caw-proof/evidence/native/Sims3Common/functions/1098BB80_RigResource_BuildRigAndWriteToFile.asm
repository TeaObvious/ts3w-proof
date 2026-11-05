# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098bb80 (RigResource_BuildRigAndWriteToFile)
Paired Ghidra pseudocode: 1098BB80_RigResource_BuildRigAndWriteToFile.c
Window: [0x1098bb80, 0x1098c0c0) (1344 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c0c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098bb80: 55 8b ec 83 e4 f0 81 ec 94 03 00 00 53 56 57 8d
1098bb90: 8c 24 98 00 00 00 e8 15 66 9e ff 33 ff 8d 8c 24
1098bba0: 4c 01 00 00 c7 84 24 98 00 00 00 9c 6f b9 10 89
1098bbb0: 7c 24 20 89 7c 24 24 89 7c 24 28 c7 44 24 2c 94
1098bbc0: e1 ad 10 e8 78 c0 9e ff 8b 45 08 50 8d 8c 24 9c
1098bbd0: 00 00 00 e8 b8 64 9e ff 39 7d 10 89 7c 24 18 0f
1098bbe0: 86 7c 01 00 00 8b 75 0c 83 c6 24 8d 8c 24 98 00
1098bbf0: 00 00 e8 a9 71 9e ff 83 f8 ff 0f 84 c4 01 00 00
1098bc00: 50 8d 8c 24 9c 00 00 00 e8 73 5a 9e ff 8b 7e dc
1098bc10: 8b d8 8b c7 8d 50 01 8a 08 83 c0 01 84 c9 75 f7
1098bc20: 2b c2 03 c7 50 57 8d 4b 40 e8 72 2c 68 ff 8b 4e
1098bc30: e0 89 4b 58 f3 0f 10 46 f4 f3 0f 11 44 24 5c f3
1098bc40: 0f 10 46 f0 f3 0f 11 44 24 58 f3 0f 10 46 ec f3
1098bc50: 0f 11 44 24 54 f3 0f 10 46 e8 f3 0f 11 44 24 50
1098bc60: 0f 28 44 24 50 0f 29 84 24 00 01 00 00 f3 0f 10
1098bc70: 46 04 f3 0f 11 44 24 7c f3 0f 10 06 f3 0f 11 44
1098bc80: 24 78 f3 0f 10 46 fc f3 0f 11 44 24 74 f3 0f 10
1098bc90: 46 f8 f3 0f 11 44 24 70 0f 28 44 24 70 0f 29 84
1098bca0: 24 10 01 00 00 f3 0f 10 46 14 f3 0f 11 44 24 6c
1098bcb0: f3 0f 10 46 10 f3 0f 11 44 24 68 f3 0f 10 46 0c
1098bcc0: f3 0f 11 44 24 64 f3 0f 10 46 08 f3 0f 11 44 24
1098bcd0: 60 0f 28 44 24 60 0f 29 84 24 20 01 00 00 f3 0f
1098bce0: 10 46 24 f3 0f 11 84 24 8c 00 00 00 f3 0f 10 46
1098bcf0: 20 f3 0f 11 84 24 88 00 00 00 f3 0f 10 46 1c f3
1098bd00: 0f 11 84 24 84 00 00 00 f3 0f 10 46 18 8d 94 24
1098bd10: 00 01 00 00 f3 0f 11 84 24 80 00 00 00 0f 28 84
1098bd20: 24 80 00 00 00 52 8d 4b 10 0f 29 84 24 34 01 00
1098bd30: 00 e8 6a 7b 9e ff 83 7e e4 00 74 0c 8b 43 60 83
1098bd40: e0 df 83 c8 40 89 43 60 8b 44 24 18 83 c0 01 83
1098bd50: c6 4c 3b 45 10 89 44 24 18 0f 82 8c fe ff ff 33
1098bd60: ff 8b 5d 1c 53 8d 8c 24 9c 00 00 00 e8 af 6f 9e
1098bd70: ff 84 c0 0f 85 96 00 00 00 8b 44 24 24 8b 74 24
1098bd80: 20 3b f0 8b f8 73 1a 8b 06 85 c0 74 09 50 e8 fd
1098bd90: d0 f8 ff 83 c4 04 83 c6 4c 3b f7 72 ea 8b 74 24
1098bda0: 20 85 f6 74 09 56 e8 e5 d0 f8 ff 83 c4 04 8d 8c
1098bdb0: 24 98 00 00 00 e8 56 64 9e ff 83 c8 ff 5f 5e 5b
1098bdc0: 8b e5 5d c3 8b 44 24 24 8b 74 24 20 3b f0 8b f8
1098bdd0: 73 1a 8b 06 85 c0 74 09 50 e8 b2 d0 f8 ff 83 c4
1098bde0: 04 83 c6 4c 3b f7 72 ea 8b 74 24 20 85 f6 74 09
1098bdf0: 56 e8 9a d0 f8 ff 83 c4 04 8d 8c 24 98 00 00 00
1098be00: e8 0b 64 9e ff 83 c8 ff 5f 5e 5b 8b e5 5d c3 84
1098be10: db 0f 84 b6 01 00 00 8d 8c 24 98 00 00 00 51 8d
1098be20: 4c 24 38 89 7c 24 38 89 7c 24 3c 89 7c 24 40 c7
1098be30: 44 24 44 9c 63 ae 10 c7 44 24 48 01 00 00 00 e8
1098be40: 9c dd 9e ff 8b 44 24 44 2b c7 74 31 83 e8 02 0f
1098be50: 85 6f 01 00 00 8d 4c 24 34 e8 72 fc ff ff 8d 4c
1098be60: 24 20 e8 09 c4 9e ff 8d 8c 24 98 00 00 00 e8 9d
1098be70: 63 9e ff 83 c8 ff 5f 5e 5b 8b e5 5d c3 8b 74 24
1098be80: 38 2b 74 24 34 c1 fe 02 89 74 24 4c 0f 84 32 01
1098be90: 00 00 56 8d 4c 24 24 e8 94 cc 9e ff 3b f7 89 7c
1098bea0: 24 30 0f 86 1c 01 00 00 89 7c 24 18 8b 54 24 34
1098beb0: 8b 44 24 30 8b 34 82 8b 4c 24 20 8b 54 24 18 8d
1098bec0: 1c 0a 8b ce e8 27 d9 9e ff 50 8b cb e8 ff a7 b7
1098bed0: ff 8b ce 33 ff e8 16 d9 9e ff 85 c0 76 2e 8b ff
1098bee0: 8b 03 8d 0c b8 89 4c 24 1c 57 8b ce e8 cf d8 9e
1098bef0: ff 8b c8 e8 58 d8 9e ff 8b 54 24 1c 8b ce 89 02
1098bf00: 83 c7 01 e8 e8 d8 9e ff 3b f8 72 d4 8d 43 10 33
1098bf10: ff 89 44 24 1c 57 8d 8c 24 84 00 00 00 51 8b ce
1098bf20: e8 4b dc 9e ff 8b c8 e8 24 d8 9e ff 8b 54 24 1c
1098bf30: 8d 8c 24 80 00 00 00 89 02 e8 c2 d8 9e ff 83 44
1098bf40: 24 1c 04 83 c7 01 83 ff 0b 72 ca 8d 44 24 60 50
1098bf50: 8b ce e8 49 d8 9e ff 8b c8 e8 f2 d7 9e ff 8d 4c
1098bf60: 24 60 89 43 44 e8 e6 21 bd ff 8d 4c 24 70 51 8b
1098bf70: ce e8 ea d7 9e ff 8b c8 e8 d3 d7 9e ff 8d 4c 24
1098bf80: 70 89 43 3c e8 c7 21 bd ff 8d 54 24 50 52 8b ce
1098bf90: e8 eb d7 9e ff 8b c8 e8 b4 d7 9e ff 8d 4c 24 50
1098bfa0: 89 43 40 e8 a8 21 bd ff 8b 44 24 30 83 44 24 18
1098bfb0: 4c 83 c0 01 3b 44 24 4c 89 44 24 30 0f 82 ea fe
1098bfc0: ff ff 33 ff 8d 4c 24 34 e8 03 fb ff ff 8b 45 14
1098bfd0: 50 8d 8c 24 7c 01 00 00 e8 f3 47 f8 ff 57 6a 01
1098bfe0: 6a 02 6a 02 8d 8c 24 88 01 00 00 e8 90 43 f8 ff
1098bff0: 84 c0 75 59 8d 8c 24 78 01 00 00 e8 90 48 f8 ff
1098c000: 8b 44 24 24 8b 74 24 20 3b f0 8b f8 73 1c 8b ff
1098c010: 8b 06 85 c0 74 09 50 e8 74 ce f8 ff 83 c4 04 83
1098c020: c6 4c 3b f7 72 ea 8b 74 24 20 85 f6 74 09 56 e8
1098c030: 5c ce f8 ff 83 c4 04 8d 8c 24 98 00 00 00 e8 cd
1098c040: 61 9e ff 83 c8 ff 5f 5e 5b 8b e5 5d c3 8d 8c 24
1098c050: 4c 01 00 00 51 8d 54 24 24 52 8d 84 24 a0 00 00
1098c060: 00 50 6a 01 8d 8c 24 88 01 00 00 51 8d 4c 24 48
1098c070: e8 2b 02 c4 ff 50 e8 35 bf 9e ff 83 c4 10 84 c0
1098c080: 8d 4c 24 34 0f 94 c3 e8 74 e8 c3 ff 8d 8c 24 78
1098c090: 01 00 00 e8 f8 47 f8 ff 8d 4c 24 20 e8 cf c1 9e
1098c0a0: ff 8d 8c 24 98 00 00 00 e8 63 61 9e ff 84 db 0f
1098c0b0: 85 50 fd ff ff 5f 5e 33 c0 5b 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
1098bb80 <.text+0x98ab80>:
1098bb80:	55                                              	push   ebp
1098bb81:	8b ec                                           	mov    ebp,esp
1098bb83:	83 e4 f0                                        	and    esp,0xfffffff0
1098bb86:	81 ec 94 03 00 00                               	sub    esp,0x394
1098bb8c:	53                                              	push   ebx
1098bb8d:	56                                              	push   esi
1098bb8e:	57                                              	push   edi
1098bb8f:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
1098bb96:	e8 15 66 9e ff                                  	call   0x103721b0
1098bb9b:	33 ff                                           	xor    edi,edi
1098bb9d:	8d 8c 24 4c 01 00 00                            	lea    ecx,[esp+0x14c]
1098bba4:	c7 84 24 98 00 00 00 9c 6f b9 10                	mov    DWORD PTR [esp+0x98],0x10b96f9c
1098bbaf:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1098bbb3:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
1098bbb7:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
1098bbbb:	c7 44 24 2c 94 e1 ad 10                         	mov    DWORD PTR [esp+0x2c],0x10ade194
1098bbc3:	e8 78 c0 9e ff                                  	call   0x10377c40
1098bbc8:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1098bbcb:	50                                              	push   eax
1098bbcc:	8d 8c 24 9c 00 00 00                            	lea    ecx,[esp+0x9c]
1098bbd3:	e8 b8 64 9e ff                                  	call   0x10372090
1098bbd8:	39 7d 10                                        	cmp    DWORD PTR [ebp+0x10],edi
1098bbdb:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
1098bbdf:	0f 86 7c 01 00 00                               	jbe    0x1098bd61
1098bbe5:	8b 75 0c                                        	mov    esi,DWORD PTR [ebp+0xc]
1098bbe8:	83 c6 24                                        	add    esi,0x24
1098bbeb:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
1098bbf2:	e8 a9 71 9e ff                                  	call   0x10372da0
1098bbf7:	83 f8 ff                                        	cmp    eax,0xffffffff
1098bbfa:	0f 84 c4 01 00 00                               	je     0x1098bdc4
1098bc00:	50                                              	push   eax
1098bc01:	8d 8c 24 9c 00 00 00                            	lea    ecx,[esp+0x9c]
1098bc08:	e8 73 5a 9e ff                                  	call   0x10371680
1098bc0d:	8b 7e dc                                        	mov    edi,DWORD PTR [esi-0x24]
1098bc10:	8b d8                                           	mov    ebx,eax
1098bc12:	8b c7                                           	mov    eax,edi
1098bc14:	8d 50 01                                        	lea    edx,[eax+0x1]
1098bc17:	8a 08                                           	mov    cl,BYTE PTR [eax]
1098bc19:	83 c0 01                                        	add    eax,0x1
1098bc1c:	84 c9                                           	test   cl,cl
1098bc1e:	75 f7                                           	jne    0x1098bc17
1098bc20:	2b c2                                           	sub    eax,edx
1098bc22:	03 c7                                           	add    eax,edi
1098bc24:	50                                              	push   eax
1098bc25:	57                                              	push   edi
1098bc26:	8d 4b 40                                        	lea    ecx,[ebx+0x40]
1098bc29:	e8 72 2c 68 ff                                  	call   0x1000e8a0
1098bc2e:	8b 4e e0                                        	mov    ecx,DWORD PTR [esi-0x20]
1098bc31:	89 4b 58                                        	mov    DWORD PTR [ebx+0x58],ecx
1098bc34:	f3 0f 10 46 f4                                  	movss  xmm0,DWORD PTR [esi-0xc]
1098bc39:	f3 0f 11 44 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm0
1098bc3f:	f3 0f 10 46 f0                                  	movss  xmm0,DWORD PTR [esi-0x10]
1098bc44:	f3 0f 11 44 24 58                               	movss  DWORD PTR [esp+0x58],xmm0
1098bc4a:	f3 0f 10 46 ec                                  	movss  xmm0,DWORD PTR [esi-0x14]
1098bc4f:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
1098bc55:	f3 0f 10 46 e8                                  	movss  xmm0,DWORD PTR [esi-0x18]
1098bc5a:	f3 0f 11 44 24 50                               	movss  DWORD PTR [esp+0x50],xmm0
1098bc60:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
1098bc65:	0f 29 84 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm0
1098bc6d:	f3 0f 10 46 04                                  	movss  xmm0,DWORD PTR [esi+0x4]
1098bc72:	f3 0f 11 44 24 7c                               	movss  DWORD PTR [esp+0x7c],xmm0
1098bc78:	f3 0f 10 06                                     	movss  xmm0,DWORD PTR [esi]
1098bc7c:	f3 0f 11 44 24 78                               	movss  DWORD PTR [esp+0x78],xmm0
1098bc82:	f3 0f 10 46 fc                                  	movss  xmm0,DWORD PTR [esi-0x4]
1098bc87:	f3 0f 11 44 24 74                               	movss  DWORD PTR [esp+0x74],xmm0
1098bc8d:	f3 0f 10 46 f8                                  	movss  xmm0,DWORD PTR [esi-0x8]
1098bc92:	f3 0f 11 44 24 70                               	movss  DWORD PTR [esp+0x70],xmm0
1098bc98:	0f 28 44 24 70                                  	movaps xmm0,XMMWORD PTR [esp+0x70]
1098bc9d:	0f 29 84 24 10 01 00 00                         	movaps XMMWORD PTR [esp+0x110],xmm0
1098bca5:	f3 0f 10 46 14                                  	movss  xmm0,DWORD PTR [esi+0x14]
1098bcaa:	f3 0f 11 44 24 6c                               	movss  DWORD PTR [esp+0x6c],xmm0
1098bcb0:	f3 0f 10 46 10                                  	movss  xmm0,DWORD PTR [esi+0x10]
1098bcb5:	f3 0f 11 44 24 68                               	movss  DWORD PTR [esp+0x68],xmm0
1098bcbb:	f3 0f 10 46 0c                                  	movss  xmm0,DWORD PTR [esi+0xc]
1098bcc0:	f3 0f 11 44 24 64                               	movss  DWORD PTR [esp+0x64],xmm0
1098bcc6:	f3 0f 10 46 08                                  	movss  xmm0,DWORD PTR [esi+0x8]
1098bccb:	f3 0f 11 44 24 60                               	movss  DWORD PTR [esp+0x60],xmm0
1098bcd1:	0f 28 44 24 60                                  	movaps xmm0,XMMWORD PTR [esp+0x60]
1098bcd6:	0f 29 84 24 20 01 00 00                         	movaps XMMWORD PTR [esp+0x120],xmm0
1098bcde:	f3 0f 10 46 24                                  	movss  xmm0,DWORD PTR [esi+0x24]
1098bce3:	f3 0f 11 84 24 8c 00 00 00                      	movss  DWORD PTR [esp+0x8c],xmm0
1098bcec:	f3 0f 10 46 20                                  	movss  xmm0,DWORD PTR [esi+0x20]
1098bcf1:	f3 0f 11 84 24 88 00 00 00                      	movss  DWORD PTR [esp+0x88],xmm0
1098bcfa:	f3 0f 10 46 1c                                  	movss  xmm0,DWORD PTR [esi+0x1c]
1098bcff:	f3 0f 11 84 24 84 00 00 00                      	movss  DWORD PTR [esp+0x84],xmm0
1098bd08:	f3 0f 10 46 18                                  	movss  xmm0,DWORD PTR [esi+0x18]
1098bd0d:	8d 94 24 00 01 00 00                            	lea    edx,[esp+0x100]
1098bd14:	f3 0f 11 84 24 80 00 00 00                      	movss  DWORD PTR [esp+0x80],xmm0
1098bd1d:	0f 28 84 24 80 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x80]
1098bd25:	52                                              	push   edx
1098bd26:	8d 4b 10                                        	lea    ecx,[ebx+0x10]
1098bd29:	0f 29 84 24 34 01 00 00                         	movaps XMMWORD PTR [esp+0x134],xmm0
1098bd31:	e8 6a 7b 9e ff                                  	call   0x103738a0
1098bd36:	83 7e e4 00                                     	cmp    DWORD PTR [esi-0x1c],0x0
1098bd3a:	74 0c                                           	je     0x1098bd48
1098bd3c:	8b 43 60                                        	mov    eax,DWORD PTR [ebx+0x60]
1098bd3f:	83 e0 df                                        	and    eax,0xffffffdf
1098bd42:	83 c8 40                                        	or     eax,0x40
1098bd45:	89 43 60                                        	mov    DWORD PTR [ebx+0x60],eax
1098bd48:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1098bd4c:	83 c0 01                                        	add    eax,0x1
1098bd4f:	83 c6 4c                                        	add    esi,0x4c
1098bd52:	3b 45 10                                        	cmp    eax,DWORD PTR [ebp+0x10]
1098bd55:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1098bd59:	0f 82 8c fe ff ff                               	jb     0x1098bbeb
1098bd5f:	33 ff                                           	xor    edi,edi
1098bd61:	8b 5d 1c                                        	mov    ebx,DWORD PTR [ebp+0x1c]
1098bd64:	53                                              	push   ebx
1098bd65:	8d 8c 24 9c 00 00 00                            	lea    ecx,[esp+0x9c]
1098bd6c:	e8 af 6f 9e ff                                  	call   0x10372d20
1098bd71:	84 c0                                           	test   al,al
1098bd73:	0f 85 96 00 00 00                               	jne    0x1098be0f
1098bd79:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1098bd7d:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
1098bd81:	3b f0                                           	cmp    esi,eax
1098bd83:	8b f8                                           	mov    edi,eax
1098bd85:	73 1a                                           	jae    0x1098bda1
1098bd87:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098bd89:	85 c0                                           	test   eax,eax
1098bd8b:	74 09                                           	je     0x1098bd96
1098bd8d:	50                                              	push   eax
1098bd8e:	e8 fd d0 f8 ff                                  	call   0x10918e90
1098bd93:	83 c4 04                                        	add    esp,0x4
1098bd96:	83 c6 4c                                        	add    esi,0x4c
1098bd99:	3b f7                                           	cmp    esi,edi
1098bd9b:	72 ea                                           	jb     0x1098bd87
1098bd9d:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
1098bda1:	85 f6                                           	test   esi,esi
1098bda3:	74 09                                           	je     0x1098bdae
1098bda5:	56                                              	push   esi
1098bda6:	e8 e5 d0 f8 ff                                  	call   0x10918e90
1098bdab:	83 c4 04                                        	add    esp,0x4
1098bdae:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
1098bdb5:	e8 56 64 9e ff                                  	call   0x10372210
1098bdba:	83 c8 ff                                        	or     eax,0xffffffff
1098bdbd:	5f                                              	pop    edi
1098bdbe:	5e                                              	pop    esi
1098bdbf:	5b                                              	pop    ebx
1098bdc0:	8b e5                                           	mov    esp,ebp
1098bdc2:	5d                                              	pop    ebp
1098bdc3:	c3                                              	ret
1098bdc4:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1098bdc8:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
1098bdcc:	3b f0                                           	cmp    esi,eax
1098bdce:	8b f8                                           	mov    edi,eax
1098bdd0:	73 1a                                           	jae    0x1098bdec
1098bdd2:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098bdd4:	85 c0                                           	test   eax,eax
1098bdd6:	74 09                                           	je     0x1098bde1
1098bdd8:	50                                              	push   eax
1098bdd9:	e8 b2 d0 f8 ff                                  	call   0x10918e90
1098bdde:	83 c4 04                                        	add    esp,0x4
1098bde1:	83 c6 4c                                        	add    esi,0x4c
1098bde4:	3b f7                                           	cmp    esi,edi
1098bde6:	72 ea                                           	jb     0x1098bdd2
1098bde8:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
1098bdec:	85 f6                                           	test   esi,esi
1098bdee:	74 09                                           	je     0x1098bdf9
1098bdf0:	56                                              	push   esi
1098bdf1:	e8 9a d0 f8 ff                                  	call   0x10918e90
1098bdf6:	83 c4 04                                        	add    esp,0x4
1098bdf9:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
1098be00:	e8 0b 64 9e ff                                  	call   0x10372210
1098be05:	83 c8 ff                                        	or     eax,0xffffffff
1098be08:	5f                                              	pop    edi
1098be09:	5e                                              	pop    esi
1098be0a:	5b                                              	pop    ebx
1098be0b:	8b e5                                           	mov    esp,ebp
1098be0d:	5d                                              	pop    ebp
1098be0e:	c3                                              	ret
1098be0f:	84 db                                           	test   bl,bl
1098be11:	0f 84 b6 01 00 00                               	je     0x1098bfcd
1098be17:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
1098be1e:	51                                              	push   ecx
1098be1f:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1098be23:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
1098be27:	89 7c 24 3c                                     	mov    DWORD PTR [esp+0x3c],edi
1098be2b:	89 7c 24 40                                     	mov    DWORD PTR [esp+0x40],edi
1098be2f:	c7 44 24 44 9c 63 ae 10                         	mov    DWORD PTR [esp+0x44],0x10ae639c
1098be37:	c7 44 24 48 01 00 00 00                         	mov    DWORD PTR [esp+0x48],0x1
1098be3f:	e8 9c dd 9e ff                                  	call   0x10379be0
1098be44:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
1098be48:	2b c7                                           	sub    eax,edi
1098be4a:	74 31                                           	je     0x1098be7d
1098be4c:	83 e8 02                                        	sub    eax,0x2
1098be4f:	0f 85 6f 01 00 00                               	jne    0x1098bfc4
1098be55:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1098be59:	e8 72 fc ff ff                                  	call   0x1098bad0
1098be5e:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1098be62:	e8 09 c4 9e ff                                  	call   0x10378270
1098be67:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
1098be6e:	e8 9d 63 9e ff                                  	call   0x10372210
1098be73:	83 c8 ff                                        	or     eax,0xffffffff
1098be76:	5f                                              	pop    edi
1098be77:	5e                                              	pop    esi
1098be78:	5b                                              	pop    ebx
1098be79:	8b e5                                           	mov    esp,ebp
1098be7b:	5d                                              	pop    ebp
1098be7c:	c3                                              	ret
1098be7d:	8b 74 24 38                                     	mov    esi,DWORD PTR [esp+0x38]
1098be81:	2b 74 24 34                                     	sub    esi,DWORD PTR [esp+0x34]
1098be85:	c1 fe 02                                        	sar    esi,0x2
1098be88:	89 74 24 4c                                     	mov    DWORD PTR [esp+0x4c],esi
1098be8c:	0f 84 32 01 00 00                               	je     0x1098bfc4
1098be92:	56                                              	push   esi
1098be93:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1098be97:	e8 94 cc 9e ff                                  	call   0x10378b30
1098be9c:	3b f7                                           	cmp    esi,edi
1098be9e:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
1098bea2:	0f 86 1c 01 00 00                               	jbe    0x1098bfc4
1098bea8:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
1098beac:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
1098beb0:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1098beb4:	8b 34 82                                        	mov    esi,DWORD PTR [edx+eax*4]
1098beb7:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1098bebb:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1098bebf:	8d 1c 0a                                        	lea    ebx,[edx+ecx*1]
1098bec2:	8b ce                                           	mov    ecx,esi
1098bec4:	e8 27 d9 9e ff                                  	call   0x103797f0
1098bec9:	50                                              	push   eax
1098beca:	8b cb                                           	mov    ecx,ebx
1098becc:	e8 ff a7 b7 ff                                  	call   0x105066d0
1098bed1:	8b ce                                           	mov    ecx,esi
1098bed3:	33 ff                                           	xor    edi,edi
1098bed5:	e8 16 d9 9e ff                                  	call   0x103797f0
1098beda:	85 c0                                           	test   eax,eax
1098bedc:	76 2e                                           	jbe    0x1098bf0c
1098bede:	8b ff                                           	mov    edi,edi
1098bee0:	8b 03                                           	mov    eax,DWORD PTR [ebx]
1098bee2:	8d 0c b8                                        	lea    ecx,[eax+edi*4]
1098bee5:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
1098bee9:	57                                              	push   edi
1098beea:	8b ce                                           	mov    ecx,esi
1098beec:	e8 cf d8 9e ff                                  	call   0x103797c0
1098bef1:	8b c8                                           	mov    ecx,eax
1098bef3:	e8 58 d8 9e ff                                  	call   0x10379750
1098bef8:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1098befc:	8b ce                                           	mov    ecx,esi
1098befe:	89 02                                           	mov    DWORD PTR [edx],eax
1098bf00:	83 c7 01                                        	add    edi,0x1
1098bf03:	e8 e8 d8 9e ff                                  	call   0x103797f0
1098bf08:	3b f8                                           	cmp    edi,eax
1098bf0a:	72 d4                                           	jb     0x1098bee0
1098bf0c:	8d 43 10                                        	lea    eax,[ebx+0x10]
1098bf0f:	33 ff                                           	xor    edi,edi
1098bf11:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
1098bf15:	57                                              	push   edi
1098bf16:	8d 8c 24 84 00 00 00                            	lea    ecx,[esp+0x84]
1098bf1d:	51                                              	push   ecx
1098bf1e:	8b ce                                           	mov    ecx,esi
1098bf20:	e8 4b dc 9e ff                                  	call   0x10379b70
1098bf25:	8b c8                                           	mov    ecx,eax
1098bf27:	e8 24 d8 9e ff                                  	call   0x10379750
1098bf2c:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1098bf30:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
1098bf37:	89 02                                           	mov    DWORD PTR [edx],eax
1098bf39:	e8 c2 d8 9e ff                                  	call   0x10379800
1098bf3e:	83 44 24 1c 04                                  	add    DWORD PTR [esp+0x1c],0x4
1098bf43:	83 c7 01                                        	add    edi,0x1
1098bf46:	83 ff 0b                                        	cmp    edi,0xb
1098bf49:	72 ca                                           	jb     0x1098bf15
1098bf4b:	8d 44 24 60                                     	lea    eax,[esp+0x60]
1098bf4f:	50                                              	push   eax
1098bf50:	8b ce                                           	mov    ecx,esi
1098bf52:	e8 49 d8 9e ff                                  	call   0x103797a0
1098bf57:	8b c8                                           	mov    ecx,eax
1098bf59:	e8 f2 d7 9e ff                                  	call   0x10379750
1098bf5e:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
1098bf62:	89 43 44                                        	mov    DWORD PTR [ebx+0x44],eax
1098bf65:	e8 e6 21 bd ff                                  	call   0x1055e150
1098bf6a:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
1098bf6e:	51                                              	push   ecx
1098bf6f:	8b ce                                           	mov    ecx,esi
1098bf71:	e8 ea d7 9e ff                                  	call   0x10379760
1098bf76:	8b c8                                           	mov    ecx,eax
1098bf78:	e8 d3 d7 9e ff                                  	call   0x10379750
1098bf7d:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
1098bf81:	89 43 3c                                        	mov    DWORD PTR [ebx+0x3c],eax
1098bf84:	e8 c7 21 bd ff                                  	call   0x1055e150
1098bf89:	8d 54 24 50                                     	lea    edx,[esp+0x50]
1098bf8d:	52                                              	push   edx
1098bf8e:	8b ce                                           	mov    ecx,esi
1098bf90:	e8 eb d7 9e ff                                  	call   0x10379780
1098bf95:	8b c8                                           	mov    ecx,eax
1098bf97:	e8 b4 d7 9e ff                                  	call   0x10379750
1098bf9c:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
1098bfa0:	89 43 40                                        	mov    DWORD PTR [ebx+0x40],eax
1098bfa3:	e8 a8 21 bd ff                                  	call   0x1055e150
1098bfa8:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1098bfac:	83 44 24 18 4c                                  	add    DWORD PTR [esp+0x18],0x4c
1098bfb1:	83 c0 01                                        	add    eax,0x1
1098bfb4:	3b 44 24 4c                                     	cmp    eax,DWORD PTR [esp+0x4c]
1098bfb8:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
1098bfbc:	0f 82 ea fe ff ff                               	jb     0x1098beac
1098bfc2:	33 ff                                           	xor    edi,edi
1098bfc4:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1098bfc8:	e8 03 fb ff ff                                  	call   0x1098bad0
1098bfcd:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
1098bfd0:	50                                              	push   eax
1098bfd1:	8d 8c 24 7c 01 00 00                            	lea    ecx,[esp+0x17c]
1098bfd8:	e8 f3 47 f8 ff                                  	call   0x109107d0
1098bfdd:	57                                              	push   edi
1098bfde:	6a 01                                           	push   0x1
1098bfe0:	6a 02                                           	push   0x2
1098bfe2:	6a 02                                           	push   0x2
1098bfe4:	8d 8c 24 88 01 00 00                            	lea    ecx,[esp+0x188]
1098bfeb:	e8 90 43 f8 ff                                  	call   0x10910380
1098bff0:	84 c0                                           	test   al,al
1098bff2:	75 59                                           	jne    0x1098c04d
1098bff4:	8d 8c 24 78 01 00 00                            	lea    ecx,[esp+0x178]
1098bffb:	e8 90 48 f8 ff                                  	call   0x10910890
1098c000:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1098c004:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
1098c008:	3b f0                                           	cmp    esi,eax
1098c00a:	8b f8                                           	mov    edi,eax
1098c00c:	73 1c                                           	jae    0x1098c02a
1098c00e:	8b ff                                           	mov    edi,edi
1098c010:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098c012:	85 c0                                           	test   eax,eax
1098c014:	74 09                                           	je     0x1098c01f
1098c016:	50                                              	push   eax
1098c017:	e8 74 ce f8 ff                                  	call   0x10918e90
1098c01c:	83 c4 04                                        	add    esp,0x4
1098c01f:	83 c6 4c                                        	add    esi,0x4c
1098c022:	3b f7                                           	cmp    esi,edi
1098c024:	72 ea                                           	jb     0x1098c010
1098c026:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
1098c02a:	85 f6                                           	test   esi,esi
1098c02c:	74 09                                           	je     0x1098c037
1098c02e:	56                                              	push   esi
1098c02f:	e8 5c ce f8 ff                                  	call   0x10918e90
1098c034:	83 c4 04                                        	add    esp,0x4
1098c037:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
1098c03e:	e8 cd 61 9e ff                                  	call   0x10372210
1098c043:	83 c8 ff                                        	or     eax,0xffffffff
1098c046:	5f                                              	pop    edi
1098c047:	5e                                              	pop    esi
1098c048:	5b                                              	pop    ebx
1098c049:	8b e5                                           	mov    esp,ebp
1098c04b:	5d                                              	pop    ebp
1098c04c:	c3                                              	ret
1098c04d:	8d 8c 24 4c 01 00 00                            	lea    ecx,[esp+0x14c]
1098c054:	51                                              	push   ecx
1098c055:	8d 54 24 24                                     	lea    edx,[esp+0x24]
1098c059:	52                                              	push   edx
1098c05a:	8d 84 24 a0 00 00 00                            	lea    eax,[esp+0xa0]
1098c061:	50                                              	push   eax
1098c062:	6a 01                                           	push   0x1
1098c064:	8d 8c 24 88 01 00 00                            	lea    ecx,[esp+0x188]
1098c06b:	51                                              	push   ecx
1098c06c:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
1098c070:	e8 2b 02 c4 ff                                  	call   0x105cc2a0
1098c075:	50                                              	push   eax
1098c076:	e8 35 bf 9e ff                                  	call   0x10377fb0
1098c07b:	83 c4 10                                        	add    esp,0x10
1098c07e:	84 c0                                           	test   al,al
1098c080:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1098c084:	0f 94 c3                                        	sete   bl
1098c087:	e8 74 e8 c3 ff                                  	call   0x105ca900
1098c08c:	8d 8c 24 78 01 00 00                            	lea    ecx,[esp+0x178]
1098c093:	e8 f8 47 f8 ff                                  	call   0x10910890
1098c098:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1098c09c:	e8 cf c1 9e ff                                  	call   0x10378270
1098c0a1:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
1098c0a8:	e8 63 61 9e ff                                  	call   0x10372210
1098c0ad:	84 db                                           	test   bl,bl
1098c0af:	0f 85 50 fd ff ff                               	jne    0x1098be05
1098c0b5:	5f                                              	pop    edi
1098c0b6:	5e                                              	pop    esi
1098c0b7:	33 c0                                           	xor    eax,eax
1098c0b9:	5b                                              	pop    ebx
1098c0ba:	8b e5                                           	mov    esp,ebp
1098c0bc:	5d                                              	pop    ebp
1098c0bd:	c3                                              	ret
1098c0be:	cc                                              	int3
1098c0bf:	cc                                              	int3
