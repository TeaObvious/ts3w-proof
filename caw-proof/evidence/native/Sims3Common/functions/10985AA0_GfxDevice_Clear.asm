# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985aa0 (GfxDevice_Clear)
Paired Ghidra pseudocode: 10985AA0_GfxDevice_Clear.c
Window: [0x10985aa0, 0x10985ad0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985ad0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985aa0: 8b 0d e8 35 c7 10 85 c9 74 1c 8b 44 24 10 d9 44
10985ab0: 24 0c 8b 54 24 08 50 8b 44 24 08 51 d9 1c 24 52
10985ac0: 50 e8 5a 49 a8 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10985aa0 <.text+0x984aa0>:
10985aa0:	8b 0d e8 35 c7 10                               	mov    ecx,DWORD PTR ds:0x10c735e8
10985aa6:	85 c9                                           	test   ecx,ecx
10985aa8:	74 1c                                           	je     0x10985ac6
10985aaa:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10985aae:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10985ab2:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10985ab6:	50                                              	push   eax
10985ab7:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10985abb:	51                                              	push   ecx
10985abc:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10985abf:	52                                              	push   edx
10985ac0:	50                                              	push   eax
10985ac1:	e8 5a 49 a8 ff                                  	call   0x1040a420
10985ac6:	c3                                              	ret
10985ac7:	cc                                              	int3
10985ac8:	cc                                              	int3
10985ac9:	cc                                              	int3
10985aca:	cc                                              	int3
10985acb:	cc                                              	int3
10985acc:	cc                                              	int3
10985acd:	cc                                              	int3
10985ace:	cc                                              	int3
10985acf:	cc                                              	int3
