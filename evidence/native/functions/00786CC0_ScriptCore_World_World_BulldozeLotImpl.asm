# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786cc0 (ScriptCore.World::World_BulldozeLotImpl)
Paired Ghidra pseudocode: 00786CC0_ScriptCore_World_World_BulldozeLotImpl.c
Window: [0x00786cc0, 0x00786d50) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786d50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786cc0: 51 57 8b 3d c4 db 1e 01 85 ff 74 74 8b 44 24 10
00786cd0: 8b 4c 24 0c 56 6a 00 50 51 8b cf e8 30 bb 4d 00
00786ce0: 8b f0 85 f6 74 59 56 8d 4c 24 0c e8 50 24 01 00
00786cf0: 6a 01 56 e8 78 af 37 00 83 c4 08 84 c0 74 1e 80
00786d00: 7c 24 18 00 74 17 56 57 e8 73 c4 37 00 83 c4 08
00786d10: 8d 4c 24 08 e8 a7 d3 d2 ff 5e 5f 59 c3 8d 4c 24
00786d20: 08 e8 da 06 2c 00 80 7c 24 1c 00 74 09 8d 4c 24
00786d30: 08 e8 9a 08 2c 00 8d 4c 24 08 e8 81 d3 d2 ff 5e
00786d40: 5f 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786cc0 <.text+0x385cc0>:
  786cc0:	51                                              	push   ecx
  786cc1:	57                                              	push   edi
  786cc2:	8b 3d c4 db 1e 01                               	mov    edi,DWORD PTR ds:0x11edbc4
  786cc8:	85 ff                                           	test   edi,edi
  786cca:	74 74                                           	je     0x786d40
  786ccc:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  786cd0:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  786cd4:	56                                              	push   esi
  786cd5:	6a 00                                           	push   0x0
  786cd7:	50                                              	push   eax
  786cd8:	51                                              	push   ecx
  786cd9:	8b cf                                           	mov    ecx,edi
  786cdb:	e8 30 bb 4d 00                                  	call   0xc62810
  786ce0:	8b f0                                           	mov    esi,eax
  786ce2:	85 f6                                           	test   esi,esi
  786ce4:	74 59                                           	je     0x786d3f
  786ce6:	56                                              	push   esi
  786ce7:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  786ceb:	e8 50 24 01 00                                  	call   0x799140
  786cf0:	6a 01                                           	push   0x1
  786cf2:	56                                              	push   esi
  786cf3:	e8 78 af 37 00                                  	call   0xb01c70
  786cf8:	83 c4 08                                        	add    esp,0x8
  786cfb:	84 c0                                           	test   al,al
  786cfd:	74 1e                                           	je     0x786d1d
  786cff:	80 7c 24 18 00                                  	cmp    BYTE PTR [esp+0x18],0x0
  786d04:	74 17                                           	je     0x786d1d
  786d06:	56                                              	push   esi
  786d07:	57                                              	push   edi
  786d08:	e8 73 c4 37 00                                  	call   0xb03180
  786d0d:	83 c4 08                                        	add    esp,0x8
  786d10:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  786d14:	e8 a7 d3 d2 ff                                  	call   0x4b40c0
  786d19:	5e                                              	pop    esi
  786d1a:	5f                                              	pop    edi
  786d1b:	59                                              	pop    ecx
  786d1c:	c3                                              	ret
  786d1d:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  786d21:	e8 da 06 2c 00                                  	call   0xa47400
  786d26:	80 7c 24 1c 00                                  	cmp    BYTE PTR [esp+0x1c],0x0
  786d2b:	74 09                                           	je     0x786d36
  786d2d:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  786d31:	e8 9a 08 2c 00                                  	call   0xa475d0
  786d36:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  786d3a:	e8 81 d3 d2 ff                                  	call   0x4b40c0
  786d3f:	5e                                              	pop    esi
  786d40:	5f                                              	pop    edi
  786d41:	59                                              	pop    ecx
  786d42:	c3                                              	ret
  786d43:	cc                                              	int3
  786d44:	cc                                              	int3
  786d45:	cc                                              	int3
  786d46:	cc                                              	int3
  786d47:	cc                                              	int3
  786d48:	cc                                              	int3
  786d49:	cc                                              	int3
  786d4a:	cc                                              	int3
  786d4b:	cc                                              	int3
  786d4c:	cc                                              	int3
  786d4d:	cc                                              	int3
  786d4e:	cc                                              	int3
  786d4f:	cc                                              	int3
