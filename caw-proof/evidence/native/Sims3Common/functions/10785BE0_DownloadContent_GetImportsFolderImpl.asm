# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10785be0 (DownloadContent_GetImportsFolderImpl)
Paired Ghidra pseudocode: 10785BE0_DownloadContent_GetImportsFolderImpl.c
Window: [0x10785be0, 0x10785c70) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10785c70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10785be0: 83 ec 24 56 e8 37 55 dd ff 8b f0 85 f6 74 79 a1
10785bf0: b0 e8 c4 10 3b 05 b4 e8 c4 10 74 6c 6a 01 6a 10
10785c00: 68 b0 e8 c4 10 6a 09 6a 13 8d 4c 24 1c c7 44 24
10785c10: 1c b4 a5 ac 10 66 c7 44 24 24 00 00 66 c7 44 24
10785c20: 26 00 00 e8 68 2f 1a 00 8b 16 8b 52 50 8d 44 24
10785c30: 04 50 8d 4c 24 0c 51 8b ce c7 44 24 0c 00 00 00
10785c40: 00 ff d2 f6 44 24 10 04 8b 74 24 04 c7 44 24 08
10785c50: b4 a5 ac 10 74 0b 6a 00 8d 4c 24 0c e8 2f 2e 1a
10785c60: 00 8b c6 5e 83 c4 24 c3 33 c0 5e 83 c4 24 c3 cc

LINEAR DISASSEMBLY
10785be0 <.text+0x784be0>:
10785be0:	83 ec 24                                        	sub    esp,0x24
10785be3:	56                                              	push   esi
10785be4:	e8 37 55 dd ff                                  	call   0x1055b120
10785be9:	8b f0                                           	mov    esi,eax
10785beb:	85 f6                                           	test   esi,esi
10785bed:	74 79                                           	je     0x10785c68
10785bef:	a1 b0 e8 c4 10                                  	mov    eax,ds:0x10c4e8b0
10785bf4:	3b 05 b4 e8 c4 10                               	cmp    eax,DWORD PTR ds:0x10c4e8b4
10785bfa:	74 6c                                           	je     0x10785c68
10785bfc:	6a 01                                           	push   0x1
10785bfe:	6a 10                                           	push   0x10
10785c00:	68 b0 e8 c4 10                                  	push   0x10c4e8b0
10785c05:	6a 09                                           	push   0x9
10785c07:	6a 13                                           	push   0x13
10785c09:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10785c0d:	c7 44 24 1c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x1c],0x10aca5b4
10785c15:	66 c7 44 24 24 00 00                            	mov    WORD PTR [esp+0x24],0x0
10785c1c:	66 c7 44 24 26 00 00                            	mov    WORD PTR [esp+0x26],0x0
10785c23:	e8 68 2f 1a 00                                  	call   0x10928b90
10785c28:	8b 16                                           	mov    edx,DWORD PTR [esi]
10785c2a:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
10785c2d:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10785c31:	50                                              	push   eax
10785c32:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10785c36:	51                                              	push   ecx
10785c37:	8b ce                                           	mov    ecx,esi
10785c39:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
10785c41:	ff d2                                           	call   edx
10785c43:	f6 44 24 10 04                                  	test   BYTE PTR [esp+0x10],0x4
10785c48:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
10785c4c:	c7 44 24 08 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x8],0x10aca5b4
10785c54:	74 0b                                           	je     0x10785c61
10785c56:	6a 00                                           	push   0x0
10785c58:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10785c5c:	e8 2f 2e 1a 00                                  	call   0x10928a90
10785c61:	8b c6                                           	mov    eax,esi
10785c63:	5e                                              	pop    esi
10785c64:	83 c4 24                                        	add    esp,0x24
10785c67:	c3                                              	ret
10785c68:	33 c0                                           	xor    eax,eax
10785c6a:	5e                                              	pop    esi
10785c6b:	83 c4 24                                        	add    esp,0x24
10785c6e:	c3                                              	ret
10785c6f:	cc                                              	int3
