# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785ef0 (ScriptCore.World::World_WallExistsBetweenPointsImpl)
Paired Ghidra pseudocode: 00785EF0_ScriptCore_World_World_WallExistsBetweenPointsImpl.c
Window: [0x00785ef0, 0x00785fd0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785fd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785ef0: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 83 ec 2c 85
00785f00: c9 56 0f 84 b8 00 00 00 8b 45 0c 8b 55 08 6a 00
00785f10: 50 52 e8 f9 c8 4d 00 8b f0 85 f6 0f 84 9f 00 00
00785f20: 00 f3 0f 10 05 18 b2 fa 00 8d 44 24 14 50 8d 4c
00785f30: 24 24 51 8d 4d 10 f3 0f 11 44 24 1c f3 0f 11 44
00785f40: 24 20 c7 44 24 24 00 00 00 00 e8 01 61 fe ff 50
00785f50: 56 e8 0a 69 35 00 f3 0f 10 05 18 b2 fa 00 83 c4
00785f60: 0c 8d 54 24 08 52 8d 44 24 24 50 8d 4d 1c f3 0f
00785f70: 11 44 24 10 f3 0f 11 44 24 14 c7 44 24 18 00 00
00785f80: 00 00 e8 c9 60 fe ff 50 56 e8 d2 68 35 00 8b 8e
00785f90: 98 02 00 00 8b 55 28 8b 4c 91 54 83 c4 0c 85 c9
00785fa0: 74 1e 8b 44 24 1c 6a 00 8d 54 24 0c 89 44 24 14
00785fb0: 52 8d 44 24 1c 50 e8 a5 ac 4b 00 5e 8b e5 5d c3
00785fc0: 32 c0 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785ef0 <.text+0x384ef0>:
  785ef0:	55                                              	push   ebp
  785ef1:	8b ec                                           	mov    ebp,esp
  785ef3:	83 e4 f0                                        	and    esp,0xfffffff0
  785ef6:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  785efc:	83 ec 2c                                        	sub    esp,0x2c
  785eff:	85 c9                                           	test   ecx,ecx
  785f01:	56                                              	push   esi
  785f02:	0f 84 b8 00 00 00                               	je     0x785fc0
  785f08:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  785f0b:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  785f0e:	6a 00                                           	push   0x0
  785f10:	50                                              	push   eax
  785f11:	52                                              	push   edx
  785f12:	e8 f9 c8 4d 00                                  	call   0xc62810
  785f17:	8b f0                                           	mov    esi,eax
  785f19:	85 f6                                           	test   esi,esi
  785f1b:	0f 84 9f 00 00 00                               	je     0x785fc0
  785f21:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  785f29:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  785f2d:	50                                              	push   eax
  785f2e:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  785f32:	51                                              	push   ecx
  785f33:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
  785f36:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  785f3c:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  785f42:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
  785f4a:	e8 01 61 fe ff                                  	call   0x76c050
  785f4f:	50                                              	push   eax
  785f50:	56                                              	push   esi
  785f51:	e8 0a 69 35 00                                  	call   0xadc860
  785f56:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  785f5e:	83 c4 0c                                        	add    esp,0xc
  785f61:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  785f65:	52                                              	push   edx
  785f66:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  785f6a:	50                                              	push   eax
  785f6b:	8d 4d 1c                                        	lea    ecx,[ebp+0x1c]
  785f6e:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  785f74:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  785f7a:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  785f82:	e8 c9 60 fe ff                                  	call   0x76c050
  785f87:	50                                              	push   eax
  785f88:	56                                              	push   esi
  785f89:	e8 d2 68 35 00                                  	call   0xadc860
  785f8e:	8b 8e 98 02 00 00                               	mov    ecx,DWORD PTR [esi+0x298]
  785f94:	8b 55 28                                        	mov    edx,DWORD PTR [ebp+0x28]
  785f97:	8b 4c 91 54                                     	mov    ecx,DWORD PTR [ecx+edx*4+0x54]
  785f9b:	83 c4 0c                                        	add    esp,0xc
  785f9e:	85 c9                                           	test   ecx,ecx
  785fa0:	74 1e                                           	je     0x785fc0
  785fa2:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  785fa6:	6a 00                                           	push   0x0
  785fa8:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  785fac:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  785fb0:	52                                              	push   edx
  785fb1:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  785fb5:	50                                              	push   eax
  785fb6:	e8 a5 ac 4b 00                                  	call   0xc40c60
  785fbb:	5e                                              	pop    esi
  785fbc:	8b e5                                           	mov    esp,ebp
  785fbe:	5d                                              	pop    ebp
  785fbf:	c3                                              	ret
  785fc0:	32 c0                                           	xor    al,al
  785fc2:	5e                                              	pop    esi
  785fc3:	8b e5                                           	mov    esp,ebp
  785fc5:	5d                                              	pop    ebp
  785fc6:	c3                                              	ret
  785fc7:	cc                                              	int3
  785fc8:	cc                                              	int3
  785fc9:	cc                                              	int3
  785fca:	cc                                              	int3
  785fcb:	cc                                              	int3
  785fcc:	cc                                              	int3
  785fcd:	cc                                              	int3
  785fce:	cc                                              	int3
  785fcf:	cc                                              	int3
