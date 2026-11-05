# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985b70 (GfxDevice_SetViewport)
Paired Ghidra pseudocode: 10985B70_GfxDevice_SetViewport.c
Window: [0x10985b70, 0x10985c00) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985c00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985b70: 8b 0d e8 35 c7 10 83 ec 1c 85 c9 74 74 56 57 8d
10985b80: 44 24 10 50 8d 54 24 10 52 8d 44 24 10 50 e8 0d
10985b90: 3d a8 ff 8b 7c 24 28 85 ff 7d 02 33 ff 8b 74 24
10985ba0: 2c 85 f6 7d 02 33 f6 8b 44 24 08 d9 e8 8b 4c 24
10985bb0: 30 8b 54 24 0c 3b c8 0f 4f c8 8b 44 24 34 3b c2
10985bc0: 0f 4f c2 83 ec 08 d9 5c 24 04 89 4c 24 24 d9 ee
10985bd0: 8d 4c 24 1c d9 1c 24 89 7c 24 1c 51 8b 0d e8 35
10985be0: c7 10 89 74 24 24 89 44 24 2c e8 81 55 a8 ff 5f
10985bf0: 5e 83 c4 1c c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10985b70 <.text+0x984b70>:
10985b70:	8b 0d e8 35 c7 10                               	mov    ecx,DWORD PTR ds:0x10c735e8
10985b76:	83 ec 1c                                        	sub    esp,0x1c
10985b79:	85 c9                                           	test   ecx,ecx
10985b7b:	74 74                                           	je     0x10985bf1
10985b7d:	56                                              	push   esi
10985b7e:	57                                              	push   edi
10985b7f:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10985b83:	50                                              	push   eax
10985b84:	8d 54 24 10                                     	lea    edx,[esp+0x10]
10985b88:	52                                              	push   edx
10985b89:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10985b8d:	50                                              	push   eax
10985b8e:	e8 0d 3d a8 ff                                  	call   0x104098a0
10985b93:	8b 7c 24 28                                     	mov    edi,DWORD PTR [esp+0x28]
10985b97:	85 ff                                           	test   edi,edi
10985b99:	7d 02                                           	jge    0x10985b9d
10985b9b:	33 ff                                           	xor    edi,edi
10985b9d:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
10985ba1:	85 f6                                           	test   esi,esi
10985ba3:	7d 02                                           	jge    0x10985ba7
10985ba5:	33 f6                                           	xor    esi,esi
10985ba7:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10985bab:	d9 e8                                           	fld1
10985bad:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10985bb1:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10985bb5:	3b c8                                           	cmp    ecx,eax
10985bb7:	0f 4f c8                                        	cmovg  ecx,eax
10985bba:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10985bbe:	3b c2                                           	cmp    eax,edx
10985bc0:	0f 4f c2                                        	cmovg  eax,edx
10985bc3:	83 ec 08                                        	sub    esp,0x8
10985bc6:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10985bca:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
10985bce:	d9 ee                                           	fldz
10985bd0:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10985bd4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10985bd7:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
10985bdb:	51                                              	push   ecx
10985bdc:	8b 0d e8 35 c7 10                               	mov    ecx,DWORD PTR ds:0x10c735e8
10985be2:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
10985be6:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
10985bea:	e8 81 55 a8 ff                                  	call   0x1040b170
10985bef:	5f                                              	pop    edi
10985bf0:	5e                                              	pop    esi
10985bf1:	83 c4 1c                                        	add    esp,0x1c
10985bf4:	c3                                              	ret
10985bf5:	cc                                              	int3
10985bf6:	cc                                              	int3
10985bf7:	cc                                              	int3
10985bf8:	cc                                              	int3
10985bf9:	cc                                              	int3
10985bfa:	cc                                              	int3
10985bfb:	cc                                              	int3
10985bfc:	cc                                              	int3
10985bfd:	cc                                              	int3
10985bfe:	cc                                              	int3
10985bff:	cc                                              	int3
