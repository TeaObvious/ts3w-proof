# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078cf80 (ScriptCore.World::World_ObjectSetCustomLightRig)
Paired Ghidra pseudocode: 0078CF80_ScriptCore_World_World_ObjectSetCustomLightRig.c
Window: [0x0078cf80, 0x0078d000) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078cf80: e8 eb a5 1a 00 85 c0 74 68 8b 4c 24 08 8b 54 24
0078cf90: 04 51 52 8b c8 e8 e6 af 1a 00 85 c0 74 53 8b 0d
0078cfa0: a8 a2 1e 01 57 51 8b c8 e8 b3 72 1a 00 8b f8 85
0078cfb0: ff 74 3d 56 8b 74 24 14 85 f6 75 0b 56 8b cf e8
0078cfc0: ac 10 1d 00 5e 5f c3 e8 c4 c3 fd ff 8b 10 8b c8
0078cfd0: 8b 42 58 56 ff d0 85 c0 74 15 50 e8 40 30 04 00
0078cfe0: 83 c4 04 85 c0 74 08 50 8b cf e8 81 10 1d 00 5e
0078cff0: 5f c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078cf80 <.text+0x38bf80>:
  78cf80:	e8 eb a5 1a 00                                  	call   0x937570
  78cf85:	85 c0                                           	test   eax,eax
  78cf87:	74 68                                           	je     0x78cff1
  78cf89:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78cf8d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78cf91:	51                                              	push   ecx
  78cf92:	52                                              	push   edx
  78cf93:	8b c8                                           	mov    ecx,eax
  78cf95:	e8 e6 af 1a 00                                  	call   0x937f80
  78cf9a:	85 c0                                           	test   eax,eax
  78cf9c:	74 53                                           	je     0x78cff1
  78cf9e:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  78cfa4:	57                                              	push   edi
  78cfa5:	51                                              	push   ecx
  78cfa6:	8b c8                                           	mov    ecx,eax
  78cfa8:	e8 b3 72 1a 00                                  	call   0x934260
  78cfad:	8b f8                                           	mov    edi,eax
  78cfaf:	85 ff                                           	test   edi,edi
  78cfb1:	74 3d                                           	je     0x78cff0
  78cfb3:	56                                              	push   esi
  78cfb4:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  78cfb8:	85 f6                                           	test   esi,esi
  78cfba:	75 0b                                           	jne    0x78cfc7
  78cfbc:	56                                              	push   esi
  78cfbd:	8b cf                                           	mov    ecx,edi
  78cfbf:	e8 ac 10 1d 00                                  	call   0x95e070
  78cfc4:	5e                                              	pop    esi
  78cfc5:	5f                                              	pop    edi
  78cfc6:	c3                                              	ret
  78cfc7:	e8 c4 c3 fd ff                                  	call   0x769390
  78cfcc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78cfce:	8b c8                                           	mov    ecx,eax
  78cfd0:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  78cfd3:	56                                              	push   esi
  78cfd4:	ff d0                                           	call   eax
  78cfd6:	85 c0                                           	test   eax,eax
  78cfd8:	74 15                                           	je     0x78cfef
  78cfda:	50                                              	push   eax
  78cfdb:	e8 40 30 04 00                                  	call   0x7d0020
  78cfe0:	83 c4 04                                        	add    esp,0x4
  78cfe3:	85 c0                                           	test   eax,eax
  78cfe5:	74 08                                           	je     0x78cfef
  78cfe7:	50                                              	push   eax
  78cfe8:	8b cf                                           	mov    ecx,edi
  78cfea:	e8 81 10 1d 00                                  	call   0x95e070
  78cfef:	5e                                              	pop    esi
  78cff0:	5f                                              	pop    edi
  78cff1:	c3                                              	ret
  78cff2:	cc                                              	int3
  78cff3:	cc                                              	int3
  78cff4:	cc                                              	int3
  78cff5:	cc                                              	int3
  78cff6:	cc                                              	int3
  78cff7:	cc                                              	int3
  78cff8:	cc                                              	int3
  78cff9:	cc                                              	int3
  78cffa:	cc                                              	int3
  78cffb:	cc                                              	int3
  78cffc:	cc                                              	int3
  78cffd:	cc                                              	int3
  78cffe:	cc                                              	int3
  78cfff:	cc                                              	int3
