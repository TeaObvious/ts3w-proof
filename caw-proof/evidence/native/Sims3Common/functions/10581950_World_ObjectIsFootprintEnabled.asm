# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581950 (World_ObjectIsFootprintEnabled)
Paired Ghidra pseudocode: 10581950_World_ObjectIsFootprintEnabled.c
Window: [0x10581950, 0x10581990) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581950: e8 4b 88 1a 00 85 c0 74 34 8b 4c 24 08 8b 54 24
10581960: 04 51 52 8b c8 e8 46 92 1a 00 85 c0 74 1f 8b 0d
10581970: e8 d7 c8 10 51 8b c8 e8 24 54 1a 00 85 c0 74 0d
10581980: 8b 54 24 0c 52 8b c8 e8 44 5b 1b 00 c3 32 c0 c3

LINEAR DISASSEMBLY
10581950 <.text+0x580950>:
10581950:	e8 4b 88 1a 00                                  	call   0x1072a1a0
10581955:	85 c0                                           	test   eax,eax
10581957:	74 34                                           	je     0x1058198d
10581959:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1058195d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10581961:	51                                              	push   ecx
10581962:	52                                              	push   edx
10581963:	8b c8                                           	mov    ecx,eax
10581965:	e8 46 92 1a 00                                  	call   0x1072abb0
1058196a:	85 c0                                           	test   eax,eax
1058196c:	74 1f                                           	je     0x1058198d
1058196e:	8b 0d e8 d7 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d7e8
10581974:	51                                              	push   ecx
10581975:	8b c8                                           	mov    ecx,eax
10581977:	e8 24 54 1a 00                                  	call   0x10726da0
1058197c:	85 c0                                           	test   eax,eax
1058197e:	74 0d                                           	je     0x1058198d
10581980:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10581984:	52                                              	push   edx
10581985:	8b c8                                           	mov    ecx,eax
10581987:	e8 44 5b 1b 00                                  	call   0x107374d0
1058198c:	c3                                              	ret
1058198d:	32 c0                                           	xor    al,al
1058198f:	c3                                              	ret
