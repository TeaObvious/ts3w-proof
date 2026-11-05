# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078ef00 (ScriptCore.World::World_GetObjectsImpl)
Paired Ghidra pseudocode: 0078EF00_ScriptCore_World_World_GetObjectsImpl.c
Window: [0x0078ef00, 0x0078f020) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078f020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078ef00: 83 ec 20 53 e8 87 a4 fd ff 8b 0d c4 db 1e 01 85
0078ef10: c9 8b d8 0f 84 f4 00 00 00 8b 44 24 2c 8b 54 24
0078ef20: 28 6a 00 50 52 e8 e6 38 4d 00 85 c0 0f 84 db 00
0078ef30: 00 00 8a 4c 24 30 8a 54 24 34 56 57 6a 05 6a 00
0078ef40: 6a 0f 6a 01 88 4c 24 1c 8a 4c 24 50 6a 00 88 54
0078ef50: 24 21 6a 00 88 4c 24 26 8d 54 24 34 52 8d 4c 24
0078ef60: 28 51 8b c8 c7 44 24 3c 00 00 00 00 c7 44 24 40
0078ef70: 00 00 00 00 c7 44 24 44 00 00 00 00 c7 44 24 48
0078ef80: 24 1a 01 01 e8 f7 84 33 00 8b 74 24 20 2b 74 24
0078ef90: 1c 8b 13 8b 92 88 00 00 00 c1 fe 02 56 8d 44 24
0078efa0: 14 50 8b cb ff d2 33 ff 85 f6 7e 43 8d 64 24 00
0078efb0: 8b 44 24 1c 8b 0c b8 85 c9 74 08 8b 41 08 8b 49
0078efc0: 0c eb 04 33 c0 33 c9 8b 13 8b 92 a0 00 00 00 6a
0078efd0: 01 89 44 24 18 57 89 4c 24 20 8d 44 24 1c 50 8d
0078efe0: 4c 24 1c 51 8b cb ff d2 83 c7 01 3b fe 7c c1 8b
0078eff0: 44 24 1c 85 c0 8b 74 24 10 74 09 50 e8 df 54 d5
0078f000: ff 83 c4 04 5f 8b c6 5e 5b 83 c4 20 c3 33 c0 5b
0078f010: 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078ef00 <.text+0x38df00>:
  78ef00:	83 ec 20                                        	sub    esp,0x20
  78ef03:	53                                              	push   ebx
  78ef04:	e8 87 a4 fd ff                                  	call   0x769390
  78ef09:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78ef0f:	85 c9                                           	test   ecx,ecx
  78ef11:	8b d8                                           	mov    ebx,eax
  78ef13:	0f 84 f4 00 00 00                               	je     0x78f00d
  78ef19:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  78ef1d:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  78ef21:	6a 00                                           	push   0x0
  78ef23:	50                                              	push   eax
  78ef24:	52                                              	push   edx
  78ef25:	e8 e6 38 4d 00                                  	call   0xc62810
  78ef2a:	85 c0                                           	test   eax,eax
  78ef2c:	0f 84 db 00 00 00                               	je     0x78f00d
  78ef32:	8a 4c 24 30                                     	mov    cl,BYTE PTR [esp+0x30]
  78ef36:	8a 54 24 34                                     	mov    dl,BYTE PTR [esp+0x34]
  78ef3a:	56                                              	push   esi
  78ef3b:	57                                              	push   edi
  78ef3c:	6a 05                                           	push   0x5
  78ef3e:	6a 00                                           	push   0x0
  78ef40:	6a 0f                                           	push   0xf
  78ef42:	6a 01                                           	push   0x1
  78ef44:	88 4c 24 1c                                     	mov    BYTE PTR [esp+0x1c],cl
  78ef48:	8a 4c 24 50                                     	mov    cl,BYTE PTR [esp+0x50]
  78ef4c:	6a 00                                           	push   0x0
  78ef4e:	88 54 24 21                                     	mov    BYTE PTR [esp+0x21],dl
  78ef52:	6a 00                                           	push   0x0
  78ef54:	88 4c 24 26                                     	mov    BYTE PTR [esp+0x26],cl
  78ef58:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  78ef5c:	52                                              	push   edx
  78ef5d:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  78ef61:	51                                              	push   ecx
  78ef62:	8b c8                                           	mov    ecx,eax
  78ef64:	c7 44 24 3c 00 00 00 00                         	mov    DWORD PTR [esp+0x3c],0x0
  78ef6c:	c7 44 24 40 00 00 00 00                         	mov    DWORD PTR [esp+0x40],0x0
  78ef74:	c7 44 24 44 00 00 00 00                         	mov    DWORD PTR [esp+0x44],0x0
  78ef7c:	c7 44 24 48 24 1a 01 01                         	mov    DWORD PTR [esp+0x48],0x1011a24
  78ef84:	e8 f7 84 33 00                                  	call   0xac7480
  78ef89:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
  78ef8d:	2b 74 24 1c                                     	sub    esi,DWORD PTR [esp+0x1c]
  78ef91:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  78ef93:	8b 92 88 00 00 00                               	mov    edx,DWORD PTR [edx+0x88]
  78ef99:	c1 fe 02                                        	sar    esi,0x2
  78ef9c:	56                                              	push   esi
  78ef9d:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  78efa1:	50                                              	push   eax
  78efa2:	8b cb                                           	mov    ecx,ebx
  78efa4:	ff d2                                           	call   edx
  78efa6:	33 ff                                           	xor    edi,edi
  78efa8:	85 f6                                           	test   esi,esi
  78efaa:	7e 43                                           	jle    0x78efef
  78efac:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  78efb0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  78efb4:	8b 0c b8                                        	mov    ecx,DWORD PTR [eax+edi*4]
  78efb7:	85 c9                                           	test   ecx,ecx
  78efb9:	74 08                                           	je     0x78efc3
  78efbb:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  78efbe:	8b 49 0c                                        	mov    ecx,DWORD PTR [ecx+0xc]
  78efc1:	eb 04                                           	jmp    0x78efc7
  78efc3:	33 c0                                           	xor    eax,eax
  78efc5:	33 c9                                           	xor    ecx,ecx
  78efc7:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  78efc9:	8b 92 a0 00 00 00                               	mov    edx,DWORD PTR [edx+0xa0]
  78efcf:	6a 01                                           	push   0x1
  78efd1:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  78efd5:	57                                              	push   edi
  78efd6:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  78efda:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  78efde:	50                                              	push   eax
  78efdf:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  78efe3:	51                                              	push   ecx
  78efe4:	8b cb                                           	mov    ecx,ebx
  78efe6:	ff d2                                           	call   edx
  78efe8:	83 c7 01                                        	add    edi,0x1
  78efeb:	3b fe                                           	cmp    edi,esi
  78efed:	7c c1                                           	jl     0x78efb0
  78efef:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  78eff3:	85 c0                                           	test   eax,eax
  78eff5:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  78eff9:	74 09                                           	je     0x78f004
  78effb:	50                                              	push   eax
  78effc:	e8 df 54 d5 ff                                  	call   0x4e44e0
  78f001:	83 c4 04                                        	add    esp,0x4
  78f004:	5f                                              	pop    edi
  78f005:	8b c6                                           	mov    eax,esi
  78f007:	5e                                              	pop    esi
  78f008:	5b                                              	pop    ebx
  78f009:	83 c4 20                                        	add    esp,0x20
  78f00c:	c3                                              	ret
  78f00d:	33 c0                                           	xor    eax,eax
  78f00f:	5b                                              	pop    ebx
  78f010:	83 c4 20                                        	add    esp,0x20
  78f013:	c3                                              	ret
  78f014:	cc                                              	int3
  78f015:	cc                                              	int3
  78f016:	cc                                              	int3
  78f017:	cc                                              	int3
  78f018:	cc                                              	int3
  78f019:	cc                                              	int3
  78f01a:	cc                                              	int3
  78f01b:	cc                                              	int3
  78f01c:	cc                                              	int3
  78f01d:	cc                                              	int3
  78f01e:	cc                                              	int3
  78f01f:	cc                                              	int3
