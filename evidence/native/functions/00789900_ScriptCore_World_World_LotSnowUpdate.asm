# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00789900 (ScriptCore.World::World_LotSnowUpdate)
Paired Ghidra pseudocode: 00789900_ScriptCore_World_World_LotSnowUpdate.c
Window: [0x00789900, 0x00789950) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00789950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00789900: 56 e8 ea 2b cc ff 6a 10 8b f0 e8 41 58 35 00 83
00789910: c4 04 85 c0 74 15 c7 00 8c 5f 06 01 33 c9 8d 50
00789920: 04 87 0a c7 00 8c 5f 06 01 eb 02 33 c0 8b 4c 24
00789930: 08 8b 54 24 0c 6a 00 89 48 08 6a 00 89 50 0c 8b
00789940: 16 50 8b 42 1c 68 28 62 61 0e 8b ce ff d0 5e c3

LINEAR DISASSEMBLY
00789900 <.text+0x388900>:
  789900:	56                                              	push   esi
  789901:	e8 ea 2b cc ff                                  	call   0x44c4f0
  789906:	6a 10                                           	push   0x10
  789908:	8b f0                                           	mov    esi,eax
  78990a:	e8 41 58 35 00                                  	call   0xadf150
  78990f:	83 c4 04                                        	add    esp,0x4
  789912:	85 c0                                           	test   eax,eax
  789914:	74 15                                           	je     0x78992b
  789916:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  78991c:	33 c9                                           	xor    ecx,ecx
  78991e:	8d 50 04                                        	lea    edx,[eax+0x4]
  789921:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  789923:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  789929:	eb 02                                           	jmp    0x78992d
  78992b:	33 c0                                           	xor    eax,eax
  78992d:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  789931:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  789935:	6a 00                                           	push   0x0
  789937:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  78993a:	6a 00                                           	push   0x0
  78993c:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  78993f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  789941:	50                                              	push   eax
  789942:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  789945:	68 28 62 61 0e                                  	push   0xe616228
  78994a:	8b ce                                           	mov    ecx,esi
  78994c:	ff d0                                           	call   eax
  78994e:	5e                                              	pop    esi
  78994f:	c3                                              	ret
