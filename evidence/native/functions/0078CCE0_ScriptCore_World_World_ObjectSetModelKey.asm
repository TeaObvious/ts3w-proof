# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078cce0 (ScriptCore.World::World_ObjectSetModelKey)
Paired Ghidra pseudocode: 0078CCE0_ScriptCore_World_World_ObjectSetModelKey.c
Window: [0x0078cce0, 0x0078cdb0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078cdb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078cce0: 83 ec 20 57 e8 a7 c6 fd ff 8b 44 24 38 8b 4c 24
0078ccf0: 3c 8b 54 24 30 89 44 24 04 8b 44 24 34 89 4c 24
0078cd00: 08 89 54 24 0c 89 44 24 10 e8 62 a8 1a 00 33 ff
0078cd10: 3b c7 0f 84 92 00 00 00 8b 4c 24 2c 8b 54 24 28
0078cd20: 51 52 8b c8 e8 57 b2 1a 00 3b c7 74 7d 8b 0d c4
0078cd30: 9f 1e 01 56 51 8b c8 e8 24 75 1a 00 8b f0 3b f7
0078cd40: 74 67 8b ce e8 a7 88 db ff 8b 10 3b 54 24 08 75
0078cd50: 1b 8b 48 08 3b 4c 24 10 75 12 8b 50 0c 3b 54 24
0078cd60: 14 75 09 8b 40 04 3b 44 24 0c 74 3d 8d 4c 24 34
0078cd70: 51 8d 54 24 1c 52 8b ce 89 7c 24 3c 89 7c 24 40
0078cd80: 89 7c 24 44 89 7c 24 48 89 7c 24 20 89 7c 24 24
0078cd90: 89 7c 24 28 89 7c 24 2c e8 b3 e3 1b 00 8d 44 24
0078cda0: 08 50 8b ce e8 27 ca 1b 00 5e 5f 83 c4 20 c3 cc

LINEAR DISASSEMBLY
0078cce0 <.text+0x38bce0>:
  78cce0:	83 ec 20                                        	sub    esp,0x20
  78cce3:	57                                              	push   edi
  78cce4:	e8 a7 c6 fd ff                                  	call   0x769390
  78cce9:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  78cced:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  78ccf1:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  78ccf5:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  78ccf9:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  78ccfd:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  78cd01:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  78cd05:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  78cd09:	e8 62 a8 1a 00                                  	call   0x937570
  78cd0e:	33 ff                                           	xor    edi,edi
  78cd10:	3b c7                                           	cmp    eax,edi
  78cd12:	0f 84 92 00 00 00                               	je     0x78cdaa
  78cd18:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  78cd1c:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  78cd20:	51                                              	push   ecx
  78cd21:	52                                              	push   edx
  78cd22:	8b c8                                           	mov    ecx,eax
  78cd24:	e8 57 b2 1a 00                                  	call   0x937f80
  78cd29:	3b c7                                           	cmp    eax,edi
  78cd2b:	74 7d                                           	je     0x78cdaa
  78cd2d:	8b 0d c4 9f 1e 01                               	mov    ecx,DWORD PTR ds:0x11e9fc4
  78cd33:	56                                              	push   esi
  78cd34:	51                                              	push   ecx
  78cd35:	8b c8                                           	mov    ecx,eax
  78cd37:	e8 24 75 1a 00                                  	call   0x934260
  78cd3c:	8b f0                                           	mov    esi,eax
  78cd3e:	3b f7                                           	cmp    esi,edi
  78cd40:	74 67                                           	je     0x78cda9
  78cd42:	8b ce                                           	mov    ecx,esi
  78cd44:	e8 a7 88 db ff                                  	call   0x5455f0
  78cd49:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78cd4b:	3b 54 24 08                                     	cmp    edx,DWORD PTR [esp+0x8]
  78cd4f:	75 1b                                           	jne    0x78cd6c
  78cd51:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  78cd54:	3b 4c 24 10                                     	cmp    ecx,DWORD PTR [esp+0x10]
  78cd58:	75 12                                           	jne    0x78cd6c
  78cd5a:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  78cd5d:	3b 54 24 14                                     	cmp    edx,DWORD PTR [esp+0x14]
  78cd61:	75 09                                           	jne    0x78cd6c
  78cd63:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
  78cd66:	3b 44 24 0c                                     	cmp    eax,DWORD PTR [esp+0xc]
  78cd6a:	74 3d                                           	je     0x78cda9
  78cd6c:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  78cd70:	51                                              	push   ecx
  78cd71:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  78cd75:	52                                              	push   edx
  78cd76:	8b ce                                           	mov    ecx,esi
  78cd78:	89 7c 24 3c                                     	mov    DWORD PTR [esp+0x3c],edi
  78cd7c:	89 7c 24 40                                     	mov    DWORD PTR [esp+0x40],edi
  78cd80:	89 7c 24 44                                     	mov    DWORD PTR [esp+0x44],edi
  78cd84:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
  78cd88:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  78cd8c:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  78cd90:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
  78cd94:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
  78cd98:	e8 b3 e3 1b 00                                  	call   0x94b150
  78cd9d:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  78cda1:	50                                              	push   eax
  78cda2:	8b ce                                           	mov    ecx,esi
  78cda4:	e8 27 ca 1b 00                                  	call   0x9497d0
  78cda9:	5e                                              	pop    esi
  78cdaa:	5f                                              	pop    edi
  78cdab:	83 c4 20                                        	add    esp,0x20
  78cdae:	c3                                              	ret
  78cdaf:	cc                                              	int3
