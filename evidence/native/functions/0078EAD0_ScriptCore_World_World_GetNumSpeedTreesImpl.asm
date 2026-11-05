# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078ead0 (ScriptCore.World::World_GetNumSpeedTreesImpl)
Paired Ghidra pseudocode: 0078EAD0_ScriptCore_World_World_GetNumSpeedTreesImpl.c
Window: [0x0078ead0, 0x0078eb10) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078eb10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078ead0: e8 9b 8a 1a 00 85 c0 74 34 8b 4c 24 08 8b 54 24
0078eae0: 04 51 52 8b c8 e8 96 94 1a 00 85 c0 74 1f 8b 0d
0078eaf0: 90 a2 1e 01 51 8b c8 e8 64 57 1a 00 85 c0 74 07
0078eb00: 8b c8 e9 09 bb 1c 00 b8 01 00 00 00 c3 33 c0 c3

LINEAR DISASSEMBLY
0078ead0 <.text+0x38dad0>:
  78ead0:	e8 9b 8a 1a 00                                  	call   0x937570
  78ead5:	85 c0                                           	test   eax,eax
  78ead7:	74 34                                           	je     0x78eb0d
  78ead9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78eadd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78eae1:	51                                              	push   ecx
  78eae2:	52                                              	push   edx
  78eae3:	8b c8                                           	mov    ecx,eax
  78eae5:	e8 96 94 1a 00                                  	call   0x937f80
  78eaea:	85 c0                                           	test   eax,eax
  78eaec:	74 1f                                           	je     0x78eb0d
  78eaee:	8b 0d 90 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea290
  78eaf4:	51                                              	push   ecx
  78eaf5:	8b c8                                           	mov    ecx,eax
  78eaf7:	e8 64 57 1a 00                                  	call   0x934260
  78eafc:	85 c0                                           	test   eax,eax
  78eafe:	74 07                                           	je     0x78eb07
  78eb00:	8b c8                                           	mov    ecx,eax
  78eb02:	e9 09 bb 1c 00                                  	jmp    0x95a610
  78eb07:	b8 01 00 00 00                                  	mov    eax,0x1
  78eb0c:	c3                                              	ret
  78eb0d:	33 c0                                           	xor    eax,eax
  78eb0f:	c3                                              	ret
