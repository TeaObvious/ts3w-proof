# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ef30 (SceneManWrap_RenderToBitmap)
Paired Ghidra pseudocode: 1098EF30_SceneManWrap_RenderToBitmap.c
Window: [0x1098ef30, 0x1098f250) (800 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ef30: 83 ec 5c 53 55 56 8b 74 24 6c 57 8b ce e8 0e 6c
1098ef40: 01 00 89 44 24 18 e8 55 14 a8 ff 8b d8 e8 6e a5
1098ef50: a7 ff 8b 4c 24 7c 8b f8 8b 44 24 78 8d 54 24 34
1098ef60: 33 ed 89 4c 24 30 52 8b cf 89 6c 24 28 89 6c 24
1098ef70: 2c 89 44 24 30 e8 c6 c1 a7 ff d9 e8 83 ec 08 d9
1098ef80: 5c 24 04 d9 ee 8d 44 24 2c d9 1c 24 8b cf 50 e8
1098ef90: dc c1 a7 ff 55 55 55 55 68 00 72 b9 10 6a 34 e8
1098efa0: 0c 9f f8 ff 83 c4 18 3b c5 74 09 8b c8 e8 4e 3e
1098efb0: a8 ff 8b e8 8b 55 00 8b 42 04 8b cd 89 6c 24 10
1098efc0: ff d0 8d 4c 24 44 e8 55 22 a8 ff 8b 4c 24 7c 8b
1098efd0: 54 24 78 68 64 69 b9 10 68 00 01 00 00 6a 3d 6a
1098efe0: 01 51 52 8b cd e8 d6 3e a8 ff 84 c0 0f 84 06 02
1098eff0: 00 00 8d 44 24 44 50 6a 00 8b cd e8 f0 36 a8 ff
1098f000: 83 7c 24 68 00 0f 84 e3 01 00 00 68 db bd f1 01
1098f010: 8b cb e8 49 18 a8 ff 68 dc bd f1 01 8b cb 8b e8
1098f020: e8 3b 18 a8 ff 85 ed 89 44 24 14 75 7c 55 55 55
1098f030: 55 68 00 72 b9 10 6a 28 e8 73 9e f8 ff 83 c4 18
1098f040: 85 c0 74 0b 8b c8 e8 55 22 a8 ff 8b f0 eb 02 33
1098f050: f6 8b 16 8b 42 04 8b ce ff d0 8b 4c 24 7c 8b 54
1098f060: 24 78 6a 01 6a 3d 51 52 8b ce e8 71 1e a8 ff 84
1098f070: c0 75 0e 8b 06 8b 50 08 8b ce ff d2 e9 69 01 00
1098f080: 00 56 68 db bd f1 01 8b cb e8 52 18 a8 ff 8b 06
1098f090: 8b 50 08 8b ce ff d2 68 db bd f1 01 8b cb e8 bd
1098f0a0: 17 a8 ff 8b 74 24 70 8b e8 83 7c 24 14 00 0f 85
1098f0b0: 85 00 00 00 6a 00 6a 00 6a 00 6a 00 68 00 72 b9
1098f0c0: 10 6a 28 e8 e8 9d f8 ff 83 c4 18 85 c0 74 0b 8b
1098f0d0: c8 e8 ca 21 a8 ff 8b f0 eb 02 33 f6 8b 06 8b 50
1098f0e0: 04 8b ce ff d2 8b 44 24 7c 8b 4c 24 78 6a 11 68
1098f0f0: 8d 00 00 00 50 51 8b ce e8 e3 1d a8 ff 84 c0 75
1098f100: 0e 8b 16 8b 42 08 8b ce ff d0 e9 db 00 00 00 56
1098f110: 68 dc bd f1 01 8b cb e8 c4 17 a8 ff 8b 16 8b 42
1098f120: 08 8b ce ff d0 68 dc bd f1 01 8b cb e8 2f 17 a8
1098f130: ff 8b 74 24 70 89 44 24 14 8b 4d 00 51 6a 00 8b
1098f140: cf e8 8a af a7 ff 8b 54 24 14 8b 02 50 8b cf e8
1098f150: cc af a7 ff 8b cf e8 f5 d6 a7 ff 84 c0 74 2e 8b
1098f160: 4c 24 18 6a 00 e8 a6 4a dc ff 8b ce e8 1f 22 b5
1098f170: ff 8b ce e8 48 24 b5 ff 8b ce e8 61 86 b5 ff 8b
1098f180: cf e8 ca ef bc ff 8b cf e8 03 d8 a7 ff 8b 4d 00
1098f190: 8b 41 24 8b 5c 24 68 6a 00 6a ff 6a 00 6a 00 50
1098f1a0: 6a 00 6a 00 53 e8 40 b9 00 00 85 c0 7c 3c 8b 13
1098f1b0: 8b 4a 34 6a 10 6a 00 8d 44 24 24 50 53 ff d1 85
1098f1c0: c0 7c 27 8b 44 24 7c 0f af 84 24 80 00 00 00 8b
1098f1d0: 54 24 20 50 8b 44 24 78 52 50 e8 43 17 10 00 8b
1098f1e0: 0b 8b 51 38 83 c4 0c 53 ff d2 8b 6c 24 10 8b 45
1098f1f0: 00 8b 50 08 8b cd ff d2 8b cf e8 81 31 8c ff 50
1098f200: 6a 00 8b cf e8 c7 ae a7 ff 8b cf e8 40 fc c7 ff
1098f210: 50 8b cf e8 08 af a7 ff d9 e8 83 ec 08 d9 5c 24
1098f220: 04 d9 ee 8d 44 24 3c d9 1c 24 8b cf 50 e8 3e bf
1098f230: a7 ff 8d 4c 24 44 e8 a5 1d a8 ff 5f 5e 5d 5b 83
1098f240: c4 5c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ef30 <.text+0x98df30>:
1098ef30:	83 ec 5c                                        	sub    esp,0x5c
1098ef33:	53                                              	push   ebx
1098ef34:	55                                              	push   ebp
1098ef35:	56                                              	push   esi
1098ef36:	8b 74 24 6c                                     	mov    esi,DWORD PTR [esp+0x6c]
1098ef3a:	57                                              	push   edi
1098ef3b:	8b ce                                           	mov    ecx,esi
1098ef3d:	e8 0e 6c 01 00                                  	call   0x109a5b50
1098ef42:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1098ef46:	e8 55 14 a8 ff                                  	call   0x104103a0
1098ef4b:	8b d8                                           	mov    ebx,eax
1098ef4d:	e8 6e a5 a7 ff                                  	call   0x104094c0
1098ef52:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
1098ef56:	8b f8                                           	mov    edi,eax
1098ef58:	8b 44 24 78                                     	mov    eax,DWORD PTR [esp+0x78]
1098ef5c:	8d 54 24 34                                     	lea    edx,[esp+0x34]
1098ef60:	33 ed                                           	xor    ebp,ebp
1098ef62:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
1098ef66:	52                                              	push   edx
1098ef67:	8b cf                                           	mov    ecx,edi
1098ef69:	89 6c 24 28                                     	mov    DWORD PTR [esp+0x28],ebp
1098ef6d:	89 6c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebp
1098ef71:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
1098ef75:	e8 c6 c1 a7 ff                                  	call   0x1040b140
1098ef7a:	d9 e8                                           	fld1
1098ef7c:	83 ec 08                                        	sub    esp,0x8
1098ef7f:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1098ef83:	d9 ee                                           	fldz
1098ef85:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
1098ef89:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098ef8c:	8b cf                                           	mov    ecx,edi
1098ef8e:	50                                              	push   eax
1098ef8f:	e8 dc c1 a7 ff                                  	call   0x1040b170
1098ef94:	55                                              	push   ebp
1098ef95:	55                                              	push   ebp
1098ef96:	55                                              	push   ebp
1098ef97:	55                                              	push   ebp
1098ef98:	68 00 72 b9 10                                  	push   0x10b97200
1098ef9d:	6a 34                                           	push   0x34
1098ef9f:	e8 0c 9f f8 ff                                  	call   0x10918eb0
1098efa4:	83 c4 18                                        	add    esp,0x18
1098efa7:	3b c5                                           	cmp    eax,ebp
1098efa9:	74 09                                           	je     0x1098efb4
1098efab:	8b c8                                           	mov    ecx,eax
1098efad:	e8 4e 3e a8 ff                                  	call   0x10412e00
1098efb2:	8b e8                                           	mov    ebp,eax
1098efb4:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
1098efb7:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098efba:	8b cd                                           	mov    ecx,ebp
1098efbc:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
1098efc0:	ff d0                                           	call   eax
1098efc2:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
1098efc6:	e8 55 22 a8 ff                                  	call   0x10411220
1098efcb:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
1098efcf:	8b 54 24 78                                     	mov    edx,DWORD PTR [esp+0x78]
1098efd3:	68 64 69 b9 10                                  	push   0x10b96964
1098efd8:	68 00 01 00 00                                  	push   0x100
1098efdd:	6a 3d                                           	push   0x3d
1098efdf:	6a 01                                           	push   0x1
1098efe1:	51                                              	push   ecx
1098efe2:	52                                              	push   edx
1098efe3:	8b cd                                           	mov    ecx,ebp
1098efe5:	e8 d6 3e a8 ff                                  	call   0x10412ec0
1098efea:	84 c0                                           	test   al,al
1098efec:	0f 84 06 02 00 00                               	je     0x1098f1f8
1098eff2:	8d 44 24 44                                     	lea    eax,[esp+0x44]
1098eff6:	50                                              	push   eax
1098eff7:	6a 00                                           	push   0x0
1098eff9:	8b cd                                           	mov    ecx,ebp
1098effb:	e8 f0 36 a8 ff                                  	call   0x104126f0
1098f000:	83 7c 24 68 00                                  	cmp    DWORD PTR [esp+0x68],0x0
1098f005:	0f 84 e3 01 00 00                               	je     0x1098f1ee
1098f00b:	68 db bd f1 01                                  	push   0x1f1bddb
1098f010:	8b cb                                           	mov    ecx,ebx
1098f012:	e8 49 18 a8 ff                                  	call   0x10410860
1098f017:	68 dc bd f1 01                                  	push   0x1f1bddc
1098f01c:	8b cb                                           	mov    ecx,ebx
1098f01e:	8b e8                                           	mov    ebp,eax
1098f020:	e8 3b 18 a8 ff                                  	call   0x10410860
1098f025:	85 ed                                           	test   ebp,ebp
1098f027:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1098f02b:	75 7c                                           	jne    0x1098f0a9
1098f02d:	55                                              	push   ebp
1098f02e:	55                                              	push   ebp
1098f02f:	55                                              	push   ebp
1098f030:	55                                              	push   ebp
1098f031:	68 00 72 b9 10                                  	push   0x10b97200
1098f036:	6a 28                                           	push   0x28
1098f038:	e8 73 9e f8 ff                                  	call   0x10918eb0
1098f03d:	83 c4 18                                        	add    esp,0x18
1098f040:	85 c0                                           	test   eax,eax
1098f042:	74 0b                                           	je     0x1098f04f
1098f044:	8b c8                                           	mov    ecx,eax
1098f046:	e8 55 22 a8 ff                                  	call   0x104112a0
1098f04b:	8b f0                                           	mov    esi,eax
1098f04d:	eb 02                                           	jmp    0x1098f051
1098f04f:	33 f6                                           	xor    esi,esi
1098f051:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098f053:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098f056:	8b ce                                           	mov    ecx,esi
1098f058:	ff d0                                           	call   eax
1098f05a:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
1098f05e:	8b 54 24 78                                     	mov    edx,DWORD PTR [esp+0x78]
1098f062:	6a 01                                           	push   0x1
1098f064:	6a 3d                                           	push   0x3d
1098f066:	51                                              	push   ecx
1098f067:	52                                              	push   edx
1098f068:	8b ce                                           	mov    ecx,esi
1098f06a:	e8 71 1e a8 ff                                  	call   0x10410ee0
1098f06f:	84 c0                                           	test   al,al
1098f071:	75 0e                                           	jne    0x1098f081
1098f073:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098f075:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1098f078:	8b ce                                           	mov    ecx,esi
1098f07a:	ff d2                                           	call   edx
1098f07c:	e9 69 01 00 00                                  	jmp    0x1098f1ea
1098f081:	56                                              	push   esi
1098f082:	68 db bd f1 01                                  	push   0x1f1bddb
1098f087:	8b cb                                           	mov    ecx,ebx
1098f089:	e8 52 18 a8 ff                                  	call   0x104108e0
1098f08e:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098f090:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1098f093:	8b ce                                           	mov    ecx,esi
1098f095:	ff d2                                           	call   edx
1098f097:	68 db bd f1 01                                  	push   0x1f1bddb
1098f09c:	8b cb                                           	mov    ecx,ebx
1098f09e:	e8 bd 17 a8 ff                                  	call   0x10410860
1098f0a3:	8b 74 24 70                                     	mov    esi,DWORD PTR [esp+0x70]
1098f0a7:	8b e8                                           	mov    ebp,eax
1098f0a9:	83 7c 24 14 00                                  	cmp    DWORD PTR [esp+0x14],0x0
1098f0ae:	0f 85 85 00 00 00                               	jne    0x1098f139
1098f0b4:	6a 00                                           	push   0x0
1098f0b6:	6a 00                                           	push   0x0
1098f0b8:	6a 00                                           	push   0x0
1098f0ba:	6a 00                                           	push   0x0
1098f0bc:	68 00 72 b9 10                                  	push   0x10b97200
1098f0c1:	6a 28                                           	push   0x28
1098f0c3:	e8 e8 9d f8 ff                                  	call   0x10918eb0
1098f0c8:	83 c4 18                                        	add    esp,0x18
1098f0cb:	85 c0                                           	test   eax,eax
1098f0cd:	74 0b                                           	je     0x1098f0da
1098f0cf:	8b c8                                           	mov    ecx,eax
1098f0d1:	e8 ca 21 a8 ff                                  	call   0x104112a0
1098f0d6:	8b f0                                           	mov    esi,eax
1098f0d8:	eb 02                                           	jmp    0x1098f0dc
1098f0da:	33 f6                                           	xor    esi,esi
1098f0dc:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098f0de:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098f0e1:	8b ce                                           	mov    ecx,esi
1098f0e3:	ff d2                                           	call   edx
1098f0e5:	8b 44 24 7c                                     	mov    eax,DWORD PTR [esp+0x7c]
1098f0e9:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
1098f0ed:	6a 11                                           	push   0x11
1098f0ef:	68 8d 00 00 00                                  	push   0x8d
1098f0f4:	50                                              	push   eax
1098f0f5:	51                                              	push   ecx
1098f0f6:	8b ce                                           	mov    ecx,esi
1098f0f8:	e8 e3 1d a8 ff                                  	call   0x10410ee0
1098f0fd:	84 c0                                           	test   al,al
1098f0ff:	75 0e                                           	jne    0x1098f10f
1098f101:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098f103:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1098f106:	8b ce                                           	mov    ecx,esi
1098f108:	ff d0                                           	call   eax
1098f10a:	e9 db 00 00 00                                  	jmp    0x1098f1ea
1098f10f:	56                                              	push   esi
1098f110:	68 dc bd f1 01                                  	push   0x1f1bddc
1098f115:	8b cb                                           	mov    ecx,ebx
1098f117:	e8 c4 17 a8 ff                                  	call   0x104108e0
1098f11c:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098f11e:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1098f121:	8b ce                                           	mov    ecx,esi
1098f123:	ff d0                                           	call   eax
1098f125:	68 dc bd f1 01                                  	push   0x1f1bddc
1098f12a:	8b cb                                           	mov    ecx,ebx
1098f12c:	e8 2f 17 a8 ff                                  	call   0x10410860
1098f131:	8b 74 24 70                                     	mov    esi,DWORD PTR [esp+0x70]
1098f135:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1098f139:	8b 4d 00                                        	mov    ecx,DWORD PTR [ebp+0x0]
1098f13c:	51                                              	push   ecx
1098f13d:	6a 00                                           	push   0x0
1098f13f:	8b cf                                           	mov    ecx,edi
1098f141:	e8 8a af a7 ff                                  	call   0x1040a0d0
1098f146:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1098f14a:	8b 02                                           	mov    eax,DWORD PTR [edx]
1098f14c:	50                                              	push   eax
1098f14d:	8b cf                                           	mov    ecx,edi
1098f14f:	e8 cc af a7 ff                                  	call   0x1040a120
1098f154:	8b cf                                           	mov    ecx,edi
1098f156:	e8 f5 d6 a7 ff                                  	call   0x1040c850
1098f15b:	84 c0                                           	test   al,al
1098f15d:	74 2e                                           	je     0x1098f18d
1098f15f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1098f163:	6a 00                                           	push   0x0
1098f165:	e8 a6 4a dc ff                                  	call   0x10753c10
1098f16a:	8b ce                                           	mov    ecx,esi
1098f16c:	e8 1f 22 b5 ff                                  	call   0x104e1390
1098f171:	8b ce                                           	mov    ecx,esi
1098f173:	e8 48 24 b5 ff                                  	call   0x104e15c0
1098f178:	8b ce                                           	mov    ecx,esi
1098f17a:	e8 61 86 b5 ff                                  	call   0x104e77e0
1098f17f:	8b cf                                           	mov    ecx,edi
1098f181:	e8 ca ef bc ff                                  	call   0x1055e150
1098f186:	8b cf                                           	mov    ecx,edi
1098f188:	e8 03 d8 a7 ff                                  	call   0x1040c990
1098f18d:	8b 4d 00                                        	mov    ecx,DWORD PTR [ebp+0x0]
1098f190:	8b 41 24                                        	mov    eax,DWORD PTR [ecx+0x24]
1098f193:	8b 5c 24 68                                     	mov    ebx,DWORD PTR [esp+0x68]
1098f197:	6a 00                                           	push   0x0
1098f199:	6a ff                                           	push   0xffffffff
1098f19b:	6a 00                                           	push   0x0
1098f19d:	6a 00                                           	push   0x0
1098f19f:	50                                              	push   eax
1098f1a0:	6a 00                                           	push   0x0
1098f1a2:	6a 00                                           	push   0x0
1098f1a4:	53                                              	push   ebx
1098f1a5:	e8 40 b9 00 00                                  	call   0x1099aaea
1098f1aa:	85 c0                                           	test   eax,eax
1098f1ac:	7c 3c                                           	jl     0x1098f1ea
1098f1ae:	8b 13                                           	mov    edx,DWORD PTR [ebx]
1098f1b0:	8b 4a 34                                        	mov    ecx,DWORD PTR [edx+0x34]
1098f1b3:	6a 10                                           	push   0x10
1098f1b5:	6a 00                                           	push   0x0
1098f1b7:	8d 44 24 24                                     	lea    eax,[esp+0x24]
1098f1bb:	50                                              	push   eax
1098f1bc:	53                                              	push   ebx
1098f1bd:	ff d1                                           	call   ecx
1098f1bf:	85 c0                                           	test   eax,eax
1098f1c1:	7c 27                                           	jl     0x1098f1ea
1098f1c3:	8b 44 24 7c                                     	mov    eax,DWORD PTR [esp+0x7c]
1098f1c7:	0f af 84 24 80 00 00 00                         	imul   eax,DWORD PTR [esp+0x80]
1098f1cf:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1098f1d3:	50                                              	push   eax
1098f1d4:	8b 44 24 78                                     	mov    eax,DWORD PTR [esp+0x78]
1098f1d8:	52                                              	push   edx
1098f1d9:	50                                              	push   eax
1098f1da:	e8 43 17 10 00                                  	call   0x10a90922
1098f1df:	8b 0b                                           	mov    ecx,DWORD PTR [ebx]
1098f1e1:	8b 51 38                                        	mov    edx,DWORD PTR [ecx+0x38]
1098f1e4:	83 c4 0c                                        	add    esp,0xc
1098f1e7:	53                                              	push   ebx
1098f1e8:	ff d2                                           	call   edx
1098f1ea:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
1098f1ee:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
1098f1f1:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1098f1f4:	8b cd                                           	mov    ecx,ebp
1098f1f6:	ff d2                                           	call   edx
1098f1f8:	8b cf                                           	mov    ecx,edi
1098f1fa:	e8 81 31 8c ff                                  	call   0x10252380
1098f1ff:	50                                              	push   eax
1098f200:	6a 00                                           	push   0x0
1098f202:	8b cf                                           	mov    ecx,edi
1098f204:	e8 c7 ae a7 ff                                  	call   0x1040a0d0
1098f209:	8b cf                                           	mov    ecx,edi
1098f20b:	e8 40 fc c7 ff                                  	call   0x1060ee50
1098f210:	50                                              	push   eax
1098f211:	8b cf                                           	mov    ecx,edi
1098f213:	e8 08 af a7 ff                                  	call   0x1040a120
1098f218:	d9 e8                                           	fld1
1098f21a:	83 ec 08                                        	sub    esp,0x8
1098f21d:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1098f221:	d9 ee                                           	fldz
1098f223:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
1098f227:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098f22a:	8b cf                                           	mov    ecx,edi
1098f22c:	50                                              	push   eax
1098f22d:	e8 3e bf a7 ff                                  	call   0x1040b170
1098f232:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
1098f236:	e8 a5 1d a8 ff                                  	call   0x10410fe0
1098f23b:	5f                                              	pop    edi
1098f23c:	5e                                              	pop    esi
1098f23d:	5d                                              	pop    ebp
1098f23e:	5b                                              	pop    ebx
1098f23f:	83 c4 5c                                        	add    esp,0x5c
1098f242:	c3                                              	ret
1098f243:	cc                                              	int3
1098f244:	cc                                              	int3
1098f245:	cc                                              	int3
1098f246:	cc                                              	int3
1098f247:	cc                                              	int3
1098f248:	cc                                              	int3
1098f249:	cc                                              	int3
1098f24a:	cc                                              	int3
1098f24b:	cc                                              	int3
1098f24c:	cc                                              	int3
1098f24d:	cc                                              	int3
1098f24e:	cc                                              	int3
1098f24f:	cc                                              	int3
