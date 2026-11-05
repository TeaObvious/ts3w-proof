# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00b08b30 (DirectTargetOf_World_World_SetPagodaRoofCurveChoiceImpl)
Paired Ghidra pseudocode: 00B08B30_DirectTargetOf_World_World_SetPagodaRoofCurveChoiceImpl.c
Window: [0x00b08b30, 0x00b08be0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00b08be0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00b08b30: 56 8b 35 c4 db 1e 01 85 f6 0f 84 98 00 00 00 57
00b08b40: 6a 00 8b ce e8 17 6a 15 00 52 50 8b ce e8 be 9c
00b08b50: 15 00 8b f8 85 ff 74 7e 8b 8f ac 02 00 00 85 c9
00b08b60: 74 74 8b 44 24 0c 50 e8 c4 1c 09 00 6a 18 e8 dd
00b08b70: 65 fd ff 83 c4 04 85 c0 74 58 c7 00 8c 5f 06 01
00b08b80: 33 c9 8d 50 04 87 0a c7 00 8c 5f 06 01 8b 10 8b
00b08b90: f0 8b c8 8b 42 04 ff d0 8b 4f 48 89 4e 08 8b 57
00b08ba0: 4c 89 56 0c c7 46 10 02 00 00 00 e8 40 39 94 ff
00b08bb0: 85 c0 74 13 8b 10 6a 00 6a 00 56 8b c8 8b 42 1c
00b08bc0: 68 aa 30 e1 06 ff d0 8b 16 8b 42 08 5f 8b ce 5e
00b08bd0: ff e0 33 f6 eb c2 5f 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00b08b30 <.text+0x707b30>:
  b08b30:	56                                              	push   esi
  b08b31:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  b08b37:	85 f6                                           	test   esi,esi
  b08b39:	0f 84 98 00 00 00                               	je     0xb08bd7
  b08b3f:	57                                              	push   edi
  b08b40:	6a 00                                           	push   0x0
  b08b42:	8b ce                                           	mov    ecx,esi
  b08b44:	e8 17 6a 15 00                                  	call   0xc5f560
  b08b49:	52                                              	push   edx
  b08b4a:	50                                              	push   eax
  b08b4b:	8b ce                                           	mov    ecx,esi
  b08b4d:	e8 be 9c 15 00                                  	call   0xc62810
  b08b52:	8b f8                                           	mov    edi,eax
  b08b54:	85 ff                                           	test   edi,edi
  b08b56:	74 7e                                           	je     0xb08bd6
  b08b58:	8b 8f ac 02 00 00                               	mov    ecx,DWORD PTR [edi+0x2ac]
  b08b5e:	85 c9                                           	test   ecx,ecx
  b08b60:	74 74                                           	je     0xb08bd6
  b08b62:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  b08b66:	50                                              	push   eax
  b08b67:	e8 c4 1c 09 00                                  	call   0xb9a830
  b08b6c:	6a 18                                           	push   0x18
  b08b6e:	e8 dd 65 fd ff                                  	call   0xadf150
  b08b73:	83 c4 04                                        	add    esp,0x4
  b08b76:	85 c0                                           	test   eax,eax
  b08b78:	74 58                                           	je     0xb08bd2
  b08b7a:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  b08b80:	33 c9                                           	xor    ecx,ecx
  b08b82:	8d 50 04                                        	lea    edx,[eax+0x4]
  b08b85:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  b08b87:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  b08b8d:	8b 10                                           	mov    edx,DWORD PTR [eax]
  b08b8f:	8b f0                                           	mov    esi,eax
  b08b91:	8b c8                                           	mov    ecx,eax
  b08b93:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  b08b96:	ff d0                                           	call   eax
  b08b98:	8b 4f 48                                        	mov    ecx,DWORD PTR [edi+0x48]
  b08b9b:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
  b08b9e:	8b 57 4c                                        	mov    edx,DWORD PTR [edi+0x4c]
  b08ba1:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  b08ba4:	c7 46 10 02 00 00 00                            	mov    DWORD PTR [esi+0x10],0x2
  b08bab:	e8 40 39 94 ff                                  	call   0x44c4f0
  b08bb0:	85 c0                                           	test   eax,eax
  b08bb2:	74 13                                           	je     0xb08bc7
  b08bb4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  b08bb6:	6a 00                                           	push   0x0
  b08bb8:	6a 00                                           	push   0x0
  b08bba:	56                                              	push   esi
  b08bbb:	8b c8                                           	mov    ecx,eax
  b08bbd:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  b08bc0:	68 aa 30 e1 06                                  	push   0x6e130aa
  b08bc5:	ff d0                                           	call   eax
  b08bc7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  b08bc9:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  b08bcc:	5f                                              	pop    edi
  b08bcd:	8b ce                                           	mov    ecx,esi
  b08bcf:	5e                                              	pop    esi
  b08bd0:	ff e0                                           	jmp    eax
  b08bd2:	33 f6                                           	xor    esi,esi
  b08bd4:	eb c2                                           	jmp    0xb08b98
  b08bd6:	5f                                              	pop    edi
  b08bd7:	5e                                              	pop    esi
  b08bd8:	c3                                              	ret
  b08bd9:	cc                                              	int3
  b08bda:	cc                                              	int3
  b08bdb:	cc                                              	int3
  b08bdc:	cc                                              	int3
  b08bdd:	cc                                              	int3
  b08bde:	cc                                              	int3
  b08bdf:	cc                                              	int3
