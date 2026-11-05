# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078dc50 (ScriptCore.World::World_HandToolDetach)
Paired Ghidra pseudocode: 0078DC50_ScriptCore_World_World_HandToolDetach.c
Window: [0x0078dc50, 0x0078dc90) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078dc90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078dc50: e8 1b 07 57 00 85 c0 74 2c 56 8b 70 08 57 8b 78
0078dc60: 0c 8b c6 0b c7 74 17 e8 34 b7 fd ff 8b 10 6a 00
0078dc70: 6a 00 8b c8 8b 42 18 68 8a d8 5a 04 ff d0 8b d7
0078dc80: 5f 8b c6 5e c3 33 c0 33 d2 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078dc50 <.text+0x38cc50>:
  78dc50:	e8 1b 07 57 00                                  	call   0xcfe370
  78dc55:	85 c0                                           	test   eax,eax
  78dc57:	74 2c                                           	je     0x78dc85
  78dc59:	56                                              	push   esi
  78dc5a:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  78dc5d:	57                                              	push   edi
  78dc5e:	8b 78 0c                                        	mov    edi,DWORD PTR [eax+0xc]
  78dc61:	8b c6                                           	mov    eax,esi
  78dc63:	0b c7                                           	or     eax,edi
  78dc65:	74 17                                           	je     0x78dc7e
  78dc67:	e8 34 b7 fd ff                                  	call   0x7693a0
  78dc6c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78dc6e:	6a 00                                           	push   0x0
  78dc70:	6a 00                                           	push   0x0
  78dc72:	8b c8                                           	mov    ecx,eax
  78dc74:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  78dc77:	68 8a d8 5a 04                                  	push   0x45ad88a
  78dc7c:	ff d0                                           	call   eax
  78dc7e:	8b d7                                           	mov    edx,edi
  78dc80:	5f                                              	pop    edi
  78dc81:	8b c6                                           	mov    eax,esi
  78dc83:	5e                                              	pop    esi
  78dc84:	c3                                              	ret
  78dc85:	33 c0                                           	xor    eax,eax
  78dc87:	33 d2                                           	xor    edx,edx
  78dc89:	c3                                              	ret
  78dc8a:	cc                                              	int3
  78dc8b:	cc                                              	int3
  78dc8c:	cc                                              	int3
  78dc8d:	cc                                              	int3
  78dc8e:	cc                                              	int3
  78dc8f:	cc                                              	int3
