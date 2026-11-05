# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005ab1d0 (ScriptCore.CASUtils::CASUtils_SimBuilderSetPartPresetImpl)
Paired Ghidra pseudocode: 005AB1D0_ScriptCore_CASUtils_CASUtils_SimBuilderSetPartPresetImpl.c
Window: [0x005ab1d0, 0x005ab2a0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ab2a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005ab1d0: 83 ec 20 57 8b 7c 24 28 8b c7 25 00 00 00 ff 3d
005ab1e0: 00 00 00 35 0f 85 ad 00 00 00 56 8b 74 24 40 85
005ab1f0: f6 0f 84 9f 00 00 00 e8 94 e1 1b 00 8b 10 8b c8
005ab200: 8b 42 58 56 ff d0 8b f0 e8 83 e1 1b 00 8b 10 8b
005ab210: c8 8b 82 cc 00 00 00 57 ff d0 8b 4c 24 38 8b 54
005ab220: 24 3c 89 4c 24 18 8b 4c 24 34 8b f8 8b 44 24 30
005ab230: 89 4c 24 24 56 8d 4c 24 0c 89 54 24 20 89 44 24
005ab240: 24 c7 44 24 0c 00 00 00 00 c7 44 24 10 00 00 00
005ab250: 00 c7 44 24 14 00 00 00 00 c7 44 24 18 0c f9 fd
005ab260: 00 e8 2a 03 e6 ff 8d 54 24 08 52 8d 44 24 1c 50
005ab270: 8b cf e8 79 7c 03 00 8b 4c 24 10 8b 44 24 08 2b
005ab280: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 4d
005ab290: 92 f3 ff 83 c4 04 5e 5f 83 c4 20 c3 cc cc cc cc

LINEAR DISASSEMBLY
005ab1d0 <.text+0x1aa1d0>:
  5ab1d0:	83 ec 20                                        	sub    esp,0x20
  5ab1d3:	57                                              	push   edi
  5ab1d4:	8b 7c 24 28                                     	mov    edi,DWORD PTR [esp+0x28]
  5ab1d8:	8b c7                                           	mov    eax,edi
  5ab1da:	25 00 00 00 ff                                  	and    eax,0xff000000
  5ab1df:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5ab1e4:	0f 85 ad 00 00 00                               	jne    0x5ab297
  5ab1ea:	56                                              	push   esi
  5ab1eb:	8b 74 24 40                                     	mov    esi,DWORD PTR [esp+0x40]
  5ab1ef:	85 f6                                           	test   esi,esi
  5ab1f1:	0f 84 9f 00 00 00                               	je     0x5ab296
  5ab1f7:	e8 94 e1 1b 00                                  	call   0x769390
  5ab1fc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5ab1fe:	8b c8                                           	mov    ecx,eax
  5ab200:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  5ab203:	56                                              	push   esi
  5ab204:	ff d0                                           	call   eax
  5ab206:	8b f0                                           	mov    esi,eax
  5ab208:	e8 83 e1 1b 00                                  	call   0x769390
  5ab20d:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5ab20f:	8b c8                                           	mov    ecx,eax
  5ab211:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5ab217:	57                                              	push   edi
  5ab218:	ff d0                                           	call   eax
  5ab21a:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  5ab21e:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  5ab222:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  5ab226:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  5ab22a:	8b f8                                           	mov    edi,eax
  5ab22c:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  5ab230:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  5ab234:	56                                              	push   esi
  5ab235:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5ab239:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  5ab23d:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  5ab241:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  5ab249:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  5ab251:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  5ab259:	c7 44 24 18 0c f9 fd 00                         	mov    DWORD PTR [esp+0x18],0xfdf90c
  5ab261:	e8 2a 03 e6 ff                                  	call   0x40b590
  5ab266:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  5ab26a:	52                                              	push   edx
  5ab26b:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  5ab26f:	50                                              	push   eax
  5ab270:	8b cf                                           	mov    ecx,edi
  5ab272:	e8 79 7c 03 00                                  	call   0x5e2ef0
  5ab277:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5ab27b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5ab27f:	2b c8                                           	sub    ecx,eax
  5ab281:	83 e1 fe                                        	and    ecx,0xfffffffe
  5ab284:	83 f9 02                                        	cmp    ecx,0x2
  5ab287:	7e 0d                                           	jle    0x5ab296
  5ab289:	85 c0                                           	test   eax,eax
  5ab28b:	74 09                                           	je     0x5ab296
  5ab28d:	50                                              	push   eax
  5ab28e:	e8 4d 92 f3 ff                                  	call   0x4e44e0
  5ab293:	83 c4 04                                        	add    esp,0x4
  5ab296:	5e                                              	pop    esi
  5ab297:	5f                                              	pop    edi
  5ab298:	83 c4 20                                        	add    esp,0x20
  5ab29b:	c3                                              	ret
  5ab29c:	cc                                              	int3
  5ab29d:	cc                                              	int3
  5ab29e:	cc                                              	int3
  5ab29f:	cc                                              	int3
