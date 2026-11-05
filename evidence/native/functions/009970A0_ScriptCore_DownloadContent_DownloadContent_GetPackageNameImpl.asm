# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009970a0 (ScriptCore.DownloadContent::DownloadContent_GetPackageNameImpl)
Paired Ghidra pseudocode: 009970A0_ScriptCore_DownloadContent_DownloadContent_GetPackageNameImpl.c
Window: [0x009970a0, 0x009971a0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x009971a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009970a0: 83 ec 34 56 e8 b7 bd fe ff 8b f0 85 f6 0f 84 e5
009970b0: 00 00 00 b8 54 8e 1c 01 89 44 24 08 89 44 24 0c
009970c0: 8d 44 24 08 50 83 ec 10 54 8d 4c 24 54 c7 44 24
009970d0: 2c cc a1 04 01 c7 44 24 28 56 8e 1c 01 e8 0e 4f
009970e0: dd ff 8b ce e8 37 18 ff ff 84 c0 0f 84 88 00 00
009970f0: 00 6a 01 6a 10 8d 4c 24 10 51 6a 09 6a 13 8d 4c
00997100: 24 2c c7 44 24 2c 6c 88 00 01 66 c7 44 24 36 13
00997110: 00 66 c7 44 24 34 0b 00 e8 a3 e8 b5 ff e8 6e 22
00997120: dd ff 8b 10 8b 52 50 8d 4c 24 04 51 8d 4c 24 1c
00997130: 51 8b c8 ff d2 f6 44 24 20 04 8b 74 24 04 c7 44
00997140: 24 18 f4 a6 fb 00 74 0b 6a 00 8d 4c 24 1c e8 0d
00997150: e6 b5 ff 8b 4c 24 10 8b 44 24 08 2b c8 83 e1 fe
00997160: 83 f9 02 7e 0d 85 c0 74 09 50 e8 71 d3 b4 ff 83
00997170: c4 04 8b c6 5e 83 c4 34 c3 8b 54 24 10 8b 44 24
00997180: 08 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0 74 09 50
00997190: e8 4b d3 b4 ff 83 c4 04 33 c0 5e 83 c4 34 c3 cc

LINEAR DISASSEMBLY
009970a0 <.text+0x5960a0>:
  9970a0:	83 ec 34                                        	sub    esp,0x34
  9970a3:	56                                              	push   esi
  9970a4:	e8 b7 bd fe ff                                  	call   0x982e60
  9970a9:	8b f0                                           	mov    esi,eax
  9970ab:	85 f6                                           	test   esi,esi
  9970ad:	0f 84 e5 00 00 00                               	je     0x997198
  9970b3:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  9970b8:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  9970bc:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  9970c0:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  9970c4:	50                                              	push   eax
  9970c5:	83 ec 10                                        	sub    esp,0x10
  9970c8:	54                                              	push   esp
  9970c9:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  9970cd:	c7 44 24 2c cc a1 04 01                         	mov    DWORD PTR [esp+0x2c],0x104a1cc
  9970d5:	c7 44 24 28 56 8e 1c 01                         	mov    DWORD PTR [esp+0x28],0x11c8e56
  9970dd:	e8 0e 4f dd ff                                  	call   0x76bff0
  9970e2:	8b ce                                           	mov    ecx,esi
  9970e4:	e8 37 18 ff ff                                  	call   0x988920
  9970e9:	84 c0                                           	test   al,al
  9970eb:	0f 84 88 00 00 00                               	je     0x997179
  9970f1:	6a 01                                           	push   0x1
  9970f3:	6a 10                                           	push   0x10
  9970f5:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  9970f9:	51                                              	push   ecx
  9970fa:	6a 09                                           	push   0x9
  9970fc:	6a 13                                           	push   0x13
  9970fe:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  997102:	c7 44 24 2c 6c 88 00 01                         	mov    DWORD PTR [esp+0x2c],0x100886c
  99710a:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
  997111:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
  997118:	e8 a3 e8 b5 ff                                  	call   0x4f59c0
  99711d:	e8 6e 22 dd ff                                  	call   0x769390
  997122:	8b 10                                           	mov    edx,DWORD PTR [eax]
  997124:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  997127:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  99712b:	51                                              	push   ecx
  99712c:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  997130:	51                                              	push   ecx
  997131:	8b c8                                           	mov    ecx,eax
  997133:	ff d2                                           	call   edx
  997135:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  99713a:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  99713e:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  997146:	74 0b                                           	je     0x997153
  997148:	6a 00                                           	push   0x0
  99714a:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  99714e:	e8 0d e6 b5 ff                                  	call   0x4f5760
  997153:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  997157:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  99715b:	2b c8                                           	sub    ecx,eax
  99715d:	83 e1 fe                                        	and    ecx,0xfffffffe
  997160:	83 f9 02                                        	cmp    ecx,0x2
  997163:	7e 0d                                           	jle    0x997172
  997165:	85 c0                                           	test   eax,eax
  997167:	74 09                                           	je     0x997172
  997169:	50                                              	push   eax
  99716a:	e8 71 d3 b4 ff                                  	call   0x4e44e0
  99716f:	83 c4 04                                        	add    esp,0x4
  997172:	8b c6                                           	mov    eax,esi
  997174:	5e                                              	pop    esi
  997175:	83 c4 34                                        	add    esp,0x34
  997178:	c3                                              	ret
  997179:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  99717d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  997181:	2b d0                                           	sub    edx,eax
  997183:	83 e2 fe                                        	and    edx,0xfffffffe
  997186:	83 fa 02                                        	cmp    edx,0x2
  997189:	7e 0d                                           	jle    0x997198
  99718b:	85 c0                                           	test   eax,eax
  99718d:	74 09                                           	je     0x997198
  99718f:	50                                              	push   eax
  997190:	e8 4b d3 b4 ff                                  	call   0x4e44e0
  997195:	83 c4 04                                        	add    esp,0x4
  997198:	33 c0                                           	xor    eax,eax
  99719a:	5e                                              	pop    esi
  99719b:	83 c4 34                                        	add    esp,0x34
  99719e:	c3                                              	ret
  99719f:	cc                                              	int3
