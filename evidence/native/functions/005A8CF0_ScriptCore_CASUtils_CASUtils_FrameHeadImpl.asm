# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8cf0 (ScriptCore.CASUtils::CASUtils_FrameHeadImpl)
Paired Ghidra pseudocode: 005A8CF0_ScriptCore_CASUtils_CASUtils_FrameHeadImpl.c
Window: [0x005a8cf0, 0x005a8d80) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8d80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8cf0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a8d00: 30 75 77 e8 88 06 1c 00 8b 10 8b c8 8b 82 cc 00
005a8d10: 00 00 56 ff d0 85 c0 74 61 8b 10 8b c8 8b 42 0c
005a8d20: 68 6f 43 9a 03 ff d0 8b f0 85 f6 74 4d 57 e8 bd
005a8d30: 37 ea ff 6a 30 8b f8 e8 e4 20 1c 00 83 c4 04 85
005a8d40: c0 74 0e 6a 01 56 8b c8 e8 73 ec ff ff 8b f0 eb
005a8d50: 02 33 f6 8b 16 8b 42 04 8b ce ff d0 8b 17 8b 42
005a8d60: 1c 6a 00 6a 00 56 68 f0 90 02 03 8b cf ff d0 8b
005a8d70: 16 8b 42 08 5f 8b ce 5e ff e0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
005a8cf0 <.text+0x1a7cf0>:
  5a8cf0:	56                                              	push   esi
  5a8cf1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a8cf5:	8b c6                                           	mov    eax,esi
  5a8cf7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a8cfc:	3d 00 00 00 30                                  	cmp    eax,0x30000000
  5a8d01:	75 77                                           	jne    0x5a8d7a
  5a8d03:	e8 88 06 1c 00                                  	call   0x769390
  5a8d08:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8d0a:	8b c8                                           	mov    ecx,eax
  5a8d0c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a8d12:	56                                              	push   esi
  5a8d13:	ff d0                                           	call   eax
  5a8d15:	85 c0                                           	test   eax,eax
  5a8d17:	74 61                                           	je     0x5a8d7a
  5a8d19:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8d1b:	8b c8                                           	mov    ecx,eax
  5a8d1d:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  5a8d20:	68 6f 43 9a 03                                  	push   0x39a436f
  5a8d25:	ff d0                                           	call   eax
  5a8d27:	8b f0                                           	mov    esi,eax
  5a8d29:	85 f6                                           	test   esi,esi
  5a8d2b:	74 4d                                           	je     0x5a8d7a
  5a8d2d:	57                                              	push   edi
  5a8d2e:	e8 bd 37 ea ff                                  	call   0x44c4f0
  5a8d33:	6a 30                                           	push   0x30
  5a8d35:	8b f8                                           	mov    edi,eax
  5a8d37:	e8 e4 20 1c 00                                  	call   0x76ae20
  5a8d3c:	83 c4 04                                        	add    esp,0x4
  5a8d3f:	85 c0                                           	test   eax,eax
  5a8d41:	74 0e                                           	je     0x5a8d51
  5a8d43:	6a 01                                           	push   0x1
  5a8d45:	56                                              	push   esi
  5a8d46:	8b c8                                           	mov    ecx,eax
  5a8d48:	e8 73 ec ff ff                                  	call   0x5a79c0
  5a8d4d:	8b f0                                           	mov    esi,eax
  5a8d4f:	eb 02                                           	jmp    0x5a8d53
  5a8d51:	33 f6                                           	xor    esi,esi
  5a8d53:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a8d55:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a8d58:	8b ce                                           	mov    ecx,esi
  5a8d5a:	ff d0                                           	call   eax
  5a8d5c:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5a8d5e:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  5a8d61:	6a 00                                           	push   0x0
  5a8d63:	6a 00                                           	push   0x0
  5a8d65:	56                                              	push   esi
  5a8d66:	68 f0 90 02 03                                  	push   0x30290f0
  5a8d6b:	8b cf                                           	mov    ecx,edi
  5a8d6d:	ff d0                                           	call   eax
  5a8d6f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a8d71:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5a8d74:	5f                                              	pop    edi
  5a8d75:	8b ce                                           	mov    ecx,esi
  5a8d77:	5e                                              	pop    esi
  5a8d78:	ff e0                                           	jmp    eax
  5a8d7a:	5e                                              	pop    esi
  5a8d7b:	c3                                              	ret
  5a8d7c:	cc                                              	int3
  5a8d7d:	cc                                              	int3
  5a8d7e:	cc                                              	int3
  5a8d7f:	cc                                              	int3
