# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SaveGameMetadata_Construct
Paired actual annotated Ghidra pseudocode: 0059DE90_SaveGameMetadata_Construct.c
Owned ranges: [[0059de90, 0059df80]]
Envelope bytes=241

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0059de90  8bc1  MOV EAX,ECX
0059de92  c700143cfb00  MOV dword ptr [EAX],0xfb3c14
0059de98  33c9  XOR ECX,ECX
0059de9a  8d5004  LEA EDX,[EAX + 0x4]
0059de9d  870a  XCHG dword ptr [EDX],ECX
0059de9f  33c9  XOR ECX,ECX
0059dea1  894808  MOV dword ptr [EAX + 0x8],ECX
0059dea4  89480c  MOV dword ptr [EAX + 0xc],ECX
0059dea7  894810  MOV dword ptr [EAX + 0x10],ECX
0059deaa  894814  MOV dword ptr [EAX + 0x14],ECX
0059dead  894820  MOV dword ptr [EAX + 0x20],ECX
0059deb0  894824  MOV dword ptr [EAX + 0x24],ECX
0059deb3  89481c  MOV dword ptr [EAX + 0x1c],ECX
0059deb6  894818  MOV dword ptr [EAX + 0x18],ECX
0059deb9  c70070ecfd00  MOV dword ptr [EAX],0xfdec70
0059debf  c7402803000000  MOV dword ptr [EAX + 0x28],0x3
0059dec6  c7404c34edfd00  MOV dword ptr [EAX + 0x4c],0xfded34
0059decd  b9548e1c01  MOV ECX,0x11c8e54
0059ded2  894840  MOV dword ptr [EAX + 0x40],ECX
0059ded5  894844  MOV dword ptr [EAX + 0x44],ECX
0059ded8  ba568e1c01  MOV EDX,0x11c8e56
0059dedd  895048  MOV dword ptr [EAX + 0x48],EDX
0059dee0  c7405c10edfd00  MOV dword ptr [EAX + 0x5c],0xfded10
0059dee7  894850  MOV dword ptr [EAX + 0x50],ECX
0059deea  894854  MOV dword ptr [EAX + 0x54],ECX
0059deed  895058  MOV dword ptr [EAX + 0x58],EDX
0059def0  c7406c10edfd00  MOV dword ptr [EAX + 0x6c],0xfded10
0059def7  894860  MOV dword ptr [EAX + 0x60],ECX
0059defa  894864  MOV dword ptr [EAX + 0x64],ECX
0059defd  895068  MOV dword ptr [EAX + 0x68],EDX
0059df00  c7407cececfd00  MOV dword ptr [EAX + 0x7c],0xfdecec
0059df07  894870  MOV dword ptr [EAX + 0x70],ECX
0059df0a  894874  MOV dword ptr [EAX + 0x74],ECX
0059df0d  895078  MOV dword ptr [EAX + 0x78],EDX
0059df10  c7808c000000ccecfd00  MOV dword ptr [EAX + 0x8c],0xfdeccc
0059df1a  898880000000  MOV dword ptr [EAX + 0x80],ECX
0059df20  898884000000  MOV dword ptr [EAX + 0x84],ECX
0059df26  899088000000  MOV dword ptr [EAX + 0x88],EDX
0059df2c  c7809c000000a8ecfd00  MOV dword ptr [EAX + 0x9c],0xfdeca8
0059df36  898890000000  MOV dword ptr [EAX + 0x90],ECX
0059df3c  898894000000  MOV dword ptr [EAX + 0x94],ECX
0059df42  899098000000  MOV dword ptr [EAX + 0x98],EDX
0059df48  c780ac000000a8ecfd00  MOV dword ptr [EAX + 0xac],0xfdeca8
0059df52  8988a0000000  MOV dword ptr [EAX + 0xa0],ECX
0059df58  8988a4000000  MOV dword ptr [EAX + 0xa4],ECX
0059df5e  8990a8000000  MOV dword ptr [EAX + 0xa8],EDX
0059df64  c780bc00000088ecfd00  MOV dword ptr [EAX + 0xbc],0xfdec88
0059df6e  8988b0000000  MOV dword ptr [EAX + 0xb0],ECX
0059df74  8988b4000000  MOV dword ptr [EAX + 0xb4],ECX
0059df7a  8990b8000000  MOV dword ptr [EAX + 0xb8],EDX
0059df80  c3  RET
Owned instructions=51 owned bytes=241 gap/nonowned bytes=0
