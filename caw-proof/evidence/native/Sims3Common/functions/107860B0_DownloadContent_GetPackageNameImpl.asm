# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107860b0 (DownloadContent_GetPackageNameImpl)
Paired Ghidra pseudocode: 107860B0_DownloadContent_GetPackageNameImpl.c
Window: [0x107860b0, 0x107861b0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x107861b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107860b0: 83 ec 34 56 e8 07 e4 fe ff 8b f0 85 f6 0f 84 e5
107860c0: 00 00 00 b8 44 82 ca 10 89 44 24 08 89 44 24 0c
107860d0: 8d 44 24 08 50 83 ec 10 54 8d 4c 24 54 c7 44 24
107860e0: 2c a4 8e b5 10 c7 44 24 28 46 82 ca 10 e8 ce 79
107860f0: dd ff 8b ce e8 77 3f ff ff 84 c0 0f 84 88 00 00
10786100: 00 6a 01 6a 10 8d 4c 24 10 51 6a 09 6a 13 8d 4c
10786110: 24 2c c7 44 24 2c b4 a5 ac 10 66 c7 44 24 36 13
10786120: 00 66 c7 44 24 34 0b 00 e8 63 2a 1a 00 e8 ee 4f
10786130: dd ff 8b 10 8b 52 50 8d 4c 24 04 51 8d 4c 24 1c
10786140: 51 8b c8 ff d2 f6 44 24 20 04 8b 74 24 04 c7 44
10786150: 24 18 b4 a5 ac 10 74 0b 6a 00 8d 4c 24 1c e8 2d
10786160: 29 1a 00 8b 4c 24 10 8b 44 24 08 2b c8 83 e1 fe
10786170: 83 f9 02 7e 0d 85 c0 74 09 50 e8 11 2d 19 00 83
10786180: c4 04 8b c6 5e 83 c4 34 c3 8b 54 24 10 8b 44 24
10786190: 08 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0 74 09 50
107861a0: e8 eb 2c 19 00 83 c4 04 33 c0 5e 83 c4 34 c3 cc

LINEAR DISASSEMBLY
107860b0 <.text+0x7850b0>:
107860b0:	83 ec 34                                        	sub    esp,0x34
107860b3:	56                                              	push   esi
107860b4:	e8 07 e4 fe ff                                  	call   0x107744c0
107860b9:	8b f0                                           	mov    esi,eax
107860bb:	85 f6                                           	test   esi,esi
107860bd:	0f 84 e5 00 00 00                               	je     0x107861a8
107860c3:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
107860c8:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
107860cc:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
107860d0:	8d 44 24 08                                     	lea    eax,[esp+0x8]
107860d4:	50                                              	push   eax
107860d5:	83 ec 10                                        	sub    esp,0x10
107860d8:	54                                              	push   esp
107860d9:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
107860dd:	c7 44 24 2c a4 8e b5 10                         	mov    DWORD PTR [esp+0x2c],0x10b58ea4
107860e5:	c7 44 24 28 46 82 ca 10                         	mov    DWORD PTR [esp+0x28],0x10ca8246
107860ed:	e8 ce 79 dd ff                                  	call   0x1055dac0
107860f2:	8b ce                                           	mov    ecx,esi
107860f4:	e8 77 3f ff ff                                  	call   0x1077a070
107860f9:	84 c0                                           	test   al,al
107860fb:	0f 84 88 00 00 00                               	je     0x10786189
10786101:	6a 01                                           	push   0x1
10786103:	6a 10                                           	push   0x10
10786105:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10786109:	51                                              	push   ecx
1078610a:	6a 09                                           	push   0x9
1078610c:	6a 13                                           	push   0x13
1078610e:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10786112:	c7 44 24 2c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x2c],0x10aca5b4
1078611a:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
10786121:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
10786128:	e8 63 2a 1a 00                                  	call   0x10928b90
1078612d:	e8 ee 4f dd ff                                  	call   0x1055b120
10786132:	8b 10                                           	mov    edx,DWORD PTR [eax]
10786134:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
10786137:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1078613b:	51                                              	push   ecx
1078613c:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10786140:	51                                              	push   ecx
10786141:	8b c8                                           	mov    ecx,eax
10786143:	ff d2                                           	call   edx
10786145:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
1078614a:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
1078614e:	c7 44 24 18 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x18],0x10aca5b4
10786156:	74 0b                                           	je     0x10786163
10786158:	6a 00                                           	push   0x0
1078615a:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1078615e:	e8 2d 29 1a 00                                  	call   0x10928a90
10786163:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10786167:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1078616b:	2b c8                                           	sub    ecx,eax
1078616d:	83 e1 fe                                        	and    ecx,0xfffffffe
10786170:	83 f9 02                                        	cmp    ecx,0x2
10786173:	7e 0d                                           	jle    0x10786182
10786175:	85 c0                                           	test   eax,eax
10786177:	74 09                                           	je     0x10786182
10786179:	50                                              	push   eax
1078617a:	e8 11 2d 19 00                                  	call   0x10918e90
1078617f:	83 c4 04                                        	add    esp,0x4
10786182:	8b c6                                           	mov    eax,esi
10786184:	5e                                              	pop    esi
10786185:	83 c4 34                                        	add    esp,0x34
10786188:	c3                                              	ret
10786189:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1078618d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10786191:	2b d0                                           	sub    edx,eax
10786193:	83 e2 fe                                        	and    edx,0xfffffffe
10786196:	83 fa 02                                        	cmp    edx,0x2
10786199:	7e 0d                                           	jle    0x107861a8
1078619b:	85 c0                                           	test   eax,eax
1078619d:	74 09                                           	je     0x107861a8
1078619f:	50                                              	push   eax
107861a0:	e8 eb 2c 19 00                                  	call   0x10918e90
107861a5:	83 c4 04                                        	add    esp,0x4
107861a8:	33 c0                                           	xor    eax,eax
107861aa:	5e                                              	pop    esi
107861ab:	83 c4 34                                        	add    esp,0x34
107861ae:	c3                                              	ret
107861af:	cc                                              	int3
