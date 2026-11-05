# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10785090 (DownloadContent_ExportLotContentsToTravelBinImpl)
Paired Ghidra pseudocode: 10785090_DownloadContent_ExportLotContentsToTravelBinImpl.c
Window: [0x10785090, 0x10785120) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10785120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10785090: 83 ec 1c e8 88 60 dd ff 85 c0 74 75 56 8b 35 94
107850a0: de c8 10 57 8b 3d d8 e9 c6 10 8b ce e8 1f ba 00
107850b0: 00 8d 44 24 08 50 8b ce c7 44 24 0c 00 00 00 00
107850c0: e8 6b ba 00 00 8b 44 24 08 85 c0 74 42 6a 01 50
107850d0: 8d 4c 24 14 e8 b7 57 e4 ff 8b 54 24 2c 8b 44 24
107850e0: 28 6a 00 6a 00 8d 4c 24 14 51 52 50 8b cf e8 0d
107850f0: 65 91 ff 8d 4c 24 0c e8 04 58 e4 ff 8b 44 24 08
10785100: 85 c0 74 0b 8b 50 04 8d 48 04 8b 42 04 ff d0 5f
10785110: 5e 83 c4 1c c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10785090 <.text+0x784090>:
10785090:	83 ec 1c                                        	sub    esp,0x1c
10785093:	e8 88 60 dd ff                                  	call   0x1055b120
10785098:	85 c0                                           	test   eax,eax
1078509a:	74 75                                           	je     0x10785111
1078509c:	56                                              	push   esi
1078509d:	8b 35 94 de c8 10                               	mov    esi,DWORD PTR ds:0x10c8de94
107850a3:	57                                              	push   edi
107850a4:	8b 3d d8 e9 c6 10                               	mov    edi,DWORD PTR ds:0x10c6e9d8
107850aa:	8b ce                                           	mov    ecx,esi
107850ac:	e8 1f ba 00 00                                  	call   0x10790ad0
107850b1:	8d 44 24 08                                     	lea    eax,[esp+0x8]
107850b5:	50                                              	push   eax
107850b6:	8b ce                                           	mov    ecx,esi
107850b8:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
107850c0:	e8 6b ba 00 00                                  	call   0x10790b30
107850c5:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
107850c9:	85 c0                                           	test   eax,eax
107850cb:	74 42                                           	je     0x1078510f
107850cd:	6a 01                                           	push   0x1
107850cf:	50                                              	push   eax
107850d0:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
107850d4:	e8 b7 57 e4 ff                                  	call   0x105ca890
107850d9:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
107850dd:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
107850e1:	6a 00                                           	push   0x0
107850e3:	6a 00                                           	push   0x0
107850e5:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
107850e9:	51                                              	push   ecx
107850ea:	52                                              	push   edx
107850eb:	50                                              	push   eax
107850ec:	8b cf                                           	mov    ecx,edi
107850ee:	e8 0d 65 91 ff                                  	call   0x1009b600
107850f3:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
107850f7:	e8 04 58 e4 ff                                  	call   0x105ca900
107850fc:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10785100:	85 c0                                           	test   eax,eax
10785102:	74 0b                                           	je     0x1078510f
10785104:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10785107:	8d 48 04                                        	lea    ecx,[eax+0x4]
1078510a:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1078510d:	ff d0                                           	call   eax
1078510f:	5f                                              	pop    edi
10785110:	5e                                              	pop    esi
10785111:	83 c4 1c                                        	add    esp,0x1c
10785114:	c3                                              	ret
10785115:	cc                                              	int3
10785116:	cc                                              	int3
10785117:	cc                                              	int3
10785118:	cc                                              	int3
10785119:	cc                                              	int3
1078511a:	cc                                              	int3
1078511b:	cc                                              	int3
1078511c:	cc                                              	int3
1078511d:	cc                                              	int3
1078511e:	cc                                              	int3
1078511f:	cc                                              	int3
