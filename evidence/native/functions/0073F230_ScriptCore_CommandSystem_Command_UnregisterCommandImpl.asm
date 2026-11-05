# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073f230 (ScriptCore.CommandSystem::Command_UnregisterCommandImpl)
Paired Ghidra pseudocode: 0073F230_ScriptCore_CommandSystem_Command_UnregisterCommandImpl.c
Window: [0x0073f230, 0x0073f2f0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073f2f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073f230: 83 ec 08 53 56 57 e8 55 a1 02 00 8b 4c 24 18 85
0073f240: c9 0f 84 93 00 00 00 8b 10 51 8b c8 8b 42 58 ff
0073f250: d0 8b 35 f8 4e 1d 01 50 83 c6 18 e8 c0 0d 09 00
0073f260: 83 c4 04 8d 4c 24 18 51 8d 54 24 10 52 8b ce 89
0073f270: 44 24 20 e8 38 c7 31 00 8b 46 08 8b 4e 04 8b 7c
0073f280: 24 0c 3b 3c 81 74 53 e8 14 a8 e4 ff 85 c0 74 0e
0073f290: 8b 57 04 8b 4a 08 51 8b c8 e8 72 af e4 ff 8b 5f
0073f2a0: 04 85 db 74 1b 8b 53 0c 52 e8 32 52 da ff 8b 43
0073f2b0: 10 50 e8 29 52 da ff 53 e8 23 52 da ff 83 c4 0c
0073f2c0: 8b 4c 24 10 83 ec 08 8b c4 8d 54 24 14 89 48 04
0073f2d0: 52 8b ce 89 38 e8 d6 2d 00 00 5f 5e 5b 83 c4 08
0073f2e0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073f230 <.text+0x33e230>:
  73f230:	83 ec 08                                        	sub    esp,0x8
  73f233:	53                                              	push   ebx
  73f234:	56                                              	push   esi
  73f235:	57                                              	push   edi
  73f236:	e8 55 a1 02 00                                  	call   0x769390
  73f23b:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  73f23f:	85 c9                                           	test   ecx,ecx
  73f241:	0f 84 93 00 00 00                               	je     0x73f2da
  73f247:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73f249:	51                                              	push   ecx
  73f24a:	8b c8                                           	mov    ecx,eax
  73f24c:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  73f24f:	ff d0                                           	call   eax
  73f251:	8b 35 f8 4e 1d 01                               	mov    esi,DWORD PTR ds:0x11d4ef8
  73f257:	50                                              	push   eax
  73f258:	83 c6 18                                        	add    esi,0x18
  73f25b:	e8 c0 0d 09 00                                  	call   0x7d0020
  73f260:	83 c4 04                                        	add    esp,0x4
  73f263:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  73f267:	51                                              	push   ecx
  73f268:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  73f26c:	52                                              	push   edx
  73f26d:	8b ce                                           	mov    ecx,esi
  73f26f:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  73f273:	e8 38 c7 31 00                                  	call   0xa5b9b0
  73f278:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  73f27b:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  73f27e:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  73f282:	3b 3c 81                                        	cmp    edi,DWORD PTR [ecx+eax*4]
  73f285:	74 53                                           	je     0x73f2da
  73f287:	e8 14 a8 e4 ff                                  	call   0x589aa0
  73f28c:	85 c0                                           	test   eax,eax
  73f28e:	74 0e                                           	je     0x73f29e
  73f290:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
  73f293:	8b 4a 08                                        	mov    ecx,DWORD PTR [edx+0x8]
  73f296:	51                                              	push   ecx
  73f297:	8b c8                                           	mov    ecx,eax
  73f299:	e8 72 af e4 ff                                  	call   0x58a210
  73f29e:	8b 5f 04                                        	mov    ebx,DWORD PTR [edi+0x4]
  73f2a1:	85 db                                           	test   ebx,ebx
  73f2a3:	74 1b                                           	je     0x73f2c0
  73f2a5:	8b 53 0c                                        	mov    edx,DWORD PTR [ebx+0xc]
  73f2a8:	52                                              	push   edx
  73f2a9:	e8 32 52 da ff                                  	call   0x4e44e0
  73f2ae:	8b 43 10                                        	mov    eax,DWORD PTR [ebx+0x10]
  73f2b1:	50                                              	push   eax
  73f2b2:	e8 29 52 da ff                                  	call   0x4e44e0
  73f2b7:	53                                              	push   ebx
  73f2b8:	e8 23 52 da ff                                  	call   0x4e44e0
  73f2bd:	83 c4 0c                                        	add    esp,0xc
  73f2c0:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73f2c4:	83 ec 08                                        	sub    esp,0x8
  73f2c7:	8b c4                                           	mov    eax,esp
  73f2c9:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  73f2cd:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  73f2d0:	52                                              	push   edx
  73f2d1:	8b ce                                           	mov    ecx,esi
  73f2d3:	89 38                                           	mov    DWORD PTR [eax],edi
  73f2d5:	e8 d6 2d 00 00                                  	call   0x7420b0
  73f2da:	5f                                              	pop    edi
  73f2db:	5e                                              	pop    esi
  73f2dc:	5b                                              	pop    ebx
  73f2dd:	83 c4 08                                        	add    esp,0x8
  73f2e0:	c3                                              	ret
  73f2e1:	cc                                              	int3
  73f2e2:	cc                                              	int3
  73f2e3:	cc                                              	int3
  73f2e4:	cc                                              	int3
  73f2e5:	cc                                              	int3
  73f2e6:	cc                                              	int3
  73f2e7:	cc                                              	int3
  73f2e8:	cc                                              	int3
  73f2e9:	cc                                              	int3
  73f2ea:	cc                                              	int3
  73f2eb:	cc                                              	int3
  73f2ec:	cc                                              	int3
  73f2ed:	cc                                              	int3
  73f2ee:	cc                                              	int3
  73f2ef:	cc                                              	int3
