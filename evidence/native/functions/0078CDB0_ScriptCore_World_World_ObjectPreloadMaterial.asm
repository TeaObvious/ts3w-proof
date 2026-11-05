# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078cdb0 (ScriptCore.World::World_ObjectPreloadMaterial)
Paired Ghidra pseudocode: 0078CDB0_ScriptCore_World_World_ObjectPreloadMaterial.c
Window: [0x0078cdb0, 0x0078ce00) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078ce00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078cdb0: e8 bb a7 1a 00 85 c0 74 45 8b 4c 24 08 8b 54 24
0078cdc0: 04 51 52 8b c8 e8 b6 b1 1a 00 85 c0 74 30 8b 0d
0078cdd0: c4 9f 1e 01 51 8b c8 e8 84 74 1a 00 85 c0 74 1e
0078cde0: e8 ab c5 fd ff 8b 4c 24 0c 85 c9 74 11 8b 10 51
0078cdf0: 8b c8 8b 42 58 ff d0 50 e8 23 32 04 00 59 c3 cc

LINEAR DISASSEMBLY
0078cdb0 <.text+0x38bdb0>:
  78cdb0:	e8 bb a7 1a 00                                  	call   0x937570
  78cdb5:	85 c0                                           	test   eax,eax
  78cdb7:	74 45                                           	je     0x78cdfe
  78cdb9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78cdbd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78cdc1:	51                                              	push   ecx
  78cdc2:	52                                              	push   edx
  78cdc3:	8b c8                                           	mov    ecx,eax
  78cdc5:	e8 b6 b1 1a 00                                  	call   0x937f80
  78cdca:	85 c0                                           	test   eax,eax
  78cdcc:	74 30                                           	je     0x78cdfe
  78cdce:	8b 0d c4 9f 1e 01                               	mov    ecx,DWORD PTR ds:0x11e9fc4
  78cdd4:	51                                              	push   ecx
  78cdd5:	8b c8                                           	mov    ecx,eax
  78cdd7:	e8 84 74 1a 00                                  	call   0x934260
  78cddc:	85 c0                                           	test   eax,eax
  78cdde:	74 1e                                           	je     0x78cdfe
  78cde0:	e8 ab c5 fd ff                                  	call   0x769390
  78cde5:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78cde9:	85 c9                                           	test   ecx,ecx
  78cdeb:	74 11                                           	je     0x78cdfe
  78cded:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78cdef:	51                                              	push   ecx
  78cdf0:	8b c8                                           	mov    ecx,eax
  78cdf2:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  78cdf5:	ff d0                                           	call   eax
  78cdf7:	50                                              	push   eax
  78cdf8:	e8 23 32 04 00                                  	call   0x7d0020
  78cdfd:	59                                              	pop    ecx
  78cdfe:	c3                                              	ret
  78cdff:	cc                                              	int3
