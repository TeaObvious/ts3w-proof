# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057aa80 (World_LotSetForceDoorVisibilityCheckImpl)
Paired Ghidra pseudocode: 1057AA80_World_LotSetForceDoorVisibilityCheckImpl.c
Window: [0x1057aa80, 0x1057aab0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057aab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057aa80: 8b 0d c4 00 c7 10 85 c9 74 21 8b 44 24 08 8b 54
1057aa90: 24 04 6a 00 50 52 e8 75 c5 cb ff 85 c0 74 0c 8b
1057aaa0: 4c 24 0c 51 8b c8 e8 a5 da af ff c3 cc cc cc cc

LINEAR DISASSEMBLY
1057aa80 <.text+0x579a80>:
1057aa80:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057aa86:	85 c9                                           	test   ecx,ecx
1057aa88:	74 21                                           	je     0x1057aaab
1057aa8a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057aa8e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057aa92:	6a 00                                           	push   0x0
1057aa94:	50                                              	push   eax
1057aa95:	52                                              	push   edx
1057aa96:	e8 75 c5 cb ff                                  	call   0x10237010
1057aa9b:	85 c0                                           	test   eax,eax
1057aa9d:	74 0c                                           	je     0x1057aaab
1057aa9f:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057aaa3:	51                                              	push   ecx
1057aaa4:	8b c8                                           	mov    ecx,eax
1057aaa6:	e8 a5 da af ff                                  	call   0x10078550
1057aaab:	c3                                              	ret
1057aaac:	cc                                              	int3
1057aaad:	cc                                              	int3
1057aaae:	cc                                              	int3
1057aaaf:	cc                                              	int3
