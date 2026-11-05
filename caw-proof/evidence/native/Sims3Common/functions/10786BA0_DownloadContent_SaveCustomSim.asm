# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10786ba0 (DownloadContent_SaveCustomSim)
Paired Ghidra pseudocode: 10786BA0_DownloadContent_SaveCustomSim.c
Window: [0x10786ba0, 0x10786c20) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10786c20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10786ba0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 83 ec 20 53
10786bb0: 56 57 50 51 52 8d 44 24 28 50 e8 61 fe ff ff 8b
10786bc0: 08 8b 70 04 8b 78 08 8b 58 0c 83 c4 10 84 c9 75
10786bd0: 09 5f 5e 32 c0 5b 83 c4 20 c3 8d 4c 24 0c 51 8d
10786be0: 4c 24 44 e8 c8 6f dd ff 8b 54 24 54 8b 44 24 50
10786bf0: 52 8b 16 8b 52 58 50 8b 44 24 44 8d 4c 24 14 51
10786c00: 50 8b ce ff d2 50 53 8b cf e8 d2 57 03 00 5f 5e
10786c10: 5b 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10786ba0 <.text+0x785ba0>:
10786ba0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10786ba4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10786ba8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10786bac:	83 ec 20                                        	sub    esp,0x20
10786baf:	53                                              	push   ebx
10786bb0:	56                                              	push   esi
10786bb1:	57                                              	push   edi
10786bb2:	50                                              	push   eax
10786bb3:	51                                              	push   ecx
10786bb4:	52                                              	push   edx
10786bb5:	8d 44 24 28                                     	lea    eax,[esp+0x28]
10786bb9:	50                                              	push   eax
10786bba:	e8 61 fe ff ff                                  	call   0x10786a20
10786bbf:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10786bc1:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
10786bc4:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
10786bc7:	8b 58 0c                                        	mov    ebx,DWORD PTR [eax+0xc]
10786bca:	83 c4 10                                        	add    esp,0x10
10786bcd:	84 c9                                           	test   cl,cl
10786bcf:	75 09                                           	jne    0x10786bda
10786bd1:	5f                                              	pop    edi
10786bd2:	5e                                              	pop    esi
10786bd3:	32 c0                                           	xor    al,al
10786bd5:	5b                                              	pop    ebx
10786bd6:	83 c4 20                                        	add    esp,0x20
10786bd9:	c3                                              	ret
10786bda:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10786bde:	51                                              	push   ecx
10786bdf:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
10786be3:	e8 c8 6f dd ff                                  	call   0x1055dbb0
10786be8:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
10786bec:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
10786bf0:	52                                              	push   edx
10786bf1:	8b 16                                           	mov    edx,DWORD PTR [esi]
10786bf3:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10786bf6:	50                                              	push   eax
10786bf7:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10786bfb:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10786bff:	51                                              	push   ecx
10786c00:	50                                              	push   eax
10786c01:	8b ce                                           	mov    ecx,esi
10786c03:	ff d2                                           	call   edx
10786c05:	50                                              	push   eax
10786c06:	53                                              	push   ebx
10786c07:	8b cf                                           	mov    ecx,edi
10786c09:	e8 d2 57 03 00                                  	call   0x107bc3e0
10786c0e:	5f                                              	pop    edi
10786c0f:	5e                                              	pop    esi
10786c10:	5b                                              	pop    ebx
10786c11:	83 c4 20                                        	add    esp,0x20
10786c14:	c3                                              	ret
10786c15:	cc                                              	int3
10786c16:	cc                                              	int3
10786c17:	cc                                              	int3
10786c18:	cc                                              	int3
10786c19:	cc                                              	int3
10786c1a:	cc                                              	int3
10786c1b:	cc                                              	int3
10786c1c:	cc                                              	int3
10786c1d:	cc                                              	int3
10786c1e:	cc                                              	int3
10786c1f:	cc                                              	int3
