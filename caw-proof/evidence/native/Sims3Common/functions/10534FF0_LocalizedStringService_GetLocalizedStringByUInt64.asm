# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10534ff0 (LocalizedStringService_GetLocalizedStringByUInt64)
Paired Ghidra pseudocode: 10534FF0_LocalizedStringService_GetLocalizedStringByUInt64.c
Window: [0x10534ff0, 0x10535010) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10535010
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10534ff0: 8b 44 24 08 8b 4c 24 04 50 51 e8 51 02 e6 ff 8b
10535000: c8 e8 0a 1a e6 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10534ff0 <.text+0x533ff0>:
10534ff0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10534ff4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10534ff8:	50                                              	push   eax
10534ff9:	51                                              	push   ecx
10534ffa:	e8 51 02 e6 ff                                  	call   0x10395250
10534fff:	8b c8                                           	mov    ecx,eax
10535001:	e8 0a 1a e6 ff                                  	call   0x10396a10
10535006:	c3                                              	ret
10535007:	cc                                              	int3
10535008:	cc                                              	int3
10535009:	cc                                              	int3
1053500a:	cc                                              	int3
1053500b:	cc                                              	int3
1053500c:	cc                                              	int3
1053500d:	cc                                              	int3
1053500e:	cc                                              	int3
1053500f:	cc                                              	int3
