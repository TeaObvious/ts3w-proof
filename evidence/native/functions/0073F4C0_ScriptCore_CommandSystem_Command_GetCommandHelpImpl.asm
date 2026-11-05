# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073f4c0 (ScriptCore.CommandSystem::Command_GetCommandHelpImpl)
Paired Ghidra pseudocode: 0073F4C0_ScriptCore_CommandSystem_Command_GetCommandHelpImpl.c
Window: [0x0073f4c0, 0x0073f5d0) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073f5d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073f4c0: 83 ec 54 53 56 e8 c6 9e 02 00 8b f0 e8 cf a5 e4
0073f4d0: ff 8b d8 33 c0 85 f6 89 44 24 08 0f 84 e4 00 00
0073f4e0: 00 85 db 0f 84 dc 00 00 00 8b 4c 24 60 85 c9 0f
0073f4f0: 84 d0 00 00 00 8b 06 8b 50 58 57 51 8b ce ff d2
0073f500: 8b f8 85 ff 0f 84 b6 00 00 00 b8 54 8e 1c 01 57
0073f510: 8b cb c7 44 24 20 70 14 00 01 89 44 24 14 89 44
0073f520: 24 18 c7 44 24 1c 56 8e 1c 01 e8 21 a9 e4 ff 85
0073f530: c0 74 6e 83 78 08 00 74 68 57 8b cb e8 0f a9 e4
0073f540: ff 8b 40 08 50 8d 4c 24 14 e8 02 44 da ff 8d 4c
0073f550: 24 10 51 8d 4c 24 44 e8 d4 70 db ff 50 8d 4c 24
0073f560: 24 c7 44 24 24 f4 a6 fb 00 66 c7 44 24 2c 00 00
0073f570: 66 c7 44 24 2e 00 00 e8 34 6f db ff 8d 4c 24 40
0073f580: e8 9b 62 db ff 8b 16 8b 52 50 8d 44 24 0c 50 8d
0073f590: 4c 24 24 51 8b ce ff d2 8d 4c 24 20 e8 7f 62 db
0073f5a0: ff 8b 4c 24 18 8b 44 24 10 2b c8 83 e1 fe 83 f9
0073f5b0: 02 7e 0d 85 c0 74 09 50 e8 23 4f da ff 83 c4 04
0073f5c0: 8b 44 24 0c 5f 5e 5b 83 c4 54 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0073f4c0 <.text+0x33e4c0>:
  73f4c0:	83 ec 54                                        	sub    esp,0x54
  73f4c3:	53                                              	push   ebx
  73f4c4:	56                                              	push   esi
  73f4c5:	e8 c6 9e 02 00                                  	call   0x769390
  73f4ca:	8b f0                                           	mov    esi,eax
  73f4cc:	e8 cf a5 e4 ff                                  	call   0x589aa0
  73f4d1:	8b d8                                           	mov    ebx,eax
  73f4d3:	33 c0                                           	xor    eax,eax
  73f4d5:	85 f6                                           	test   esi,esi
  73f4d7:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  73f4db:	0f 84 e4 00 00 00                               	je     0x73f5c5
  73f4e1:	85 db                                           	test   ebx,ebx
  73f4e3:	0f 84 dc 00 00 00                               	je     0x73f5c5
  73f4e9:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  73f4ed:	85 c9                                           	test   ecx,ecx
  73f4ef:	0f 84 d0 00 00 00                               	je     0x73f5c5
  73f4f5:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73f4f7:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  73f4fa:	57                                              	push   edi
  73f4fb:	51                                              	push   ecx
  73f4fc:	8b ce                                           	mov    ecx,esi
  73f4fe:	ff d2                                           	call   edx
  73f500:	8b f8                                           	mov    edi,eax
  73f502:	85 ff                                           	test   edi,edi
  73f504:	0f 84 b6 00 00 00                               	je     0x73f5c0
  73f50a:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  73f50f:	57                                              	push   edi
  73f510:	8b cb                                           	mov    ecx,ebx
  73f512:	c7 44 24 20 70 14 00 01                         	mov    DWORD PTR [esp+0x20],0x1001470
  73f51a:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  73f51e:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  73f522:	c7 44 24 1c 56 8e 1c 01                         	mov    DWORD PTR [esp+0x1c],0x11c8e56
  73f52a:	e8 21 a9 e4 ff                                  	call   0x589e50
  73f52f:	85 c0                                           	test   eax,eax
  73f531:	74 6e                                           	je     0x73f5a1
  73f533:	83 78 08 00                                     	cmp    DWORD PTR [eax+0x8],0x0
  73f537:	74 68                                           	je     0x73f5a1
  73f539:	57                                              	push   edi
  73f53a:	8b cb                                           	mov    ecx,ebx
  73f53c:	e8 0f a9 e4 ff                                  	call   0x589e50
  73f541:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  73f544:	50                                              	push   eax
  73f545:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  73f549:	e8 02 44 da ff                                  	call   0x4e3950
  73f54e:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  73f552:	51                                              	push   ecx
  73f553:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  73f557:	e8 d4 70 db ff                                  	call   0x4f6630
  73f55c:	50                                              	push   eax
  73f55d:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  73f561:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  73f569:	66 c7 44 24 2c 00 00                            	mov    WORD PTR [esp+0x2c],0x0
  73f570:	66 c7 44 24 2e 00 00                            	mov    WORD PTR [esp+0x2e],0x0
  73f577:	e8 34 6f db ff                                  	call   0x4f64b0
  73f57c:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  73f580:	e8 9b 62 db ff                                  	call   0x4f5820
  73f585:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73f587:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  73f58a:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  73f58e:	50                                              	push   eax
  73f58f:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  73f593:	51                                              	push   ecx
  73f594:	8b ce                                           	mov    ecx,esi
  73f596:	ff d2                                           	call   edx
  73f598:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  73f59c:	e8 7f 62 db ff                                  	call   0x4f5820
  73f5a1:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  73f5a5:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  73f5a9:	2b c8                                           	sub    ecx,eax
  73f5ab:	83 e1 fe                                        	and    ecx,0xfffffffe
  73f5ae:	83 f9 02                                        	cmp    ecx,0x2
  73f5b1:	7e 0d                                           	jle    0x73f5c0
  73f5b3:	85 c0                                           	test   eax,eax
  73f5b5:	74 09                                           	je     0x73f5c0
  73f5b7:	50                                              	push   eax
  73f5b8:	e8 23 4f da ff                                  	call   0x4e44e0
  73f5bd:	83 c4 04                                        	add    esp,0x4
  73f5c0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  73f5c4:	5f                                              	pop    edi
  73f5c5:	5e                                              	pop    esi
  73f5c6:	5b                                              	pop    ebx
  73f5c7:	83 c4 54                                        	add    esp,0x54
  73f5ca:	c3                                              	ret
  73f5cb:	cc                                              	int3
  73f5cc:	cc                                              	int3
  73f5cd:	cc                                              	int3
  73f5ce:	cc                                              	int3
  73f5cf:	cc                                              	int3
