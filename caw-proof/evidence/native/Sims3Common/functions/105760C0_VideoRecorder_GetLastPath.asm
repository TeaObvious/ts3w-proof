# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105760c0 (VideoRecorder_GetLastPath)
Paired Ghidra pseudocode: 105760C0_VideoRecorder_GetLastPath.c
Window: [0x105760c0, 0x10576190) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105760c0: 83 ec 34 c7 04 24 00 00 00 00 e8 a1 70 25 00 85
105760d0: c0 0f 84 ac 00 00 00 8b 10 8b 52 1c b9 44 82 ca
105760e0: 10 89 4c 24 04 89 4c 24 08 56 8d 4c 24 08 51 8b
105760f0: c8 c7 44 24 18 24 19 b2 10 c7 44 24 14 46 82 ca
10576100: 10 ff d2 e8 18 50 fe ff 6a 01 6a 10 8b f0 8d 44
10576110: 24 10 50 6a 09 6a 13 8d 4c 24 2c c7 44 24 2c b4
10576120: a5 ac 10 66 c7 44 24 36 13 00 66 c7 44 24 34 0b
10576130: 00 e8 5a 2a 3b 00 8b 16 8b 52 50 8d 44 24 04 50
10576140: 8d 4c 24 1c 51 8b ce ff d2 f6 44 24 20 04 c7 44
10576150: 24 18 b4 a5 ac 10 5e 74 0b 6a 00 8d 4c 24 18 e8
10576160: 2c 29 3b 00 8b 4c 24 0c 8b 44 24 04 2b c8 83 e1
10576170: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 10 2d 3a 00
10576180: 83 c4 04 8b 04 24 83 c4 34 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
105760c0 <.text+0x5750c0>:
105760c0:	83 ec 34                                        	sub    esp,0x34
105760c3:	c7 04 24 00 00 00 00                            	mov    DWORD PTR [esp],0x0
105760ca:	e8 a1 70 25 00                                  	call   0x107cd170
105760cf:	85 c0                                           	test   eax,eax
105760d1:	0f 84 ac 00 00 00                               	je     0x10576183
105760d7:	8b 10                                           	mov    edx,DWORD PTR [eax]
105760d9:	8b 52 1c                                        	mov    edx,DWORD PTR [edx+0x1c]
105760dc:	b9 44 82 ca 10                                  	mov    ecx,0x10ca8244
105760e1:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
105760e5:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
105760e9:	56                                              	push   esi
105760ea:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
105760ee:	51                                              	push   ecx
105760ef:	8b c8                                           	mov    ecx,eax
105760f1:	c7 44 24 18 24 19 b2 10                         	mov    DWORD PTR [esp+0x18],0x10b21924
105760f9:	c7 44 24 14 46 82 ca 10                         	mov    DWORD PTR [esp+0x14],0x10ca8246
10576101:	ff d2                                           	call   edx
10576103:	e8 18 50 fe ff                                  	call   0x1055b120
10576108:	6a 01                                           	push   0x1
1057610a:	6a 10                                           	push   0x10
1057610c:	8b f0                                           	mov    esi,eax
1057610e:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10576112:	50                                              	push   eax
10576113:	6a 09                                           	push   0x9
10576115:	6a 13                                           	push   0x13
10576117:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1057611b:	c7 44 24 2c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x2c],0x10aca5b4
10576123:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
1057612a:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
10576131:	e8 5a 2a 3b 00                                  	call   0x10928b90
10576136:	8b 16                                           	mov    edx,DWORD PTR [esi]
10576138:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
1057613b:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1057613f:	50                                              	push   eax
10576140:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10576144:	51                                              	push   ecx
10576145:	8b ce                                           	mov    ecx,esi
10576147:	ff d2                                           	call   edx
10576149:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
1057614e:	c7 44 24 18 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x18],0x10aca5b4
10576156:	5e                                              	pop    esi
10576157:	74 0b                                           	je     0x10576164
10576159:	6a 00                                           	push   0x0
1057615b:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1057615f:	e8 2c 29 3b 00                                  	call   0x10928a90
10576164:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10576168:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1057616c:	2b c8                                           	sub    ecx,eax
1057616e:	83 e1 fe                                        	and    ecx,0xfffffffe
10576171:	83 f9 02                                        	cmp    ecx,0x2
10576174:	7e 0d                                           	jle    0x10576183
10576176:	85 c0                                           	test   eax,eax
10576178:	74 09                                           	je     0x10576183
1057617a:	50                                              	push   eax
1057617b:	e8 10 2d 3a 00                                  	call   0x10918e90
10576180:	83 c4 04                                        	add    esp,0x4
10576183:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
10576186:	83 c4 34                                        	add    esp,0x34
10576189:	c3                                              	ret
1057618a:	cc                                              	int3
1057618b:	cc                                              	int3
1057618c:	cc                                              	int3
1057618d:	cc                                              	int3
1057618e:	cc                                              	int3
1057618f:	cc                                              	int3
