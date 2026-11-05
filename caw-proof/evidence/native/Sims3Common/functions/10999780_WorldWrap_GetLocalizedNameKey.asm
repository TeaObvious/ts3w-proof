# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999780 (WorldWrap_GetLocalizedNameKey)
Paired Ghidra pseudocode: 10999780_WorldWrap_GetLocalizedNameKey.c
Window: [0x10999780, 0x109997a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109997a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999780: 8b 44 24 04 85 c0 74 11 8b 88 7c 02 00 00 3b 88
10999790: 80 02 00 00 74 03 8b c1 c3 33 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
10999780 <.text+0x998780>:
10999780:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10999784:	85 c0                                           	test   eax,eax
10999786:	74 11                                           	je     0x10999799
10999788:	8b 88 7c 02 00 00                               	mov    ecx,DWORD PTR [eax+0x27c]
1099978e:	3b 88 80 02 00 00                               	cmp    ecx,DWORD PTR [eax+0x280]
10999794:	74 03                                           	je     0x10999799
10999796:	8b c1                                           	mov    eax,ecx
10999798:	c3                                              	ret
10999799:	33 c0                                           	xor    eax,eax
1099979b:	c3                                              	ret
1099979c:	cc                                              	int3
1099979d:	cc                                              	int3
1099979e:	cc                                              	int3
1099979f:	cc                                              	int3
