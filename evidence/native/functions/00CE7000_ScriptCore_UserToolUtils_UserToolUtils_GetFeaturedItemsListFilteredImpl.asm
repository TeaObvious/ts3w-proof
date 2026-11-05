# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce7000 (ScriptCore.UserToolUtils::UserToolUtils_GetFeaturedItemsListFilteredImpl)
Paired Ghidra pseudocode: 00CE7000_ScriptCore_UserToolUtils_UserToolUtils_GetFeaturedItemsListFilteredImpl.c
Window: [0x00ce7000, 0x00ce71e0) (480 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce71e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce7000: 81 ec 88 00 00 00 53 56 8b 35 34 e0 1e 01 33 db
00ce7010: 3b f3 0f 84 b9 01 00 00 89 5c 24 08 e8 6f 23 a8
00ce7020: ff 3b c3 89 44 24 1c 0f 84 97 01 00 00 8b 84 24
00ce7030: 94 00 00 00 8b 8c 24 9c 00 00 00 8b 94 24 a0 00
00ce7040: 00 00 89 44 24 44 8b 84 24 a4 00 00 00 89 4c 24
00ce7050: 48 8b 8c 24 a8 00 00 00 89 44 24 50 8b 84 24 b0
00ce7060: 00 00 00 89 4c 24 54 8b 8c 24 b4 00 00 00 89 54
00ce7070: 24 4c 8b 94 24 ac 00 00 00 89 44 24 5c 8b 84 24
00ce7080: bc 00 00 00 89 8c 24 80 00 00 00 8b 8c 24 c0 00
00ce7090: 00 00 57 89 54 24 5c 8b 94 24 bc 00 00 00 89 44
00ce70a0: 24 44 89 4c 24 68 8d 44 24 10 50 8d 4c 24 48 89
00ce70b0: 94 24 8c 00 00 00 8b 94 24 a0 00 00 00 51 8b ce
00ce70c0: 89 5c 24 74 89 5c 24 7c 89 9c 24 80 00 00 00 89
00ce70d0: 9c 24 84 00 00 00 89 9c 24 88 00 00 00 89 9c 24
00ce70e0: 94 00 00 00 89 54 24 6c 89 5c 24 18 89 5c 24 1c
00ce70f0: 89 5c 24 20 c7 44 24 24 38 22 05 01 e8 af 98 fa
00ce7100: ff 8b 74 24 14 2b 74 24 10 8b 0d 64 c8 1c 01 c1
00ce7110: fe 03 53 8d 14 f5 00 00 00 00 52 e8 00 fe 7f ff
00ce7120: 8b f8 3b fb 0f 84 88 00 00 00 33 c0 3b f3 76 19
00ce7130: 8b 4c 24 10 8b 14 c1 89 14 c7 8b 4c c1 04 89 4c
00ce7140: c7 04 83 c0 01 3b c6 72 e7 3b f3 c7 44 24 24 f4
00ce7150: a6 fb 00 66 89 5c 24 2c 66 89 5c 24 2e 8d 4c 24
00ce7160: 24 74 08 56 6a 08 57 6a 18 eb 06 53 6a 08 57 6a
00ce7170: 20 6a 0c e8 48 e8 80 ff 8b 4c 24 20 8b 11 8b 52
00ce7180: 50 8d 44 24 0c 50 8d 44 24 28 50 ff d2 8b 0d 64
00ce7190: c8 1c 01 57 e8 d7 ec 7f ff f6 44 24 2c 04 c7 44
00ce71a0: 24 24 f4 a6 fb 00 74 0a 53 8d 4c 24 28 e8 ae e5
00ce71b0: 80 ff 8b 44 24 10 3b c3 5f 74 09 50 e8 1f d3 7f
00ce71c0: ff 83 c4 04 8b 44 24 08 5e 5b 81 c4 88 00 00 00
00ce71d0: c3 5e 33 c0 5b 81 c4 88 00 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
00ce7000 <.text+0x8e6000>:
  ce7000:	81 ec 88 00 00 00                               	sub    esp,0x88
  ce7006:	53                                              	push   ebx
  ce7007:	56                                              	push   esi
  ce7008:	8b 35 34 e0 1e 01                               	mov    esi,DWORD PTR ds:0x11ee034
  ce700e:	33 db                                           	xor    ebx,ebx
  ce7010:	3b f3                                           	cmp    esi,ebx
  ce7012:	0f 84 b9 01 00 00                               	je     0xce71d1
  ce7018:	89 5c 24 08                                     	mov    DWORD PTR [esp+0x8],ebx
  ce701c:	e8 6f 23 a8 ff                                  	call   0x769390
  ce7021:	3b c3                                           	cmp    eax,ebx
  ce7023:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  ce7027:	0f 84 97 01 00 00                               	je     0xce71c4
  ce702d:	8b 84 24 94 00 00 00                            	mov    eax,DWORD PTR [esp+0x94]
  ce7034:	8b 8c 24 9c 00 00 00                            	mov    ecx,DWORD PTR [esp+0x9c]
  ce703b:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
  ce7042:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
  ce7046:	8b 84 24 a4 00 00 00                            	mov    eax,DWORD PTR [esp+0xa4]
  ce704d:	89 4c 24 48                                     	mov    DWORD PTR [esp+0x48],ecx
  ce7051:	8b 8c 24 a8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xa8]
  ce7058:	89 44 24 50                                     	mov    DWORD PTR [esp+0x50],eax
  ce705c:	8b 84 24 b0 00 00 00                            	mov    eax,DWORD PTR [esp+0xb0]
  ce7063:	89 4c 24 54                                     	mov    DWORD PTR [esp+0x54],ecx
  ce7067:	8b 8c 24 b4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xb4]
  ce706e:	89 54 24 4c                                     	mov    DWORD PTR [esp+0x4c],edx
  ce7072:	8b 94 24 ac 00 00 00                            	mov    edx,DWORD PTR [esp+0xac]
  ce7079:	89 44 24 5c                                     	mov    DWORD PTR [esp+0x5c],eax
  ce707d:	8b 84 24 bc 00 00 00                            	mov    eax,DWORD PTR [esp+0xbc]
  ce7084:	89 8c 24 80 00 00 00                            	mov    DWORD PTR [esp+0x80],ecx
  ce708b:	8b 8c 24 c0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xc0]
  ce7092:	57                                              	push   edi
  ce7093:	89 54 24 5c                                     	mov    DWORD PTR [esp+0x5c],edx
  ce7097:	8b 94 24 bc 00 00 00                            	mov    edx,DWORD PTR [esp+0xbc]
  ce709e:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
  ce70a2:	89 4c 24 68                                     	mov    DWORD PTR [esp+0x68],ecx
  ce70a6:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  ce70aa:	50                                              	push   eax
  ce70ab:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  ce70af:	89 94 24 8c 00 00 00                            	mov    DWORD PTR [esp+0x8c],edx
  ce70b6:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
  ce70bd:	51                                              	push   ecx
  ce70be:	8b ce                                           	mov    ecx,esi
  ce70c0:	89 5c 24 74                                     	mov    DWORD PTR [esp+0x74],ebx
  ce70c4:	89 5c 24 7c                                     	mov    DWORD PTR [esp+0x7c],ebx
  ce70c8:	89 9c 24 80 00 00 00                            	mov    DWORD PTR [esp+0x80],ebx
  ce70cf:	89 9c 24 84 00 00 00                            	mov    DWORD PTR [esp+0x84],ebx
  ce70d6:	89 9c 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],ebx
  ce70dd:	89 9c 24 94 00 00 00                            	mov    DWORD PTR [esp+0x94],ebx
  ce70e4:	89 54 24 6c                                     	mov    DWORD PTR [esp+0x6c],edx
  ce70e8:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  ce70ec:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  ce70f0:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  ce70f4:	c7 44 24 24 38 22 05 01                         	mov    DWORD PTR [esp+0x24],0x1052238
  ce70fc:	e8 af 98 fa ff                                  	call   0xc909b0
  ce7101:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  ce7105:	2b 74 24 10                                     	sub    esi,DWORD PTR [esp+0x10]
  ce7109:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce710f:	c1 fe 03                                        	sar    esi,0x3
  ce7112:	53                                              	push   ebx
  ce7113:	8d 14 f5 00 00 00 00                            	lea    edx,[esi*8+0x0]
  ce711a:	52                                              	push   edx
  ce711b:	e8 00 fe 7f ff                                  	call   0x4e6f20
  ce7120:	8b f8                                           	mov    edi,eax
  ce7122:	3b fb                                           	cmp    edi,ebx
  ce7124:	0f 84 88 00 00 00                               	je     0xce71b2
  ce712a:	33 c0                                           	xor    eax,eax
  ce712c:	3b f3                                           	cmp    esi,ebx
  ce712e:	76 19                                           	jbe    0xce7149
  ce7130:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ce7134:	8b 14 c1                                        	mov    edx,DWORD PTR [ecx+eax*8]
  ce7137:	89 14 c7                                        	mov    DWORD PTR [edi+eax*8],edx
  ce713a:	8b 4c c1 04                                     	mov    ecx,DWORD PTR [ecx+eax*8+0x4]
  ce713e:	89 4c c7 04                                     	mov    DWORD PTR [edi+eax*8+0x4],ecx
  ce7142:	83 c0 01                                        	add    eax,0x1
  ce7145:	3b c6                                           	cmp    eax,esi
  ce7147:	72 e7                                           	jb     0xce7130
  ce7149:	3b f3                                           	cmp    esi,ebx
  ce714b:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  ce7153:	66 89 5c 24 2c                                  	mov    WORD PTR [esp+0x2c],bx
  ce7158:	66 89 5c 24 2e                                  	mov    WORD PTR [esp+0x2e],bx
  ce715d:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ce7161:	74 08                                           	je     0xce716b
  ce7163:	56                                              	push   esi
  ce7164:	6a 08                                           	push   0x8
  ce7166:	57                                              	push   edi
  ce7167:	6a 18                                           	push   0x18
  ce7169:	eb 06                                           	jmp    0xce7171
  ce716b:	53                                              	push   ebx
  ce716c:	6a 08                                           	push   0x8
  ce716e:	57                                              	push   edi
  ce716f:	6a 20                                           	push   0x20
  ce7171:	6a 0c                                           	push   0xc
  ce7173:	e8 48 e8 80 ff                                  	call   0x4f59c0
  ce7178:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  ce717c:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  ce717e:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ce7181:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  ce7185:	50                                              	push   eax
  ce7186:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  ce718a:	50                                              	push   eax
  ce718b:	ff d2                                           	call   edx
  ce718d:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce7193:	57                                              	push   edi
  ce7194:	e8 d7 ec 7f ff                                  	call   0x4e5e70
  ce7199:	f6 44 24 2c 04                                  	test   BYTE PTR [esp+0x2c],0x4
  ce719e:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  ce71a6:	74 0a                                           	je     0xce71b2
  ce71a8:	53                                              	push   ebx
  ce71a9:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  ce71ad:	e8 ae e5 80 ff                                  	call   0x4f5760
  ce71b2:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ce71b6:	3b c3                                           	cmp    eax,ebx
  ce71b8:	5f                                              	pop    edi
  ce71b9:	74 09                                           	je     0xce71c4
  ce71bb:	50                                              	push   eax
  ce71bc:	e8 1f d3 7f ff                                  	call   0x4e44e0
  ce71c1:	83 c4 04                                        	add    esp,0x4
  ce71c4:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce71c8:	5e                                              	pop    esi
  ce71c9:	5b                                              	pop    ebx
  ce71ca:	81 c4 88 00 00 00                               	add    esp,0x88
  ce71d0:	c3                                              	ret
  ce71d1:	5e                                              	pop    esi
  ce71d2:	33 c0                                           	xor    eax,eax
  ce71d4:	5b                                              	pop    ebx
  ce71d5:	81 c4 88 00 00 00                               	add    esp,0x88
  ce71db:	c3                                              	ret
  ce71dc:	cc                                              	int3
  ce71dd:	cc                                              	int3
  ce71de:	cc                                              	int3
  ce71df:	cc                                              	int3
