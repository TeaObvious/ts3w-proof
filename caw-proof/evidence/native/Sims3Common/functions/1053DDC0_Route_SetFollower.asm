# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053ddc0 (Route_SetFollower)
Paired Ghidra pseudocode: 1053DDC0_Route_SetFollower.c
Window: [0x1053ddc0, 0x1053de60) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053de60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053ddc0: 8b 0d 44 89 c7 10 85 c9 74 36 8b 44 24 04 56 50
1053ddd0: e8 1b e3 ff ff 8b f0 85 f6 74 24 8b 16 8b 42 10
1053dde0: 8b ce ff d0 8b 4c 24 10 8b 54 24 0c 51 52 8b ce
1053ddf0: e8 eb e1 ff ff 8b 06 8b 50 14 8b ce 5e ff e2 5e
1053de00: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
1053de10: 51 8b 0d 44 89 c7 10 85 c9 56 74 33 8b 44 24 0c
1053de20: 50 e8 ca e2 ff ff 8b f0 85 f6 74 23 8b 16 8b 42
1053de30: 10 8b ce ff d0 d9 86 a8 00 00 00 8b 16 d9 5c 24
1053de40: 04 8b 42 14 8b ce ff d0 d9 44 24 04 5e 59 c3 d9
1053de50: ee 5e 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053ddc0 <.text+0x53cdc0>:
1053ddc0:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1053ddc6:	85 c9                                           	test   ecx,ecx
1053ddc8:	74 36                                           	je     0x1053de00
1053ddca:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1053ddce:	56                                              	push   esi
1053ddcf:	50                                              	push   eax
1053ddd0:	e8 1b e3 ff ff                                  	call   0x1053c0f0
1053ddd5:	8b f0                                           	mov    esi,eax
1053ddd7:	85 f6                                           	test   esi,esi
1053ddd9:	74 24                                           	je     0x1053ddff
1053dddb:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053dddd:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
1053dde0:	8b ce                                           	mov    ecx,esi
1053dde2:	ff d0                                           	call   eax
1053dde4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1053dde8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1053ddec:	51                                              	push   ecx
1053dded:	52                                              	push   edx
1053ddee:	8b ce                                           	mov    ecx,esi
1053ddf0:	e8 eb e1 ff ff                                  	call   0x1053bfe0
1053ddf5:	8b 06                                           	mov    eax,DWORD PTR [esi]
1053ddf7:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
1053ddfa:	8b ce                                           	mov    ecx,esi
1053ddfc:	5e                                              	pop    esi
1053ddfd:	ff e2                                           	jmp    edx
1053ddff:	5e                                              	pop    esi
1053de00:	c3                                              	ret
1053de01:	cc                                              	int3
1053de02:	cc                                              	int3
1053de03:	cc                                              	int3
1053de04:	cc                                              	int3
1053de05:	cc                                              	int3
1053de06:	cc                                              	int3
1053de07:	cc                                              	int3
1053de08:	cc                                              	int3
1053de09:	cc                                              	int3
1053de0a:	cc                                              	int3
1053de0b:	cc                                              	int3
1053de0c:	cc                                              	int3
1053de0d:	cc                                              	int3
1053de0e:	cc                                              	int3
1053de0f:	cc                                              	int3
1053de10:	51                                              	push   ecx
1053de11:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1053de17:	85 c9                                           	test   ecx,ecx
1053de19:	56                                              	push   esi
1053de1a:	74 33                                           	je     0x1053de4f
1053de1c:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1053de20:	50                                              	push   eax
1053de21:	e8 ca e2 ff ff                                  	call   0x1053c0f0
1053de26:	8b f0                                           	mov    esi,eax
1053de28:	85 f6                                           	test   esi,esi
1053de2a:	74 23                                           	je     0x1053de4f
1053de2c:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053de2e:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
1053de31:	8b ce                                           	mov    ecx,esi
1053de33:	ff d0                                           	call   eax
1053de35:	d9 86 a8 00 00 00                               	fld    DWORD PTR [esi+0xa8]
1053de3b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053de3d:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1053de41:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1053de44:	8b ce                                           	mov    ecx,esi
1053de46:	ff d0                                           	call   eax
1053de48:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
1053de4c:	5e                                              	pop    esi
1053de4d:	59                                              	pop    ecx
1053de4e:	c3                                              	ret
1053de4f:	d9 ee                                           	fldz
1053de51:	5e                                              	pop    esi
1053de52:	59                                              	pop    ecx
1053de53:	c3                                              	ret
1053de54:	cc                                              	int3
1053de55:	cc                                              	int3
1053de56:	cc                                              	int3
1053de57:	cc                                              	int3
1053de58:	cc                                              	int3
1053de59:	cc                                              	int3
1053de5a:	cc                                              	int3
1053de5b:	cc                                              	int3
1053de5c:	cc                                              	int3
1053de5d:	cc                                              	int3
1053de5e:	cc                                              	int3
1053de5f:	cc                                              	int3
