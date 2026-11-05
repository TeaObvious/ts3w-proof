# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f770 (GameObjectFactoryWrap_Destroy)
Paired Ghidra pseudocode: 1097F770_GameObjectFactoryWrap_Destroy.c
Window: [0x1097f770, 0x1097f790) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f790
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f770: e8 2b aa da ff 85 c0 74 11 8b 4c 24 08 8b 54 24
1097f780: 04 51 52 8b c8 e8 e6 b2 da ff c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1097f770 <.text+0x97e770>:
1097f770:	e8 2b aa da ff                                  	call   0x1072a1a0
1097f775:	85 c0                                           	test   eax,eax
1097f777:	74 11                                           	je     0x1097f78a
1097f779:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1097f77d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1097f781:	51                                              	push   ecx
1097f782:	52                                              	push   edx
1097f783:	8b c8                                           	mov    ecx,eax
1097f785:	e8 e6 b2 da ff                                  	call   0x1072aa70
1097f78a:	c3                                              	ret
1097f78b:	cc                                              	int3
1097f78c:	cc                                              	int3
1097f78d:	cc                                              	int3
1097f78e:	cc                                              	int3
1097f78f:	cc                                              	int3
