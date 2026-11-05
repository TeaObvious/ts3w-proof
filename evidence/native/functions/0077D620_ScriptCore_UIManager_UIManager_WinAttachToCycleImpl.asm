# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077d620 (ScriptCore.UIManager::UIManager_WinAttachToCycleImpl)
Paired Ghidra pseudocode: 0077D620_ScriptCore_UIManager_UIManager_WinAttachToCycleImpl.c
Window: [0x0077d620, 0x0077d6b0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077d6b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077d620: e8 6b bd fe ff 8b 4c 24 04 8b 10 8b 92 cc 00 00
0077d630: 00 51 8b c8 ff d2 85 c0 74 73 8b 10 57 8b c8 8b
0077d640: 42 0c 68 18 82 ee ee ff d0 8b f8 85 ff 74 5d 56
0077d650: 6a 00 68 c0 f0 00 01 6a 08 6a 30 e8 50 7a d8 ff
0077d660: 83 c4 10 85 c0 74 40 8b c8 e8 32 6b 06 00 8b f0
0077d670: 85 f6 74 08 8b 16 8b 02 8b ce ff d0 d9 44 24 10
0077d680: 51 8b ce d9 1c 24 e8 25 57 db ff 8b 17 8b 82 88
0077d690: 00 00 00 56 8b cf ff d0 85 f6 74 0f 8b 16 8b 42
0077d6a0: 04 8b ce 5e 5f ff e0 33 f6 eb d1 5e 5f c3 cc cc

LINEAR DISASSEMBLY
0077d620 <.text+0x37c620>:
  77d620:	e8 6b bd fe ff                                  	call   0x769390
  77d625:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77d629:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d62b:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  77d631:	51                                              	push   ecx
  77d632:	8b c8                                           	mov    ecx,eax
  77d634:	ff d2                                           	call   edx
  77d636:	85 c0                                           	test   eax,eax
  77d638:	74 73                                           	je     0x77d6ad
  77d63a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d63c:	57                                              	push   edi
  77d63d:	8b c8                                           	mov    ecx,eax
  77d63f:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d642:	68 18 82 ee ee                                  	push   0xeeee8218
  77d647:	ff d0                                           	call   eax
  77d649:	8b f8                                           	mov    edi,eax
  77d64b:	85 ff                                           	test   edi,edi
  77d64d:	74 5d                                           	je     0x77d6ac
  77d64f:	56                                              	push   esi
  77d650:	6a 00                                           	push   0x0
  77d652:	68 c0 f0 00 01                                  	push   0x100f0c0
  77d657:	6a 08                                           	push   0x8
  77d659:	6a 30                                           	push   0x30
  77d65b:	e8 50 7a d8 ff                                  	call   0x5050b0
  77d660:	83 c4 10                                        	add    esp,0x10
  77d663:	85 c0                                           	test   eax,eax
  77d665:	74 40                                           	je     0x77d6a7
  77d667:	8b c8                                           	mov    ecx,eax
  77d669:	e8 32 6b 06 00                                  	call   0x7e41a0
  77d66e:	8b f0                                           	mov    esi,eax
  77d670:	85 f6                                           	test   esi,esi
  77d672:	74 08                                           	je     0x77d67c
  77d674:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77d676:	8b 02                                           	mov    eax,DWORD PTR [edx]
  77d678:	8b ce                                           	mov    ecx,esi
  77d67a:	ff d0                                           	call   eax
  77d67c:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  77d680:	51                                              	push   ecx
  77d681:	8b ce                                           	mov    ecx,esi
  77d683:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  77d686:	e8 25 57 db ff                                  	call   0x532db0
  77d68b:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77d68d:	8b 82 88 00 00 00                               	mov    eax,DWORD PTR [edx+0x88]
  77d693:	56                                              	push   esi
  77d694:	8b cf                                           	mov    ecx,edi
  77d696:	ff d0                                           	call   eax
  77d698:	85 f6                                           	test   esi,esi
  77d69a:	74 0f                                           	je     0x77d6ab
  77d69c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77d69e:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  77d6a1:	8b ce                                           	mov    ecx,esi
  77d6a3:	5e                                              	pop    esi
  77d6a4:	5f                                              	pop    edi
  77d6a5:	ff e0                                           	jmp    eax
  77d6a7:	33 f6                                           	xor    esi,esi
  77d6a9:	eb d1                                           	jmp    0x77d67c
  77d6ab:	5e                                              	pop    esi
  77d6ac:	5f                                              	pop    edi
  77d6ad:	c3                                              	ret
  77d6ae:	cc                                              	int3
  77d6af:	cc                                              	int3
