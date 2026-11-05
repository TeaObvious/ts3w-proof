# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078a960 (ScriptCore.World::World_HasObjectSnowImpl)
Paired Ghidra pseudocode: 0078A960_ScriptCore_World_World_HasObjectSnowImpl.c
Window: [0x0078a960, 0x0078a9a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078a9a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078a960: e8 0b cc 1a 00 85 c0 74 34 8b 4c 24 08 8b 54 24
0078a970: 04 51 52 8b c8 e8 06 d6 1a 00 85 c0 74 1f 8b 0d
0078a980: a8 a2 1e 01 51 8b c8 e8 d4 98 1a 00 85 c0 74 0d
0078a990: 8b 54 24 0c 52 8b c8 e8 84 37 1d 00 c3 b0 01 c3

LINEAR DISASSEMBLY
0078a960 <.text+0x389960>:
  78a960:	e8 0b cc 1a 00                                  	call   0x937570
  78a965:	85 c0                                           	test   eax,eax
  78a967:	74 34                                           	je     0x78a99d
  78a969:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78a96d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78a971:	51                                              	push   ecx
  78a972:	52                                              	push   edx
  78a973:	8b c8                                           	mov    ecx,eax
  78a975:	e8 06 d6 1a 00                                  	call   0x937f80
  78a97a:	85 c0                                           	test   eax,eax
  78a97c:	74 1f                                           	je     0x78a99d
  78a97e:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  78a984:	51                                              	push   ecx
  78a985:	8b c8                                           	mov    ecx,eax
  78a987:	e8 d4 98 1a 00                                  	call   0x934260
  78a98c:	85 c0                                           	test   eax,eax
  78a98e:	74 0d                                           	je     0x78a99d
  78a990:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78a994:	52                                              	push   edx
  78a995:	8b c8                                           	mov    ecx,eax
  78a997:	e8 84 37 1d 00                                  	call   0x95e120
  78a99c:	c3                                              	ret
  78a99d:	b0 01                                           	mov    al,0x1
  78a99f:	c3                                              	ret
