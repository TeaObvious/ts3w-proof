# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec0ed0 (ScriptCore.GameUtils::GameUtils_IsValidFilename)
Paired Ghidra pseudocode: 00EC0ED0_ScriptCore_GameUtils_GameUtils_IsValidFilename.c
Window: [0x00ec0ed0, 0x00ec0f30) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec0f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec0ed0: 56 e8 ba 84 8a ff 8b 4c 24 08 8b 10 8b 52 58 51
00ec0ee0: 8b c8 ff d2 8b f0 6a 05 56 e8 52 d7 62 ff 83 c4
00ec0ef0: 08 84 c0 74 25 0f b7 06 66 3d 2e 00 74 1c 66 85
00ec0f00: c0 8b ce 74 15 0f b7 c0 66 3d 20 00 75 10 0f b7
00ec0f10: 41 02 83 c1 02 66 85 c0 75 ee 32 c0 5e c3 b0 01
00ec0f20: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec0ed0 <.text+0xabfed0>:
  ec0ed0:	56                                              	push   esi
  ec0ed1:	e8 ba 84 8a ff                                  	call   0x769390
  ec0ed6:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  ec0eda:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec0edc:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  ec0edf:	51                                              	push   ecx
  ec0ee0:	8b c8                                           	mov    ecx,eax
  ec0ee2:	ff d2                                           	call   edx
  ec0ee4:	8b f0                                           	mov    esi,eax
  ec0ee6:	6a 05                                           	push   0x5
  ec0ee8:	56                                              	push   esi
  ec0ee9:	e8 52 d7 62 ff                                  	call   0x4ee640
  ec0eee:	83 c4 08                                        	add    esp,0x8
  ec0ef1:	84 c0                                           	test   al,al
  ec0ef3:	74 25                                           	je     0xec0f1a
  ec0ef5:	0f b7 06                                        	movzx  eax,WORD PTR [esi]
  ec0ef8:	66 3d 2e 00                                     	cmp    ax,0x2e
  ec0efc:	74 1c                                           	je     0xec0f1a
  ec0efe:	66 85 c0                                        	test   ax,ax
  ec0f01:	8b ce                                           	mov    ecx,esi
  ec0f03:	74 15                                           	je     0xec0f1a
  ec0f05:	0f b7 c0                                        	movzx  eax,ax
  ec0f08:	66 3d 20 00                                     	cmp    ax,0x20
  ec0f0c:	75 10                                           	jne    0xec0f1e
  ec0f0e:	0f b7 41 02                                     	movzx  eax,WORD PTR [ecx+0x2]
  ec0f12:	83 c1 02                                        	add    ecx,0x2
  ec0f15:	66 85 c0                                        	test   ax,ax
  ec0f18:	75 ee                                           	jne    0xec0f08
  ec0f1a:	32 c0                                           	xor    al,al
  ec0f1c:	5e                                              	pop    esi
  ec0f1d:	c3                                              	ret
  ec0f1e:	b0 01                                           	mov    al,0x1
  ec0f20:	5e                                              	pop    esi
  ec0f21:	c3                                              	ret
  ec0f22:	cc                                              	int3
  ec0f23:	cc                                              	int3
  ec0f24:	cc                                              	int3
  ec0f25:	cc                                              	int3
  ec0f26:	cc                                              	int3
  ec0f27:	cc                                              	int3
  ec0f28:	cc                                              	int3
  ec0f29:	cc                                              	int3
  ec0f2a:	cc                                              	int3
  ec0f2b:	cc                                              	int3
  ec0f2c:	cc                                              	int3
  ec0f2d:	cc                                              	int3
  ec0f2e:	cc                                              	int3
  ec0f2f:	cc                                              	int3
