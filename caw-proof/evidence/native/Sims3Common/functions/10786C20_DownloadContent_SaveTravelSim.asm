# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10786c20 (DownloadContent_SaveTravelSim)
Paired Ghidra pseudocode: 10786C20_DownloadContent_SaveTravelSim.c
Window: [0x10786c20, 0x10786cd0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x10786cd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10786c20: 83 ec 40 8b 44 24 4c 8b 4c 24 48 8b 54 24 44 53
10786c30: 57 50 51 52 8d 44 24 34 50 e8 e2 fd ff ff 8b 08
10786c40: 8b 50 04 8b 78 08 8b 58 0c 83 c4 10 84 c9 89 54
10786c50: 24 3c 75 08 5f 32 c0 5b 83 c4 40 c3 56 8d 44 24
10786c60: 1c 50 8d 4c 24 60 e8 45 6f dd ff 8b 74 24 6c 8d
10786c70: 4c 24 0c 51 8b ce e8 35 6f dd ff 8d 54 24 0c 52
10786c80: 8d 44 24 20 50 53 8b cf e8 13 69 03 00 84 c0 74
10786c90: 31 8d 4c 24 0c 51 8d 54 24 40 52 e8 00 6e dd ff
10786ca0: 8b 08 89 0e 8b 50 04 89 56 04 8b 48 08 89 4e 08
10786cb0: 8b 50 0c 83 c4 08 89 56 0c 5e 5f b0 01 5b 83 c4
10786cc0: 40 c3 5e 5f 32 c0 5b 83 c4 40 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10786c20 <.text+0x785c20>:
10786c20:	83 ec 40                                        	sub    esp,0x40
10786c23:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
10786c27:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
10786c2b:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
10786c2f:	53                                              	push   ebx
10786c30:	57                                              	push   edi
10786c31:	50                                              	push   eax
10786c32:	51                                              	push   ecx
10786c33:	52                                              	push   edx
10786c34:	8d 44 24 34                                     	lea    eax,[esp+0x34]
10786c38:	50                                              	push   eax
10786c39:	e8 e2 fd ff ff                                  	call   0x10786a20
10786c3e:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10786c40:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10786c43:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
10786c46:	8b 58 0c                                        	mov    ebx,DWORD PTR [eax+0xc]
10786c49:	83 c4 10                                        	add    esp,0x10
10786c4c:	84 c9                                           	test   cl,cl
10786c4e:	89 54 24 3c                                     	mov    DWORD PTR [esp+0x3c],edx
10786c52:	75 08                                           	jne    0x10786c5c
10786c54:	5f                                              	pop    edi
10786c55:	32 c0                                           	xor    al,al
10786c57:	5b                                              	pop    ebx
10786c58:	83 c4 40                                        	add    esp,0x40
10786c5b:	c3                                              	ret
10786c5c:	56                                              	push   esi
10786c5d:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
10786c61:	50                                              	push   eax
10786c62:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
10786c66:	e8 45 6f dd ff                                  	call   0x1055dbb0
10786c6b:	8b 74 24 6c                                     	mov    esi,DWORD PTR [esp+0x6c]
10786c6f:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10786c73:	51                                              	push   ecx
10786c74:	8b ce                                           	mov    ecx,esi
10786c76:	e8 35 6f dd ff                                  	call   0x1055dbb0
10786c7b:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
10786c7f:	52                                              	push   edx
10786c80:	8d 44 24 20                                     	lea    eax,[esp+0x20]
10786c84:	50                                              	push   eax
10786c85:	53                                              	push   ebx
10786c86:	8b cf                                           	mov    ecx,edi
10786c88:	e8 13 69 03 00                                  	call   0x107bd5a0
10786c8d:	84 c0                                           	test   al,al
10786c8f:	74 31                                           	je     0x10786cc2
10786c91:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10786c95:	51                                              	push   ecx
10786c96:	8d 54 24 40                                     	lea    edx,[esp+0x40]
10786c9a:	52                                              	push   edx
10786c9b:	e8 00 6e dd ff                                  	call   0x1055daa0
10786ca0:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10786ca2:	89 0e                                           	mov    DWORD PTR [esi],ecx
10786ca4:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10786ca7:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
10786caa:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
10786cad:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
10786cb0:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10786cb3:	83 c4 08                                        	add    esp,0x8
10786cb6:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
10786cb9:	5e                                              	pop    esi
10786cba:	5f                                              	pop    edi
10786cbb:	b0 01                                           	mov    al,0x1
10786cbd:	5b                                              	pop    ebx
10786cbe:	83 c4 40                                        	add    esp,0x40
10786cc1:	c3                                              	ret
10786cc2:	5e                                              	pop    esi
10786cc3:	5f                                              	pop    edi
10786cc4:	32 c0                                           	xor    al,al
10786cc6:	5b                                              	pop    ebx
10786cc7:	83 c4 40                                        	add    esp,0x40
10786cca:	c3                                              	ret
10786ccb:	cc                                              	int3
10786ccc:	cc                                              	int3
10786ccd:	cc                                              	int3
10786cce:	cc                                              	int3
10786ccf:	cc                                              	int3
