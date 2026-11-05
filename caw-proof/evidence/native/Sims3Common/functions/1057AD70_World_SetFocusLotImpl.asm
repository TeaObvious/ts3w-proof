# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ad70 (World_SetFocusLotImpl)
Paired Ghidra pseudocode: 1057AD70_World_SetFocusLotImpl.c
Window: [0x1057ad70, 0x1057ad90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ad90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ad70: 8b 0d c4 00 c7 10 85 c9 74 0f 8b 44 24 08 8b 54
1057ad80: 24 04 50 52 e8 07 a1 cb ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057ad70 <.text+0x579d70>:
1057ad70:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057ad76:	85 c9                                           	test   ecx,ecx
1057ad78:	74 0f                                           	je     0x1057ad89
1057ad7a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057ad7e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057ad82:	50                                              	push   eax
1057ad83:	52                                              	push   edx
1057ad84:	e8 07 a1 cb ff                                  	call   0x10234e90
1057ad89:	c3                                              	ret
1057ad8a:	cc                                              	int3
1057ad8b:	cc                                              	int3
1057ad8c:	cc                                              	int3
1057ad8d:	cc                                              	int3
1057ad8e:	cc                                              	int3
1057ad8f:	cc                                              	int3
