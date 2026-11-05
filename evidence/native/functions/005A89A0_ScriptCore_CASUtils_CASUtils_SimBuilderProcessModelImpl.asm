# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a89a0 (ScriptCore.CASUtils::CASUtils_SimBuilderProcessModelImpl)
Paired Ghidra pseudocode: 005A89A0_ScriptCore_CASUtils_CASUtils_SimBuilderProcessModelImpl.c
Window: [0x005a89a0, 0x005a8a50) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8a50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a89a0: 53 55 56 57 e8 47 3b ea ff 8b e8 e8 e0 09 1c 00
005a89b0: 6a 20 8b f8 e8 67 24 1c 00 8b f0 83 c4 04 85 f6
005a89c0: 74 35 8b 07 8b 90 18 01 00 00 8b cf ff d2 c7 06
005a89d0: 1c c9 06 01 33 c9 8d 5e 04 87 0b 89 56 0c 8b 54
005a89e0: 24 14 89 46 08 c7 46 10 70 e2 5a 00 c7 06 00 29
005a89f0: fe 00 89 56 18 eb 02 33 f6 8b 06 8b 50 04 8b ce
005a8a00: ff d2 8b 44 24 18 8b 1f 8b 93 18 01 00 00 6a 00
005a8a10: 50 6a ff 8b cf ff d2 52 50 8b 83 20 01 00 00 8b
005a8a20: cf ff d0 8b 55 00 8b 42 1c 6a 00 6a 00 56 68 f0
005a8a30: 90 02 03 8b cd ff d0 8b 16 8b 42 08 8b ce ff d0
005a8a40: 8b 17 8b 82 1c 01 00 00 8b cf 5f 5e 5d 5b ff e0

LINEAR DISASSEMBLY
005a89a0 <.text+0x1a79a0>:
  5a89a0:	53                                              	push   ebx
  5a89a1:	55                                              	push   ebp
  5a89a2:	56                                              	push   esi
  5a89a3:	57                                              	push   edi
  5a89a4:	e8 47 3b ea ff                                  	call   0x44c4f0
  5a89a9:	8b e8                                           	mov    ebp,eax
  5a89ab:	e8 e0 09 1c 00                                  	call   0x769390
  5a89b0:	6a 20                                           	push   0x20
  5a89b2:	8b f8                                           	mov    edi,eax
  5a89b4:	e8 67 24 1c 00                                  	call   0x76ae20
  5a89b9:	8b f0                                           	mov    esi,eax
  5a89bb:	83 c4 04                                        	add    esp,0x4
  5a89be:	85 f6                                           	test   esi,esi
  5a89c0:	74 35                                           	je     0x5a89f7
  5a89c2:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5a89c4:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  5a89ca:	8b cf                                           	mov    ecx,edi
  5a89cc:	ff d2                                           	call   edx
  5a89ce:	c7 06 1c c9 06 01                               	mov    DWORD PTR [esi],0x106c91c
  5a89d4:	33 c9                                           	xor    ecx,ecx
  5a89d6:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  5a89d9:	87 0b                                           	xchg   DWORD PTR [ebx],ecx
  5a89db:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  5a89de:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  5a89e2:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a89e5:	c7 46 10 70 e2 5a 00                            	mov    DWORD PTR [esi+0x10],0x5ae270
  5a89ec:	c7 06 00 29 fe 00                               	mov    DWORD PTR [esi],0xfe2900
  5a89f2:	89 56 18                                        	mov    DWORD PTR [esi+0x18],edx
  5a89f5:	eb 02                                           	jmp    0x5a89f9
  5a89f7:	33 f6                                           	xor    esi,esi
  5a89f9:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a89fb:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a89fe:	8b ce                                           	mov    ecx,esi
  5a8a00:	ff d2                                           	call   edx
  5a8a02:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  5a8a06:	8b 1f                                           	mov    ebx,DWORD PTR [edi]
  5a8a08:	8b 93 18 01 00 00                               	mov    edx,DWORD PTR [ebx+0x118]
  5a8a0e:	6a 00                                           	push   0x0
  5a8a10:	50                                              	push   eax
  5a8a11:	6a ff                                           	push   0xffffffff
  5a8a13:	8b cf                                           	mov    ecx,edi
  5a8a15:	ff d2                                           	call   edx
  5a8a17:	52                                              	push   edx
  5a8a18:	50                                              	push   eax
  5a8a19:	8b 83 20 01 00 00                               	mov    eax,DWORD PTR [ebx+0x120]
  5a8a1f:	8b cf                                           	mov    ecx,edi
  5a8a21:	ff d0                                           	call   eax
  5a8a23:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5a8a26:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  5a8a29:	6a 00                                           	push   0x0
  5a8a2b:	6a 00                                           	push   0x0
  5a8a2d:	56                                              	push   esi
  5a8a2e:	68 f0 90 02 03                                  	push   0x30290f0
  5a8a33:	8b cd                                           	mov    ecx,ebp
  5a8a35:	ff d0                                           	call   eax
  5a8a37:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a8a39:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5a8a3c:	8b ce                                           	mov    ecx,esi
  5a8a3e:	ff d0                                           	call   eax
  5a8a40:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5a8a42:	8b 82 1c 01 00 00                               	mov    eax,DWORD PTR [edx+0x11c]
  5a8a48:	8b cf                                           	mov    ecx,edi
  5a8a4a:	5f                                              	pop    edi
  5a8a4b:	5e                                              	pop    esi
  5a8a4c:	5d                                              	pop    ebp
  5a8a4d:	5b                                              	pop    ebx
  5a8a4e:	ff e0                                           	jmp    eax
