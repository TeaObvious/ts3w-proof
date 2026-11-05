# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788b90 (ScriptCore.World::World_DeleteHouseboatLotImpl)
Paired Ghidra pseudocode: 00788B90_ScriptCore_World_World_DeleteHouseboatLotImpl.c
Window: [0x00788b90, 0x00788c10) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788c10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788b90: 51 56 57 8b 3d c4 db 1e 01 85 ff 74 66 8b 44 24
00788ba0: 14 8b 4c 24 10 6a 00 50 51 8b cf e8 60 9c 4d 00
00788bb0: 8b f0 85 f6 74 4d 80 be bc 04 00 00 00 74 44 56
00788bc0: 8d 4c 24 0c e8 77 05 01 00 6a 01 56 e8 9f 90 37
00788bd0: 00 83 c4 08 84 c0 75 12 8d 4c 24 08 e8 1f e8 2b
00788be0: 00 8d 4c 24 08 e8 e6 e9 2b 00 56 57 e8 8f a5 37
00788bf0: 00 83 c4 08 8d 4c 24 08 e8 c3 b4 d2 ff 5f b0 01
00788c00: 5e 59 c3 5f 32 c0 5e 59 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788b90 <.text+0x387b90>:
  788b90:	51                                              	push   ecx
  788b91:	56                                              	push   esi
  788b92:	57                                              	push   edi
  788b93:	8b 3d c4 db 1e 01                               	mov    edi,DWORD PTR ds:0x11edbc4
  788b99:	85 ff                                           	test   edi,edi
  788b9b:	74 66                                           	je     0x788c03
  788b9d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  788ba1:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  788ba5:	6a 00                                           	push   0x0
  788ba7:	50                                              	push   eax
  788ba8:	51                                              	push   ecx
  788ba9:	8b cf                                           	mov    ecx,edi
  788bab:	e8 60 9c 4d 00                                  	call   0xc62810
  788bb0:	8b f0                                           	mov    esi,eax
  788bb2:	85 f6                                           	test   esi,esi
  788bb4:	74 4d                                           	je     0x788c03
  788bb6:	80 be bc 04 00 00 00                            	cmp    BYTE PTR [esi+0x4bc],0x0
  788bbd:	74 44                                           	je     0x788c03
  788bbf:	56                                              	push   esi
  788bc0:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  788bc4:	e8 77 05 01 00                                  	call   0x799140
  788bc9:	6a 01                                           	push   0x1
  788bcb:	56                                              	push   esi
  788bcc:	e8 9f 90 37 00                                  	call   0xb01c70
  788bd1:	83 c4 08                                        	add    esp,0x8
  788bd4:	84 c0                                           	test   al,al
  788bd6:	75 12                                           	jne    0x788bea
  788bd8:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  788bdc:	e8 1f e8 2b 00                                  	call   0xa47400
  788be1:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  788be5:	e8 e6 e9 2b 00                                  	call   0xa475d0
  788bea:	56                                              	push   esi
  788beb:	57                                              	push   edi
  788bec:	e8 8f a5 37 00                                  	call   0xb03180
  788bf1:	83 c4 08                                        	add    esp,0x8
  788bf4:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  788bf8:	e8 c3 b4 d2 ff                                  	call   0x4b40c0
  788bfd:	5f                                              	pop    edi
  788bfe:	b0 01                                           	mov    al,0x1
  788c00:	5e                                              	pop    esi
  788c01:	59                                              	pop    ecx
  788c02:	c3                                              	ret
  788c03:	5f                                              	pop    edi
  788c04:	32 c0                                           	xor    al,al
  788c06:	5e                                              	pop    esi
  788c07:	59                                              	pop    ecx
  788c08:	c3                                              	ret
  788c09:	cc                                              	int3
  788c0a:	cc                                              	int3
  788c0b:	cc                                              	int3
  788c0c:	cc                                              	int3
  788c0d:	cc                                              	int3
  788c0e:	cc                                              	int3
  788c0f:	cc                                              	int3
