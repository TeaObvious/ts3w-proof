# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056ae80 (ThumbnailManager_SaveSimFaceThumbnail)
Paired Ghidra pseudocode: 1056AE80_ThumbnailManager_SaveSimFaceThumbnail.c
Window: [0x1056ae80, 0x1056afd0) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056afd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056ae80: 83 ec 40 53 8b 1d 50 11 c7 10 56 57 e8 8f 02 ff
1056ae90: ff 33 ff 3b df 8b f0 0f 84 23 01 00 00 3b f7 0f
1056aea0: 84 1b 01 00 00 8b 4c 24 68 8b 06 8b 50 58 51 8b
1056aeb0: ce ff d2 50 8d 4c 24 30 89 7c 24 30 89 7c 24 34
1056aec0: 89 7c 24 38 c7 44 24 3c fc 0a b2 10 e8 4f f7 af
1056aed0: ff 8b 4c 24 6c 8b 06 8b 50 58 51 8b ce ff d2 50
1056aee0: 8d 4c 24 20 89 7c 24 20 89 7c 24 24 89 7c 24 28
1056aef0: c7 44 24 2c c0 0a b2 10 e8 23 f7 af ff 8b 4c 24
1056af00: 70 8b 06 8b 50 58 51 8b ce ff d2 50 8d 4c 24 10
1056af10: 89 7c 24 10 89 7c 24 14 89 7c 24 18 c7 44 24 1c
1056af20: 80 0a b2 10 e8 f7 f6 af ff 8d 44 24 0c 50 8b 44
1056af30: 24 68 8d 4c 24 20 51 8b 4c 24 68 8d 54 24 34 52
1056af40: 50 51 8d 54 24 50 52 8d 4c 24 68 e8 60 2c ff ff
1056af50: 50 8b cb e8 48 c8 19 00 8b 4c 24 14 8a d8 8b 44
1056af60: 24 0c 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c7 74 09
1056af70: 50 e8 1a df 3a 00 83 c4 04 8b 54 24 24 8b 44 24
1056af80: 1c 2b d0 83 e2 fe 83 fa 02 7e 0d 3b c7 74 09 50
1056af90: e8 fb de 3a 00 83 c4 04 8b 4c 24 34 8b 44 24 2c
1056afa0: 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c7 74 09 50 e8
1056afb0: dc de 3a 00 83 c4 04 5f 5e 8a c3 5b 83 c4 40 c3
1056afc0: 5f 5e 32 c0 5b 83 c4 40 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056ae80 <.text+0x569e80>:
1056ae80:	83 ec 40                                        	sub    esp,0x40
1056ae83:	53                                              	push   ebx
1056ae84:	8b 1d 50 11 c7 10                               	mov    ebx,DWORD PTR ds:0x10c71150
1056ae8a:	56                                              	push   esi
1056ae8b:	57                                              	push   edi
1056ae8c:	e8 8f 02 ff ff                                  	call   0x1055b120
1056ae91:	33 ff                                           	xor    edi,edi
1056ae93:	3b df                                           	cmp    ebx,edi
1056ae95:	8b f0                                           	mov    esi,eax
1056ae97:	0f 84 23 01 00 00                               	je     0x1056afc0
1056ae9d:	3b f7                                           	cmp    esi,edi
1056ae9f:	0f 84 1b 01 00 00                               	je     0x1056afc0
1056aea5:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
1056aea9:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056aeab:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
1056aeae:	51                                              	push   ecx
1056aeaf:	8b ce                                           	mov    ecx,esi
1056aeb1:	ff d2                                           	call   edx
1056aeb3:	50                                              	push   eax
1056aeb4:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
1056aeb8:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
1056aebc:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
1056aec0:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
1056aec4:	c7 44 24 3c fc 0a b2 10                         	mov    DWORD PTR [esp+0x3c],0x10b20afc
1056aecc:	e8 4f f7 af ff                                  	call   0x1006a620
1056aed1:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
1056aed5:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056aed7:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
1056aeda:	51                                              	push   ecx
1056aedb:	8b ce                                           	mov    ecx,esi
1056aedd:	ff d2                                           	call   edx
1056aedf:	50                                              	push   eax
1056aee0:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1056aee4:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1056aee8:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
1056aeec:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
1056aef0:	c7 44 24 2c c0 0a b2 10                         	mov    DWORD PTR [esp+0x2c],0x10b20ac0
1056aef8:	e8 23 f7 af ff                                  	call   0x1006a620
1056aefd:	8b 4c 24 70                                     	mov    ecx,DWORD PTR [esp+0x70]
1056af01:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056af03:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
1056af06:	51                                              	push   ecx
1056af07:	8b ce                                           	mov    ecx,esi
1056af09:	ff d2                                           	call   edx
1056af0b:	50                                              	push   eax
1056af0c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1056af10:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
1056af14:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1056af18:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
1056af1c:	c7 44 24 1c 80 0a b2 10                         	mov    DWORD PTR [esp+0x1c],0x10b20a80
1056af24:	e8 f7 f6 af ff                                  	call   0x1006a620
1056af29:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
1056af2d:	50                                              	push   eax
1056af2e:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
1056af32:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1056af36:	51                                              	push   ecx
1056af37:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
1056af3b:	8d 54 24 34                                     	lea    edx,[esp+0x34]
1056af3f:	52                                              	push   edx
1056af40:	50                                              	push   eax
1056af41:	51                                              	push   ecx
1056af42:	8d 54 24 50                                     	lea    edx,[esp+0x50]
1056af46:	52                                              	push   edx
1056af47:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
1056af4b:	e8 60 2c ff ff                                  	call   0x1055dbb0
1056af50:	50                                              	push   eax
1056af51:	8b cb                                           	mov    ecx,ebx
1056af53:	e8 48 c8 19 00                                  	call   0x107077a0
1056af58:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1056af5c:	8a d8                                           	mov    bl,al
1056af5e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1056af62:	2b c8                                           	sub    ecx,eax
1056af64:	83 e1 fe                                        	and    ecx,0xfffffffe
1056af67:	83 f9 02                                        	cmp    ecx,0x2
1056af6a:	7e 0d                                           	jle    0x1056af79
1056af6c:	3b c7                                           	cmp    eax,edi
1056af6e:	74 09                                           	je     0x1056af79
1056af70:	50                                              	push   eax
1056af71:	e8 1a df 3a 00                                  	call   0x10918e90
1056af76:	83 c4 04                                        	add    esp,0x4
1056af79:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1056af7d:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1056af81:	2b d0                                           	sub    edx,eax
1056af83:	83 e2 fe                                        	and    edx,0xfffffffe
1056af86:	83 fa 02                                        	cmp    edx,0x2
1056af89:	7e 0d                                           	jle    0x1056af98
1056af8b:	3b c7                                           	cmp    eax,edi
1056af8d:	74 09                                           	je     0x1056af98
1056af8f:	50                                              	push   eax
1056af90:	e8 fb de 3a 00                                  	call   0x10918e90
1056af95:	83 c4 04                                        	add    esp,0x4
1056af98:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
1056af9c:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1056afa0:	2b c8                                           	sub    ecx,eax
1056afa2:	83 e1 fe                                        	and    ecx,0xfffffffe
1056afa5:	83 f9 02                                        	cmp    ecx,0x2
1056afa8:	7e 0d                                           	jle    0x1056afb7
1056afaa:	3b c7                                           	cmp    eax,edi
1056afac:	74 09                                           	je     0x1056afb7
1056afae:	50                                              	push   eax
1056afaf:	e8 dc de 3a 00                                  	call   0x10918e90
1056afb4:	83 c4 04                                        	add    esp,0x4
1056afb7:	5f                                              	pop    edi
1056afb8:	5e                                              	pop    esi
1056afb9:	8a c3                                           	mov    al,bl
1056afbb:	5b                                              	pop    ebx
1056afbc:	83 c4 40                                        	add    esp,0x40
1056afbf:	c3                                              	ret
1056afc0:	5f                                              	pop    edi
1056afc1:	5e                                              	pop    esi
1056afc2:	32 c0                                           	xor    al,al
1056afc4:	5b                                              	pop    ebx
1056afc5:	83 c4 40                                        	add    esp,0x40
1056afc8:	c3                                              	ret
1056afc9:	cc                                              	int3
1056afca:	cc                                              	int3
1056afcb:	cc                                              	int3
1056afcc:	cc                                              	int3
1056afcd:	cc                                              	int3
1056afce:	cc                                              	int3
1056afcf:	cc                                              	int3
