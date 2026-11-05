# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a82d0 (ScriptCore.CASUtils::CASUtils_PartDataGetPresetIdImpl)
Paired Ghidra pseudocode: 005A82D0_ScriptCore_CASUtils_CASUtils_PartDataGetPresetIdImpl.c
Window: [0x005a82d0, 0x005a8370) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8370
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a82d0: 83 ec 14 e8 a8 7b f0 ff 8b 4c 24 20 8b 54 24 24
005a82e0: 6a 00 89 4c 24 08 8b 4c 24 1c 6a 00 89 4c 24 14
005a82f0: 6a 00 89 54 24 14 8b 54 24 28 6a 00 8d 4c 24 10
005a8300: 51 89 54 24 24 8b 10 8b 52 0c 8d 4c 24 18 51 8b
005a8310: c8 ff d2 84 c0 75 06 33 c0 83 c4 14 c3 8b 0c 24
005a8320: 85 c9 56 74 16 8b 01 8b 50 0c 68 7b 77 4c 03 ff
005a8330: d2 8b f0 85 f6 75 12 8b 4c 24 04 8b 01 8b 50 04
005a8340: ff d2 33 c0 5e 83 c4 14 c3 8b 44 24 2c 57 50 8b
005a8350: ce e8 4a 79 00 00 8b 16 8b f8 8b 42 04 8b ce ff
005a8360: d0 8b c7 5f 5e 83 c4 14 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a82d0 <.text+0x1a72d0>:
  5a82d0:	83 ec 14                                        	sub    esp,0x14
  5a82d3:	e8 a8 7b f0 ff                                  	call   0x4afe80
  5a82d8:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a82dc:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  5a82e0:	6a 00                                           	push   0x0
  5a82e2:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a82e6:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a82ea:	6a 00                                           	push   0x0
  5a82ec:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  5a82f0:	6a 00                                           	push   0x0
  5a82f2:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  5a82f6:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5a82fa:	6a 00                                           	push   0x0
  5a82fc:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a8300:	51                                              	push   ecx
  5a8301:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  5a8305:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8307:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  5a830a:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  5a830e:	51                                              	push   ecx
  5a830f:	8b c8                                           	mov    ecx,eax
  5a8311:	ff d2                                           	call   edx
  5a8313:	84 c0                                           	test   al,al
  5a8315:	75 06                                           	jne    0x5a831d
  5a8317:	33 c0                                           	xor    eax,eax
  5a8319:	83 c4 14                                        	add    esp,0x14
  5a831c:	c3                                              	ret
  5a831d:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
  5a8320:	85 c9                                           	test   ecx,ecx
  5a8322:	56                                              	push   esi
  5a8323:	74 16                                           	je     0x5a833b
  5a8325:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a8327:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  5a832a:	68 7b 77 4c 03                                  	push   0x34c777b
  5a832f:	ff d2                                           	call   edx
  5a8331:	8b f0                                           	mov    esi,eax
  5a8333:	85 f6                                           	test   esi,esi
  5a8335:	75 12                                           	jne    0x5a8349
  5a8337:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  5a833b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a833d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a8340:	ff d2                                           	call   edx
  5a8342:	33 c0                                           	xor    eax,eax
  5a8344:	5e                                              	pop    esi
  5a8345:	83 c4 14                                        	add    esp,0x14
  5a8348:	c3                                              	ret
  5a8349:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  5a834d:	57                                              	push   edi
  5a834e:	50                                              	push   eax
  5a834f:	8b ce                                           	mov    ecx,esi
  5a8351:	e8 4a 79 00 00                                  	call   0x5afca0
  5a8356:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a8358:	8b f8                                           	mov    edi,eax
  5a835a:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a835d:	8b ce                                           	mov    ecx,esi
  5a835f:	ff d0                                           	call   eax
  5a8361:	8b c7                                           	mov    eax,edi
  5a8363:	5f                                              	pop    edi
  5a8364:	5e                                              	pop    esi
  5a8365:	83 c4 14                                        	add    esp,0x14
  5a8368:	c3                                              	ret
  5a8369:	cc                                              	int3
  5a836a:	cc                                              	int3
  5a836b:	cc                                              	int3
  5a836c:	cc                                              	int3
  5a836d:	cc                                              	int3
  5a836e:	cc                                              	int3
  5a836f:	cc                                              	int3
