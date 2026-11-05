# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8b50 (ScriptCore.CASUtils::CASUtils_FrameAllImpl)
Paired Ghidra pseudocode: 005A8B50_ScriptCore_CASUtils_CASUtils_FrameAllImpl.c
Window: [0x005a8b50, 0x005a8be0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8be0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8b50: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a8b60: 30 75 77 e8 28 08 1c 00 8b 10 8b c8 8b 82 cc 00
005a8b70: 00 00 56 ff d0 85 c0 74 61 8b 10 8b c8 8b 42 0c
005a8b80: 68 6f 43 9a 03 ff d0 8b f0 85 f6 74 4d 57 e8 5d
005a8b90: 39 ea ff 6a 30 8b f8 e8 84 22 1c 00 83 c4 04 85
005a8ba0: c0 74 0e 6a 00 56 8b c8 e8 13 ee ff ff 8b f0 eb
005a8bb0: 02 33 f6 8b 16 8b 42 04 8b ce ff d0 8b 17 8b 42
005a8bc0: 1c 6a 00 6a 00 56 68 f0 90 02 03 8b cf ff d0 8b
005a8bd0: 16 8b 42 08 5f 8b ce 5e ff e0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
005a8b50 <.text+0x1a7b50>:
  5a8b50:	56                                              	push   esi
  5a8b51:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a8b55:	8b c6                                           	mov    eax,esi
  5a8b57:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a8b5c:	3d 00 00 00 30                                  	cmp    eax,0x30000000
  5a8b61:	75 77                                           	jne    0x5a8bda
  5a8b63:	e8 28 08 1c 00                                  	call   0x769390
  5a8b68:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8b6a:	8b c8                                           	mov    ecx,eax
  5a8b6c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a8b72:	56                                              	push   esi
  5a8b73:	ff d0                                           	call   eax
  5a8b75:	85 c0                                           	test   eax,eax
  5a8b77:	74 61                                           	je     0x5a8bda
  5a8b79:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8b7b:	8b c8                                           	mov    ecx,eax
  5a8b7d:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  5a8b80:	68 6f 43 9a 03                                  	push   0x39a436f
  5a8b85:	ff d0                                           	call   eax
  5a8b87:	8b f0                                           	mov    esi,eax
  5a8b89:	85 f6                                           	test   esi,esi
  5a8b8b:	74 4d                                           	je     0x5a8bda
  5a8b8d:	57                                              	push   edi
  5a8b8e:	e8 5d 39 ea ff                                  	call   0x44c4f0
  5a8b93:	6a 30                                           	push   0x30
  5a8b95:	8b f8                                           	mov    edi,eax
  5a8b97:	e8 84 22 1c 00                                  	call   0x76ae20
  5a8b9c:	83 c4 04                                        	add    esp,0x4
  5a8b9f:	85 c0                                           	test   eax,eax
  5a8ba1:	74 0e                                           	je     0x5a8bb1
  5a8ba3:	6a 00                                           	push   0x0
  5a8ba5:	56                                              	push   esi
  5a8ba6:	8b c8                                           	mov    ecx,eax
  5a8ba8:	e8 13 ee ff ff                                  	call   0x5a79c0
  5a8bad:	8b f0                                           	mov    esi,eax
  5a8baf:	eb 02                                           	jmp    0x5a8bb3
  5a8bb1:	33 f6                                           	xor    esi,esi
  5a8bb3:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a8bb5:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a8bb8:	8b ce                                           	mov    ecx,esi
  5a8bba:	ff d0                                           	call   eax
  5a8bbc:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5a8bbe:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  5a8bc1:	6a 00                                           	push   0x0
  5a8bc3:	6a 00                                           	push   0x0
  5a8bc5:	56                                              	push   esi
  5a8bc6:	68 f0 90 02 03                                  	push   0x30290f0
  5a8bcb:	8b cf                                           	mov    ecx,edi
  5a8bcd:	ff d0                                           	call   eax
  5a8bcf:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a8bd1:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5a8bd4:	5f                                              	pop    edi
  5a8bd5:	8b ce                                           	mov    ecx,esi
  5a8bd7:	5e                                              	pop    esi
  5a8bd8:	ff e0                                           	jmp    eax
  5a8bda:	5e                                              	pop    esi
  5a8bdb:	c3                                              	ret
  5a8bdc:	cc                                              	int3
  5a8bdd:	cc                                              	int3
  5a8bde:	cc                                              	int3
  5a8bdf:	cc                                              	int3
