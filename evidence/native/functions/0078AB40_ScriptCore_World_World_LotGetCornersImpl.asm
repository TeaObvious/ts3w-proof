# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078ab40 (ScriptCore.World::World_LotGetCornersImpl)
Paired Ghidra pseudocode: 0078AB40_ScriptCore_World_World_LotGetCornersImpl.c
Window: [0x0078ab40, 0x0078ac90) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078ac90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078ab40: 51 53 8b 1d c4 db 1e 01 85 db 55 56 57 74 17 8b
0078ab50: 44 24 20 8b 4c 24 1c 6a 00 50 51 8b cb e8 ae 7c
0078ab60: 4d 00 8b f8 eb 02 33 ff 8b 74 24 18 0f 57 c0 6a
0078ab70: 2c 8d 6e 04 6a 00 55 f3 0f 11 06 e8 18 47 7f 00
0078ab80: 83 c4 0c 85 ff 0f 84 fd 00 00 00 d9 87 3c 01 00
0078ab90: 00 f3 0f 10 87 34 01 00 00 d9 5e 0c 6a 00 d9 87
0078aba0: 40 01 00 00 6a 00 d9 5e 14 6a 00 d9 87 44 01 00
0078abb0: 00 6a 00 d9 5e 18 6a 00 d9 87 48 01 00 00 f3 0f
0078abc0: 11 44 24 24 d9 5e 20 6a 01 d9 87 4c 01 00 00 f3
0078abd0: 0f 11 06 f3 0f 10 87 38 01 00 00 d9 5e 24 d9 87
0078abe0: 50 01 00 00 f3 0f 11 44 24 30 d9 5e 2c 6a 00 d9
0078abf0: 44 24 34 83 ec 08 d9 5c 24 04 8b cb d9 44 24 34
0078ac00: f3 0f 11 46 08 d9 1c 24 e8 83 f4 4d 00 6a 00 d9
0078ac10: 5d 00 d9 46 14 6a 00 6a 00 6a 00 6a 00 6a 01 6a
0078ac20: 00 83 ec 08 d9 5c 24 04 8b cb d9 46 0c d9 1c 24
0078ac30: e8 5b f4 4d 00 6a 00 d9 5e 10 d9 46 20 6a 00 6a
0078ac40: 00 6a 00 6a 00 6a 01 6a 00 83 ec 08 d9 5c 24 04
0078ac50: 8b cb d9 46 18 d9 1c 24 e8 33 f4 4d 00 6a 00 d9
0078ac60: 5e 1c d9 46 2c 6a 00 6a 00 6a 00 6a 00 6a 01 6a
0078ac70: 00 83 ec 08 d9 5c 24 04 8b cb d9 46 24 d9 1c 24
0078ac80: e8 0b f4 4d 00 d9 5e 28 5f 8b c6 5e 5d 5b 59 c3

