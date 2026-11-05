# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052fc90 (Camera_EnableObjectFollow)
Paired Ghidra pseudocode: 1052FC90_Camera_EnableObjectFollow.c
Window: [0x1052fc90, 0x1052fd40) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052fd40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052fc90: 55 8b ec 83 e4 f0 83 ec 18 56 57 e8 90 c9 22 00
1052fca0: 85 c0 0f 84 88 00 00 00 8b c8 e8 d1 7d 40 00 85
1052fcb0: c0 74 7d 8b c8 e8 96 cc 22 00 8b f0 85 f6 74 70
1052fcc0: 8b 06 8b 50 0c 68 89 dd 0f 11 8b ce ff d2 8b f8
1052fcd0: 8b 06 8b 50 0c 68 db 4e 39 4d 8b ce ff d2 85 ff
1052fce0: 8b f0 74 2b d9 e8 6a 01 51 d9 1c 24 8d 44 24 18
1052fcf0: 50 8d 4d 10 e8 27 de 02 00 8b 4d 0c 8b 55 08 50
1052fd00: 51 52 8b cf e8 67 b7 23 00 5f 5e 8b e5 5d c3 85
1052fd10: f6 74 1d 8d 44 24 10 50 8d 4d 10 e8 00 de 02 00
1052fd20: 8b 4d 0c 8b 55 08 50 51 52 8b ce e8 30 cc 23 00
1052fd30: 5f 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052fc90 <.text+0x52ec90>:
1052fc90:	55                                              	push   ebp
1052fc91:	8b ec                                           	mov    ebp,esp
1052fc93:	83 e4 f0                                        	and    esp,0xfffffff0
1052fc96:	83 ec 18                                        	sub    esp,0x18
1052fc99:	56                                              	push   esi
1052fc9a:	57                                              	push   edi
1052fc9b:	e8 90 c9 22 00                                  	call   0x1075c630
1052fca0:	85 c0                                           	test   eax,eax
1052fca2:	0f 84 88 00 00 00                               	je     0x1052fd30
1052fca8:	8b c8                                           	mov    ecx,eax
1052fcaa:	e8 d1 7d 40 00                                  	call   0x10937a80
1052fcaf:	85 c0                                           	test   eax,eax
1052fcb1:	74 7d                                           	je     0x1052fd30
1052fcb3:	8b c8                                           	mov    ecx,eax
1052fcb5:	e8 96 cc 22 00                                  	call   0x1075c950
1052fcba:	8b f0                                           	mov    esi,eax
1052fcbc:	85 f6                                           	test   esi,esi
1052fcbe:	74 70                                           	je     0x1052fd30
1052fcc0:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052fcc2:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1052fcc5:	68 89 dd 0f 11                                  	push   0x110fdd89
1052fcca:	8b ce                                           	mov    ecx,esi
1052fccc:	ff d2                                           	call   edx
1052fcce:	8b f8                                           	mov    edi,eax
1052fcd0:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052fcd2:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1052fcd5:	68 db 4e 39 4d                                  	push   0x4d394edb
1052fcda:	8b ce                                           	mov    ecx,esi
1052fcdc:	ff d2                                           	call   edx
1052fcde:	85 ff                                           	test   edi,edi
1052fce0:	8b f0                                           	mov    esi,eax
1052fce2:	74 2b                                           	je     0x1052fd0f
1052fce4:	d9 e8                                           	fld1
1052fce6:	6a 01                                           	push   0x1
1052fce8:	51                                              	push   ecx
1052fce9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052fcec:	8d 44 24 18                                     	lea    eax,[esp+0x18]
1052fcf0:	50                                              	push   eax
1052fcf1:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
1052fcf4:	e8 27 de 02 00                                  	call   0x1055db20
1052fcf9:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
1052fcfc:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
1052fcff:	50                                              	push   eax
1052fd00:	51                                              	push   ecx
1052fd01:	52                                              	push   edx
1052fd02:	8b cf                                           	mov    ecx,edi
1052fd04:	e8 67 b7 23 00                                  	call   0x1076b470
1052fd09:	5f                                              	pop    edi
1052fd0a:	5e                                              	pop    esi
1052fd0b:	8b e5                                           	mov    esp,ebp
1052fd0d:	5d                                              	pop    ebp
1052fd0e:	c3                                              	ret
1052fd0f:	85 f6                                           	test   esi,esi
1052fd11:	74 1d                                           	je     0x1052fd30
1052fd13:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1052fd17:	50                                              	push   eax
1052fd18:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
1052fd1b:	e8 00 de 02 00                                  	call   0x1055db20
1052fd20:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
1052fd23:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
1052fd26:	50                                              	push   eax
1052fd27:	51                                              	push   ecx
1052fd28:	52                                              	push   edx
1052fd29:	8b ce                                           	mov    ecx,esi
1052fd2b:	e8 30 cc 23 00                                  	call   0x1076c960
1052fd30:	5f                                              	pop    edi
1052fd31:	5e                                              	pop    esi
1052fd32:	8b e5                                           	mov    esp,ebp
1052fd34:	5d                                              	pop    ebp
1052fd35:	c3                                              	ret
1052fd36:	cc                                              	int3
1052fd37:	cc                                              	int3
1052fd38:	cc                                              	int3
1052fd39:	cc                                              	int3
1052fd3a:	cc                                              	int3
1052fd3b:	cc                                              	int3
1052fd3c:	cc                                              	int3
1052fd3d:	cc                                              	int3
1052fd3e:	cc                                              	int3
1052fd3f:	cc                                              	int3
