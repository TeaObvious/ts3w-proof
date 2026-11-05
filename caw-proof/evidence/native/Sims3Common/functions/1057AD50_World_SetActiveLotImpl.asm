# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ad50 (World_SetActiveLotImpl)
Paired Ghidra pseudocode: 1057AD50_World_SetActiveLotImpl.c
Window: [0x1057ad50, 0x1057ad70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ad70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ad50: 8b 0d c4 00 c7 10 85 c9 74 0f 8b 44 24 08 8b 54
1057ad60: 24 04 50 52 e8 a7 c5 cb ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057ad50 <.text+0x579d50>:
1057ad50:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057ad56:	85 c9                                           	test   ecx,ecx
1057ad58:	74 0f                                           	je     0x1057ad69
1057ad5a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057ad5e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057ad62:	50                                              	push   eax
1057ad63:	52                                              	push   edx
1057ad64:	e8 a7 c5 cb ff                                  	call   0x10237310
1057ad69:	c3                                              	ret
1057ad6a:	cc                                              	int3
1057ad6b:	cc                                              	int3
1057ad6c:	cc                                              	int3
1057ad6d:	cc                                              	int3
1057ad6e:	cc                                              	int3
1057ad6f:	cc                                              	int3
