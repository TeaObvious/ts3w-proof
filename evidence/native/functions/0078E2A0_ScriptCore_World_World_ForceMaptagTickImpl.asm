# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078e2a0 (ScriptCore.World::World_ForceMaptagTickImpl)
Paired Ghidra pseudocode: 0078E2A0_ScriptCore_World_World_ForceMaptagTickImpl.c
Window: [0x0078e2a0, 0x0078e320) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078e2a0: e8 eb b0 fd ff 8b 4c 24 04 8b 10 8b 92 cc 00 00
0078e2b0: 00 51 8b c8 ff d2 85 c0 74 5e 8b 10 57 8b c8 8b
0078e2c0: 42 0c 68 18 82 ee ee ff d0 8b f8 85 ff 74 48 8b
0078e2d0: 17 8b 82 10 01 00 00 56 6a 00 8b cf ff d0 8b f0
0078e2e0: 85 f6 74 32 8b 16 8b 42 0c 68 6a 52 86 04 8b ce
0078e2f0: ff d0 85 c0 75 16 8b 17 8b 82 10 01 00 00 56 8b
0078e300: cf ff d0 8b f0 85 f6 75 db 5e 5f c3 8b 10 8b c8
0078e310: 8b 42 60 57 ff d0 5e 5f c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078e2a0 <.text+0x38d2a0>:
  78e2a0:	e8 eb b0 fd ff                                  	call   0x769390
  78e2a5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  78e2a9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78e2ab:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  78e2b1:	51                                              	push   ecx
  78e2b2:	8b c8                                           	mov    ecx,eax
  78e2b4:	ff d2                                           	call   edx
  78e2b6:	85 c0                                           	test   eax,eax
  78e2b8:	74 5e                                           	je     0x78e318
  78e2ba:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78e2bc:	57                                              	push   edi
  78e2bd:	8b c8                                           	mov    ecx,eax
  78e2bf:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  78e2c2:	68 18 82 ee ee                                  	push   0xeeee8218
  78e2c7:	ff d0                                           	call   eax
  78e2c9:	8b f8                                           	mov    edi,eax
  78e2cb:	85 ff                                           	test   edi,edi
  78e2cd:	74 48                                           	je     0x78e317
  78e2cf:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78e2d1:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  78e2d7:	56                                              	push   esi
  78e2d8:	6a 00                                           	push   0x0
  78e2da:	8b cf                                           	mov    ecx,edi
  78e2dc:	ff d0                                           	call   eax
  78e2de:	8b f0                                           	mov    esi,eax
  78e2e0:	85 f6                                           	test   esi,esi
  78e2e2:	74 32                                           	je     0x78e316
  78e2e4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78e2e6:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  78e2e9:	68 6a 52 86 04                                  	push   0x486526a
  78e2ee:	8b ce                                           	mov    ecx,esi
  78e2f0:	ff d0                                           	call   eax
  78e2f2:	85 c0                                           	test   eax,eax
  78e2f4:	75 16                                           	jne    0x78e30c
  78e2f6:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78e2f8:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  78e2fe:	56                                              	push   esi
  78e2ff:	8b cf                                           	mov    ecx,edi
  78e301:	ff d0                                           	call   eax
  78e303:	8b f0                                           	mov    esi,eax
  78e305:	85 f6                                           	test   esi,esi
  78e307:	75 db                                           	jne    0x78e2e4
  78e309:	5e                                              	pop    esi
  78e30a:	5f                                              	pop    edi
  78e30b:	c3                                              	ret
  78e30c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78e30e:	8b c8                                           	mov    ecx,eax
  78e310:	8b 42 60                                        	mov    eax,DWORD PTR [edx+0x60]
  78e313:	57                                              	push   edi
  78e314:	ff d0                                           	call   eax
  78e316:	5e                                              	pop    esi
  78e317:	5f                                              	pop    edi
  78e318:	c3                                              	ret
  78e319:	cc                                              	int3
  78e31a:	cc                                              	int3
  78e31b:	cc                                              	int3
  78e31c:	cc                                              	int3
  78e31d:	cc                                              	int3
  78e31e:	cc                                              	int3
  78e31f:	cc                                              	int3