LINEAR DISASSEMBLY
0078ab40 <.text+0x389b40>:
  78ab40:	51                                              	push   ecx
  78ab41:	53                                              	push   ebx
  78ab42:	8b 1d c4 db 1e 01                               	mov    ebx,DWORD PTR ds:0x11edbc4
  78ab48:	85 db                                           	test   ebx,ebx
  78ab4a:	55                                              	push   ebp
  78ab4b:	56                                              	push   esi
  78ab4c:	57                                              	push   edi
  78ab4d:	74 17                                           	je     0x78ab66
  78ab4f:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  78ab53:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  78ab57:	6a 00                                           	push   0x0
  78ab59:	50                                              	push   eax
  78ab5a:	51                                              	push   ecx
  78ab5b:	8b cb                                           	mov    ecx,ebx
  78ab5d:	e8 ae 7c 4d 00                                  	call   0xc62810
  78ab62:	8b f8                                           	mov    edi,eax
  78ab64:	eb 02                                           	jmp    0x78ab68
  78ab66:	33 ff                                           	xor    edi,edi
  78ab68:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  78ab6c:	0f 57 c0                                        	xorps  xmm0,xmm0
  78ab6f:	6a 2c                                           	push   0x2c
  78ab71:	8d 6e 04                                        	lea    ebp,[esi+0x4]
  78ab74:	6a 00                                           	push   0x0
  78ab76:	55                                              	push   ebp
  78ab77:	f3 0f 11 06                                     	movss  DWORD PTR [esi],xmm0
  78ab7b:	e8 18 47 7f 00                                  	call   0xf7f298
  78ab80:	83 c4 0c                                        	add    esp,0xc
  78ab83:	85 ff                                           	test   edi,edi
  78ab85:	0f 84 fd 00 00 00                               	je     0x78ac88
  78ab8b:	d9 87 3c 01 00 00                               	fld    DWORD PTR [edi+0x13c]
  78ab91:	f3 0f 10 87 34 01 00 00                         	movss  xmm0,DWORD PTR [edi+0x134]
  78ab99:	d9 5e 0c                                        	fstp   DWORD PTR [esi+0xc]
  78ab9c:	6a 00                                           	push   0x0
  78ab9e:	d9 87 40 01 00 00                               	fld    DWORD PTR [edi+0x140]
  78aba4:	6a 00                                           	push   0x0
  78aba6:	d9 5e 14                                        	fstp   DWORD PTR [esi+0x14]
  78aba9:	6a 00                                           	push   0x0
  78abab:	d9 87 44 01 00 00                               	fld    DWORD PTR [edi+0x144]
  78abb1:	6a 00                                           	push   0x0
  78abb3:	d9 5e 18                                        	fstp   DWORD PTR [esi+0x18]
  78abb6:	6a 00                                           	push   0x0
  78abb8:	d9 87 48 01 00 00                               	fld    DWORD PTR [edi+0x148]
  78abbe:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  78abc4:	d9 5e 20                                        	fstp   DWORD PTR [esi+0x20]
  78abc7:	6a 01                                           	push   0x1
  78abc9:	d9 87 4c 01 00 00                               	fld    DWORD PTR [edi+0x14c]
  78abcf:	f3 0f 11 06                                     	movss  DWORD PTR [esi],xmm0
  78abd3:	f3 0f 10 87 38 01 00 00                         	movss  xmm0,DWORD PTR [edi+0x138]
  78abdb:	d9 5e 24                                        	fstp   DWORD PTR [esi+0x24]
  78abde:	d9 87 50 01 00 00                               	fld    DWORD PTR [edi+0x150]
  78abe4:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  78abea:	d9 5e 2c                                        	fstp   DWORD PTR [esi+0x2c]
  78abed:	6a 00                                           	push   0x0
  78abef:	d9 44 24 34                                     	fld    DWORD PTR [esp+0x34]
  78abf3:	83 ec 08                                        	sub    esp,0x8
  78abf6:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78abfa:	8b cb                                           	mov    ecx,ebx
  78abfc:	d9 44 24 34                                     	fld    DWORD PTR [esp+0x34]
  78ac00:	f3 0f 11 46 08                                  	movss  DWORD PTR [esi+0x8],xmm0
  78ac05:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78ac08:	e8 83 f4 4d 00                                  	call   0xc6a090
  78ac0d:	6a 00                                           	push   0x0
  78ac0f:	d9 5d 00                                        	fstp   DWORD PTR [ebp+0x0]
  78ac12:	d9 46 14                                        	fld    DWORD PTR [esi+0x14]
  78ac15:	6a 00                                           	push   0x0
  78ac17:	6a 00                                           	push   0x0
  78ac19:	6a 00                                           	push   0x0
  78ac1b:	6a 00                                           	push   0x0
  78ac1d:	6a 01                                           	push   0x1
  78ac1f:	6a 00                                           	push   0x0
  78ac21:	83 ec 08                                        	sub    esp,0x8
  78ac24:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78ac28:	8b cb                                           	mov    ecx,ebx
  78ac2a:	d9 46 0c                                        	fld    DWORD PTR [esi+0xc]
  78ac2d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78ac30:	e8 5b f4 4d 00                                  	call   0xc6a090
  78ac35:	6a 00                                           	push   0x0
  78ac37:	d9 5e 10                                        	fstp   DWORD PTR [esi+0x10]
  78ac3a:	d9 46 20                                        	fld    DWORD PTR [esi+0x20]
  78ac3d:	6a 00                                           	push   0x0
  78ac3f:	6a 00                                           	push   0x0
  78ac41:	6a 00                                           	push   0x0
  78ac43:	6a 00                                           	push   0x0
  78ac45:	6a 01                                           	push   0x1
  78ac47:	6a 00                                           	push   0x0
  78ac49:	83 ec 08                                        	sub    esp,0x8
  78ac4c:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78ac50:	8b cb                                           	mov    ecx,ebx
  78ac52:	d9 46 18                                        	fld    DWORD PTR [esi+0x18]
  78ac55:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78ac58:	e8 33 f4 4d 00                                  	call   0xc6a090
  78ac5d:	6a 00                                           	push   0x0
  78ac5f:	d9 5e 1c                                        	fstp   DWORD PTR [esi+0x1c]
  78ac62:	d9 46 2c                                        	fld    DWORD PTR [esi+0x2c]
  78ac65:	6a 00                                           	push   0x0
  78ac67:	6a 00                                           	push   0x0
  78ac69:	6a 00                                           	push   0x0
  78ac6b:	6a 00                                           	push   0x0
  78ac6d:	6a 01                                           	push   0x1
  78ac6f:	6a 00                                           	push   0x0
  78ac71:	83 ec 08                                        	sub    esp,0x8
  78ac74:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78ac78:	8b cb                                           	mov    ecx,ebx
  78ac7a:	d9 46 24                                        	fld    DWORD PTR [esi+0x24]
  78ac7d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78ac80:	e8 0b f4 4d 00                                  	call   0xc6a090
  78ac85:	d9 5e 28                                        	fstp   DWORD PTR [esi+0x28]
  78ac88:	5f                                              	pop    edi
  78ac89:	8b c6                                           	mov    eax,esi
  78ac8b:	5e                                              	pop    esi
  78ac8c:	5d                                              	pop    ebp
  78ac8d:	5b                                              	pop    ebx
  78ac8e:	59                                              	pop    ecx
  78ac8f:	c3                                              	ret
