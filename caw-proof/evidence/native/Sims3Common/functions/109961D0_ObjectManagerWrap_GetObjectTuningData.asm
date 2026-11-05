# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109961d0 (ObjectManagerWrap_GetObjectTuningData)
Paired Ghidra pseudocode: 109961D0_ObjectManagerWrap_GetObjectTuningData.c
Window: [0x109961d0, 0x10996230) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109961d0: 56 57 8b 7c 24 0c 85 ff 74 50 8d 44 24 10 50 8b
109961e0: cf e8 0a dd 8a ff 85 c0 74 40 50 6a 00 6a 11 ff
109961f0: 15 e4 b6 aa 10 8b f0 85 f6 74 2f 56 ff 15 e8 b6
10996200: aa 10 85 c0 7c 24 8b 4e 0c 8d 54 24 0c 52 8d 44
10996210: 24 14 89 4c 24 10 50 8b cf e8 42 dc 8a ff 56 ff
10996220: 15 ec b6 aa 10 5f 8b c6 5e c3 5f 33 c0 5e c3 cc

LINEAR DISASSEMBLY
109961d0 <.text+0x9951d0>:
109961d0:	56                                              	push   esi
109961d1:	57                                              	push   edi
109961d2:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
109961d6:	85 ff                                           	test   edi,edi
109961d8:	74 50                                           	je     0x1099622a
109961da:	8d 44 24 10                                     	lea    eax,[esp+0x10]
109961de:	50                                              	push   eax
109961df:	8b cf                                           	mov    ecx,edi
109961e1:	e8 0a dd 8a ff                                  	call   0x10243ef0
109961e6:	85 c0                                           	test   eax,eax
109961e8:	74 40                                           	je     0x1099622a
109961ea:	50                                              	push   eax
109961eb:	6a 00                                           	push   0x0
109961ed:	6a 11                                           	push   0x11
109961ef:	ff 15 e4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e4
109961f5:	8b f0                                           	mov    esi,eax
109961f7:	85 f6                                           	test   esi,esi
109961f9:	74 2f                                           	je     0x1099622a
109961fb:	56                                              	push   esi
109961fc:	ff 15 e8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e8
10996202:	85 c0                                           	test   eax,eax
10996204:	7c 24                                           	jl     0x1099622a
10996206:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
10996209:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
1099620d:	52                                              	push   edx
1099620e:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10996212:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
10996216:	50                                              	push   eax
10996217:	8b cf                                           	mov    ecx,edi
10996219:	e8 42 dc 8a ff                                  	call   0x10243e60
1099621e:	56                                              	push   esi
1099621f:	ff 15 ec b6 aa 10                               	call   DWORD PTR ds:0x10aab6ec
10996225:	5f                                              	pop    edi
10996226:	8b c6                                           	mov    eax,esi
10996228:	5e                                              	pop    esi
10996229:	c3                                              	ret
1099622a:	5f                                              	pop    edi
1099622b:	33 c0                                           	xor    eax,eax
1099622d:	5e                                              	pop    esi
1099622e:	c3                                              	ret
1099622f:	cc                                              	int3
