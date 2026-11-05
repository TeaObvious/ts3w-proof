# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078cf10 (ScriptCore.World::World_ObjectSetGeometryVisibilityState)
Paired Ghidra pseudocode: 0078CF10_ScriptCore_World_World_ObjectSetGeometryVisibilityState.c
Window: [0x0078cf10, 0x0078cf80) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078cf80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078cf10: e8 5b a6 1a 00 85 c0 74 5d 8b 4c 24 08 8b 54 24
0078cf20: 04 51 52 8b c8 e8 56 b0 1a 00 85 c0 74 48 8b 0d
0078cf30: a8 a2 1e 01 57 51 8b c8 e8 23 73 1a 00 8b f8 85
0078cf40: ff 74 32 56 8b 74 24 14 85 f6 74 28 e8 3f c4 fd
0078cf50: ff 8b 10 8b c8 8b 42 58 56 ff d0 85 c0 74 15 50
0078cf60: e8 bb 30 04 00 83 c4 04 85 c0 74 08 50 8b cf e8
0078cf70: 1c 19 1d 00 5e 5f c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078cf10 <.text+0x38bf10>:
  78cf10:	e8 5b a6 1a 00                                  	call   0x937570
  78cf15:	85 c0                                           	test   eax,eax
  78cf17:	74 5d                                           	je     0x78cf76
  78cf19:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78cf1d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78cf21:	51                                              	push   ecx
  78cf22:	52                                              	push   edx
  78cf23:	8b c8                                           	mov    ecx,eax
  78cf25:	e8 56 b0 1a 00                                  	call   0x937f80
  78cf2a:	85 c0                                           	test   eax,eax
  78cf2c:	74 48                                           	je     0x78cf76
  78cf2e:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  78cf34:	57                                              	push   edi
  78cf35:	51                                              	push   ecx
  78cf36:	8b c8                                           	mov    ecx,eax
  78cf38:	e8 23 73 1a 00                                  	call   0x934260
  78cf3d:	8b f8                                           	mov    edi,eax
  78cf3f:	85 ff                                           	test   edi,edi
  78cf41:	74 32                                           	je     0x78cf75
  78cf43:	56                                              	push   esi
  78cf44:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  78cf48:	85 f6                                           	test   esi,esi
  78cf4a:	74 28                                           	je     0x78cf74
  78cf4c:	e8 3f c4 fd ff                                  	call   0x769390
  78cf51:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78cf53:	8b c8                                           	mov    ecx,eax
  78cf55:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  78cf58:	56                                              	push   esi
  78cf59:	ff d0                                           	call   eax
  78cf5b:	85 c0                                           	test   eax,eax
  78cf5d:	74 15                                           	je     0x78cf74
  78cf5f:	50                                              	push   eax
  78cf60:	e8 bb 30 04 00                                  	call   0x7d0020
  78cf65:	83 c4 04                                        	add    esp,0x4
  78cf68:	85 c0                                           	test   eax,eax
  78cf6a:	74 08                                           	je     0x78cf74
  78cf6c:	50                                              	push   eax
  78cf6d:	8b cf                                           	mov    ecx,edi
  78cf6f:	e8 1c 19 1d 00                                  	call   0x95e890
  78cf74:	5e                                              	pop    esi
  78cf75:	5f                                              	pop    edi
  78cf76:	c3                                              	ret
  78cf77:	cc                                              	int3
  78cf78:	cc                                              	int3
  78cf79:	cc                                              	int3
  78cf7a:	cc                                              	int3
  78cf7b:	cc                                              	int3
  78cf7c:	cc                                              	int3
  78cf7d:	cc                                              	int3
  78cf7e:	cc                                              	int3
  78cf7f:	cc                                              	int3
