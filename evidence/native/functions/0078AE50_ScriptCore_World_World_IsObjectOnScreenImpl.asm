# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078ae50 (ScriptCore.World::World_IsObjectOnScreenImpl)
Paired Ghidra pseudocode: 0078AE50_ScriptCore_World_World_IsObjectOnScreenImpl.c
Window: [0x0078ae50, 0x0078afa0) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078afa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078ae50: 55 8b ec 83 e4 f0 83 ec 44 53 56 57 e8 0f c7 1a
0078ae60: 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 10 d1 1a 00
0078ae70: 8b f0 85 f6 89 74 24 18 0f 84 15 01 00 00 8d 7e
0078ae80: 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 58 a1
0078ae90: 1e 01 52 8b ce e8 c6 93 1a 00 8b d8 85 db 75 2a
0078aea0: 8b c7 83 c9 ff f0 0f c1 08 49 0f 85 e3 00 00 00
0078aeb0: ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b ce ff
0078aec0: d2 32 c0 5f 5e 5b 8b e5 5d c3 e8 b1 f1 1d 00 85
0078aed0: c0 89 44 24 1c 74 c9 0f 57 c0 a1 c4 9f 1e 01 f3
0078aee0: 0f 11 44 24 2c f3 0f 11 44 24 28 f3 0f 11 44 24
0078aef0: 24 f3 0f 11 44 24 20 0f 28 44 24 20 0f 29 44 24
0078af00: 30 f3 0f 10 05 f8 98 f9 00 50 8b ce f3 0f 11 44
0078af10: 24 18 e8 49 93 1a 00 85 c0 74 18 8b c8 e8 5e d9
0078af20: 1b 00 8d 4c 24 14 51 8d 54 24 34 52 8b c8 e8 6d
0078af30: 10 f0 ff 8d 44 24 20 50 8b cb e8 f1 ca 1c 00 0f
0078af40: 28 00 0f 28 4c 24 30 0f 58 c1 0f 29 44 24 20 0f
0078af50: 29 44 24 30 f3 0f 10 44 24 14 8d 4c 24 40 f3 0f
0078af60: 11 44 24 2c 0f 28 44 24 20 51 8b 4c 24 20 0f 29
0078af70: 44 24 44 e8 a8 25 f0 ff 84 c0 8d 4c 24 18 74 0e
0078af80: e8 5b b3 fb ff b0 01 5f 5e 5b 8b e5 5d c3 e8 4d
0078af90: b3 fb ff 5f 5e 32 c0 5b 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
0078ae50 <.text+0x389e50>:
  78ae50:	55                                              	push   ebp
  78ae51:	8b ec                                           	mov    ebp,esp
  78ae53:	83 e4 f0                                        	and    esp,0xfffffff0
  78ae56:	83 ec 44                                        	sub    esp,0x44
  78ae59:	53                                              	push   ebx
  78ae5a:	56                                              	push   esi
  78ae5b:	57                                              	push   edi
  78ae5c:	e8 0f c7 1a 00                                  	call   0x937570
  78ae61:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  78ae64:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  78ae67:	51                                              	push   ecx
  78ae68:	52                                              	push   edx
  78ae69:	8b c8                                           	mov    ecx,eax
  78ae6b:	e8 10 d1 1a 00                                  	call   0x937f80
  78ae70:	8b f0                                           	mov    esi,eax
  78ae72:	85 f6                                           	test   esi,esi
  78ae74:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  78ae78:	0f 84 15 01 00 00                               	je     0x78af93
  78ae7e:	8d 7e 04                                        	lea    edi,[esi+0x4]
  78ae81:	8b c7                                           	mov    eax,edi
  78ae83:	b9 01 00 00 00                                  	mov    ecx,0x1
  78ae88:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78ae8c:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  78ae92:	52                                              	push   edx
  78ae93:	8b ce                                           	mov    ecx,esi
  78ae95:	e8 c6 93 1a 00                                  	call   0x934260
  78ae9a:	8b d8                                           	mov    ebx,eax
  78ae9c:	85 db                                           	test   ebx,ebx
  78ae9e:	75 2a                                           	jne    0x78aeca
  78aea0:	8b c7                                           	mov    eax,edi
  78aea2:	83 c9 ff                                        	or     ecx,0xffffffff
  78aea5:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78aea9:	49                                              	dec    ecx
  78aeaa:	0f 85 e3 00 00 00                               	jne    0x78af93
  78aeb0:	ba 01 00 00 00                                  	mov    edx,0x1
  78aeb5:	87 17                                           	xchg   DWORD PTR [edi],edx
  78aeb7:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78aeb9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78aebb:	6a 01                                           	push   0x1
  78aebd:	8b ce                                           	mov    ecx,esi
  78aebf:	ff d2                                           	call   edx
  78aec1:	32 c0                                           	xor    al,al
  78aec3:	5f                                              	pop    edi
  78aec4:	5e                                              	pop    esi
  78aec5:	5b                                              	pop    ebx
  78aec6:	8b e5                                           	mov    esp,ebp
  78aec8:	5d                                              	pop    ebp
  78aec9:	c3                                              	ret
  78aeca:	e8 b1 f1 1d 00                                  	call   0x96a080
  78aecf:	85 c0                                           	test   eax,eax
  78aed1:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  78aed5:	74 c9                                           	je     0x78aea0
  78aed7:	0f 57 c0                                        	xorps  xmm0,xmm0
  78aeda:	a1 c4 9f 1e 01                                  	mov    eax,ds:0x11e9fc4
  78aedf:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  78aee5:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
  78aeeb:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  78aef1:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  78aef7:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  78aefc:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  78af01:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  78af09:	50                                              	push   eax
  78af0a:	8b ce                                           	mov    ecx,esi
  78af0c:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  78af12:	e8 49 93 1a 00                                  	call   0x934260
  78af17:	85 c0                                           	test   eax,eax
  78af19:	74 18                                           	je     0x78af33
  78af1b:	8b c8                                           	mov    ecx,eax
  78af1d:	e8 5e d9 1b 00                                  	call   0x948880
  78af22:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  78af26:	51                                              	push   ecx
  78af27:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  78af2b:	52                                              	push   edx
  78af2c:	8b c8                                           	mov    ecx,eax
  78af2e:	e8 6d 10 f0 ff                                  	call   0x68bfa0
  78af33:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  78af37:	50                                              	push   eax
  78af38:	8b cb                                           	mov    ecx,ebx
  78af3a:	e8 f1 ca 1c 00                                  	call   0x957a30
  78af3f:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  78af42:	0f 28 4c 24 30                                  	movaps xmm1,XMMWORD PTR [esp+0x30]
  78af47:	0f 58 c1                                        	addps  xmm0,xmm1
  78af4a:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  78af4f:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  78af54:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
  78af5a:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  78af5e:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  78af64:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  78af69:	51                                              	push   ecx
  78af6a:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  78af6e:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
  78af73:	e8 a8 25 f0 ff                                  	call   0x68d520
  78af78:	84 c0                                           	test   al,al
  78af7a:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  78af7e:	74 0e                                           	je     0x78af8e
  78af80:	e8 5b b3 fb ff                                  	call   0x7462e0
  78af85:	b0 01                                           	mov    al,0x1
  78af87:	5f                                              	pop    edi
  78af88:	5e                                              	pop    esi
  78af89:	5b                                              	pop    ebx
  78af8a:	8b e5                                           	mov    esp,ebp
  78af8c:	5d                                              	pop    ebp
  78af8d:	c3                                              	ret
  78af8e:	e8 4d b3 fb ff                                  	call   0x7462e0
  78af93:	5f                                              	pop    edi
  78af94:	5e                                              	pop    esi
  78af95:	32 c0                                           	xor    al,al
  78af97:	5b                                              	pop    ebx
  78af98:	8b e5                                           	mov    esp,ebp
  78af9a:	5d                                              	pop    ebp
  78af9b:	c3                                              	ret
  78af9c:	cc                                              	int3
  78af9d:	cc                                              	int3
  78af9e:	cc                                              	int3
  78af9f:	cc                                              	int3
