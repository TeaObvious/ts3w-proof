# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999030 (WorldWrap_SetGridActive)
Paired Ghidra pseudocode: 10999030_WorldWrap_SetGridActive.c
Window: [0x10999030, 0x10999060) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999030: 8b 4c 24 04 56 8b 71 6c 85 f6 74 17 8b 44 24 0c
10999040: 50 e8 9a 0f a7 ff 50 8b ce e8 62 72 86 ff 0f b6
10999050: c0 5e c3 33 c0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10999030 <.text+0x998030>:
10999030:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10999034:	56                                              	push   esi
10999035:	8b 71 6c                                        	mov    esi,DWORD PTR [ecx+0x6c]
10999038:	85 f6                                           	test   esi,esi
1099903a:	74 17                                           	je     0x10999053
1099903c:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10999040:	50                                              	push   eax
10999041:	e8 9a 0f a7 ff                                  	call   0x10409fe0
10999046:	50                                              	push   eax
10999047:	8b ce                                           	mov    ecx,esi
10999049:	e8 62 72 86 ff                                  	call   0x102002b0
1099904e:	0f b6 c0                                        	movzx  eax,al
10999051:	5e                                              	pop    esi
10999052:	c3                                              	ret
10999053:	33 c0                                           	xor    eax,eax
10999055:	5e                                              	pop    esi
10999056:	c3                                              	ret
10999057:	cc                                              	int3
10999058:	cc                                              	int3
10999059:	cc                                              	int3
1099905a:	cc                                              	int3
1099905b:	cc                                              	int3
1099905c:	cc                                              	int3
1099905d:	cc                                              	int3
1099905e:	cc                                              	int3
1099905f:	cc                                              	int3
