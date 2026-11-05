# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548270 (Route_SetOption)
Paired Ghidra pseudocode: 10548270_Route_SetOption.c
Window: [0x10548270, 0x105482a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105482a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548270: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
10548280: 0c 51 8b 4c 24 0c 52 50 51 e8 b2 d4 ff ff 83 c4
10548290: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548270 <.text+0x547270>:
10548270:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10548274:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10548278:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1054827c:	50                                              	push   eax
1054827d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10548281:	51                                              	push   ecx
10548282:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10548286:	52                                              	push   edx
10548287:	50                                              	push   eax
10548288:	51                                              	push   ecx
10548289:	e8 b2 d4 ff ff                                  	call   0x10545740
1054828e:	83 c4 14                                        	add    esp,0x14
10548291:	c3                                              	ret
10548292:	cc                                              	int3
10548293:	cc                                              	int3
10548294:	cc                                              	int3
10548295:	cc                                              	int3
10548296:	cc                                              	int3
10548297:	cc                                              	int3
10548298:	cc                                              	int3
10548299:	cc                                              	int3
1054829a:	cc                                              	int3
1054829b:	cc                                              	int3
1054829c:	cc                                              	int3
1054829d:	cc                                              	int3
1054829e:	cc                                              	int3
1054829f:	cc                                              	int3
