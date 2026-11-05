# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990020 (SimBuilderWrap_LoadOutfit)
Paired Ghidra pseudocode: 10990020_SimBuilderWrap_LoadOutfit.c
Window: [0x10990020, 0x10990040) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990020: 8b 44 24 0c 8b 4c 24 08 50 51 8b 4c 24 0c e8 7d
10990030: 00 a5 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990020 <.text+0x98f020>:
10990020:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10990024:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10990028:	50                                              	push   eax
10990029:	51                                              	push   ecx
1099002a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1099002e:	e8 7d 00 a5 ff                                  	call   0x103e00b0
10990033:	c3                                              	ret
10990034:	cc                                              	int3
10990035:	cc                                              	int3
10990036:	cc                                              	int3
10990037:	cc                                              	int3
10990038:	cc                                              	int3
10990039:	cc                                              	int3
1099003a:	cc                                              	int3
1099003b:	cc                                              	int3
1099003c:	cc                                              	int3
1099003d:	cc                                              	int3
1099003e:	cc                                              	int3
1099003f:	cc                                              	int3
