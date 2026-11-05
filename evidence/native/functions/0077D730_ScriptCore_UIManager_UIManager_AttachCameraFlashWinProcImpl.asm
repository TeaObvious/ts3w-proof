# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077d730 (ScriptCore.UIManager::UIManager_AttachCameraFlashWinProcImpl)
Paired Ghidra pseudocode: 0077D730_ScriptCore_UIManager_UIManager_AttachCameraFlashWinProcImpl.c
Window: [0x0077d730, 0x0077d7b0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077d7b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077d730: e8 5b bc fe ff 8b 4c 24 04 8b 10 8b 92 cc 00 00
0077d740: 00 51 8b c8 ff d2 85 c0 74 64 8b 10 57 8b c8 8b
0077d750: 42 0c 68 18 82 ee ee ff d0 8b f8 85 ff 74 4e 56
0077d760: 6a 00 68 e4 f0 00 01 6a 04 6a 10 e8 40 79 d8 ff
0077d770: 83 c4 10 85 c0 74 31 8b c8 e8 a2 fd 05 00 8b f0
0077d780: 85 f6 74 08 8b 16 8b 02 8b ce ff d0 8b 17 8b 82
0077d790: 08 01 00 00 56 8b cf ff d0 85 f6 74 0f 8b 16 8b
0077d7a0: 42 04 8b ce 5e 5f ff e0 33 f6 eb e0 5e 5f c3 cc

LINEAR DISASSEMBLY
0077d730 <.text+0x37c730>:
  77d730:	e8 5b bc fe ff                                  	call   0x769390
  77d735:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77d739:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d73b:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  77d741:	51                                              	push   ecx
  77d742:	8b c8                                           	mov    ecx,eax
  77d744:	ff d2                                           	call   edx
  77d746:	85 c0                                           	test   eax,eax
  77d748:	74 64                                           	je     0x77d7ae
  77d74a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d74c:	57                                              	push   edi
  77d74d:	8b c8                                           	mov    ecx,eax
  77d74f:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d752:	68 18 82 ee ee                                  	push   0xeeee8218
  77d757:	ff d0                                           	call   eax
  77d759:	8b f8                                           	mov    edi,eax
  77d75b:	85 ff                                           	test   edi,edi
  77d75d:	74 4e                                           	je     0x77d7ad
  77d75f:	56                                              	push   esi
  77d760:	6a 00                                           	push   0x0
  77d762:	68 e4 f0 00 01                                  	push   0x100f0e4
  77d767:	6a 04                                           	push   0x4
  77d769:	6a 10                                           	push   0x10
  77d76b:	e8 40 79 d8 ff                                  	call   0x5050b0
  77d770:	83 c4 10                                        	add    esp,0x10
  77d773:	85 c0                                           	test   eax,eax
  77d775:	74 31                                           	je     0x77d7a8
  77d777:	8b c8                                           	mov    ecx,eax
  77d779:	e8 a2 fd 05 00                                  	call   0x7dd520
  77d77e:	8b f0                                           	mov    esi,eax
  77d780:	85 f6                                           	test   esi,esi
  77d782:	74 08                                           	je     0x77d78c
  77d784:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77d786:	8b 02                                           	mov    eax,DWORD PTR [edx]
  77d788:	8b ce                                           	mov    ecx,esi
  77d78a:	ff d0                                           	call   eax
  77d78c:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77d78e:	8b 82 08 01 00 00                               	mov    eax,DWORD PTR [edx+0x108]
  77d794:	56                                              	push   esi
  77d795:	8b cf                                           	mov    ecx,edi
  77d797:	ff d0                                           	call   eax
  77d799:	85 f6                                           	test   esi,esi
  77d79b:	74 0f                                           	je     0x77d7ac
  77d79d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77d79f:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  77d7a2:	8b ce                                           	mov    ecx,esi
  77d7a4:	5e                                              	pop    esi
  77d7a5:	5f                                              	pop    edi
  77d7a6:	ff e0                                           	jmp    eax
  77d7a8:	33 f6                                           	xor    esi,esi
  77d7aa:	eb e0                                           	jmp    0x77d78c
  77d7ac:	5e                                              	pop    esi
  77d7ad:	5f                                              	pop    edi
  77d7ae:	c3                                              	ret
  77d7af:	cc                                              	int3
