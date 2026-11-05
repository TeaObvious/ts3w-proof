# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995150 (ScriptCore.DownloadContent::DownloadContent_UnInstallContentImpl)
Paired Ghidra pseudocode: 00995150_ScriptCore_DownloadContent_DownloadContent_UnInstallContentImpl.c
Window: [0x00995150, 0x009951d0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x009951d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995150: 83 ec 10 56 e8 37 42 dd ff 85 c0 74 5d 8b 4c 24
00995160: 18 8b 10 8b 52 58 51 8b c8 ff d2 8b f0 6a 10 56
00995170: 8d 4c 24 0c e8 27 cf b6 ff e8 e2 dc fe ff 85 c0
00995180: 74 38 57 6a 00 6a 01 6a 02 8d 4c 24 14 51 8b c8
00995190: e8 6b 9e ff ff 8b f8 e8 c4 ba 01 00 85 c0 74 12
009951a0: 81 ff 00 10 00 00 0f 9d c2 8b c8 52 56 e8 ee ba
009951b0: 01 00 8b c7 5f 5e 83 c4 10 c3 b8 01 00 00 00 5e
009951c0: 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995150 <.text+0x594150>:
  995150:	83 ec 10                                        	sub    esp,0x10
  995153:	56                                              	push   esi
  995154:	e8 37 42 dd ff                                  	call   0x769390
  995159:	85 c0                                           	test   eax,eax
  99515b:	74 5d                                           	je     0x9951ba
  99515d:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  995161:	8b 10                                           	mov    edx,DWORD PTR [eax]
  995163:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  995166:	51                                              	push   ecx
  995167:	8b c8                                           	mov    ecx,eax
  995169:	ff d2                                           	call   edx
  99516b:	8b f0                                           	mov    esi,eax
  99516d:	6a 10                                           	push   0x10
  99516f:	56                                              	push   esi
  995170:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  995174:	e8 27 cf b6 ff                                  	call   0x5020a0
  995179:	e8 e2 dc fe ff                                  	call   0x982e60
  99517e:	85 c0                                           	test   eax,eax
  995180:	74 38                                           	je     0x9951ba
  995182:	57                                              	push   edi
  995183:	6a 00                                           	push   0x0
  995185:	6a 01                                           	push   0x1
  995187:	6a 02                                           	push   0x2
  995189:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  99518d:	51                                              	push   ecx
  99518e:	8b c8                                           	mov    ecx,eax
  995190:	e8 6b 9e ff ff                                  	call   0x98f000
  995195:	8b f8                                           	mov    edi,eax
  995197:	e8 c4 ba 01 00                                  	call   0x9b0c60
  99519c:	85 c0                                           	test   eax,eax
  99519e:	74 12                                           	je     0x9951b2
  9951a0:	81 ff 00 10 00 00                               	cmp    edi,0x1000
  9951a6:	0f 9d c2                                        	setge  dl
  9951a9:	8b c8                                           	mov    ecx,eax
  9951ab:	52                                              	push   edx
  9951ac:	56                                              	push   esi
  9951ad:	e8 ee ba 01 00                                  	call   0x9b0ca0
  9951b2:	8b c7                                           	mov    eax,edi
  9951b4:	5f                                              	pop    edi
  9951b5:	5e                                              	pop    esi
  9951b6:	83 c4 10                                        	add    esp,0x10
  9951b9:	c3                                              	ret
  9951ba:	b8 01 00 00 00                                  	mov    eax,0x1
  9951bf:	5e                                              	pop    esi
  9951c0:	83 c4 10                                        	add    esp,0x10
  9951c3:	c3                                              	ret
  9951c4:	cc                                              	int3
  9951c5:	cc                                              	int3
  9951c6:	cc                                              	int3
  9951c7:	cc                                              	int3
  9951c8:	cc                                              	int3
  9951c9:	cc                                              	int3
  9951ca:	cc                                              	int3
  9951cb:	cc                                              	int3
  9951cc:	cc                                              	int3
  9951cd:	cc                                              	int3
  9951ce:	cc                                              	int3
  9951cf:	cc                                              	int3
