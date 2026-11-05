# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078dc90 (ScriptCore.World::World_ObjectDesigner_GetCurrentPatternImpl)
Paired Ghidra pseudocode: 0078DC90_ScriptCore_World_World_ObjectDesigner_GetCurrentPatternImpl.c
Window: [0x0078dc90, 0x0078dcd0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078dcd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078dc90: 33 c0 56 8b 74 24 08 89 06 89 46 04 89 46 08 89
0078dca0: 46 0c e8 f9 25 3a 00 8b 80 a4 00 00 00 85 c0 74
0078dcb0: 17 8b 48 10 8b 50 14 89 0e 8b 48 08 89 56 04 8b
0078dcc0: 50 0c 89 4e 08 89 56 0c 8b c6 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
0078dc90 <.text+0x38cc90>:
  78dc90:	33 c0                                           	xor    eax,eax
  78dc92:	56                                              	push   esi
  78dc93:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  78dc97:	89 06                                           	mov    DWORD PTR [esi],eax
  78dc99:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  78dc9c:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  78dc9f:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  78dca2:	e8 f9 25 3a 00                                  	call   0xb302a0
  78dca7:	8b 80 a4 00 00 00                               	mov    eax,DWORD PTR [eax+0xa4]
  78dcad:	85 c0                                           	test   eax,eax
  78dcaf:	74 17                                           	je     0x78dcc8
  78dcb1:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  78dcb4:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  78dcb7:	89 0e                                           	mov    DWORD PTR [esi],ecx
  78dcb9:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  78dcbc:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
  78dcbf:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  78dcc2:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
  78dcc5:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  78dcc8:	8b c6                                           	mov    eax,esi
  78dcca:	5e                                              	pop    esi
  78dccb:	c3                                              	ret
  78dccc:	cc                                              	int3
  78dccd:	cc                                              	int3
  78dcce:	cc                                              	int3
  78dccf:	cc                                              	int3
