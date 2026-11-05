# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999160 (WorldWrap_ShowChunkBoundaries)
Paired Ghidra pseudocode: 10999160_WorldWrap_ShowChunkBoundaries.c
Window: [0x10999160, 0x109991a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x109991a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999160: 56 8b 74 24 08 8b ce e8 74 0e a7 ff 85 c0 74 1f
10999170: 53 8b 5c 24 10 53 8b c8 e8 e3 f9 8b ff 84 db 5b
10999180: 74 0d 8b 4e 6c 85 c9 74 06 5e e9 31 70 86 ff 5e
10999190: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10999160 <.text+0x998160>:
10999160:	56                                              	push   esi
10999161:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10999165:	8b ce                                           	mov    ecx,esi
10999167:	e8 74 0e a7 ff                                  	call   0x10409fe0
1099916c:	85 c0                                           	test   eax,eax
1099916e:	74 1f                                           	je     0x1099918f
10999170:	53                                              	push   ebx
10999171:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
10999175:	53                                              	push   ebx
10999176:	8b c8                                           	mov    ecx,eax
10999178:	e8 e3 f9 8b ff                                  	call   0x10258b60
1099917d:	84 db                                           	test   bl,bl
1099917f:	5b                                              	pop    ebx
10999180:	74 0d                                           	je     0x1099918f
10999182:	8b 4e 6c                                        	mov    ecx,DWORD PTR [esi+0x6c]
10999185:	85 c9                                           	test   ecx,ecx
10999187:	74 06                                           	je     0x1099918f
10999189:	5e                                              	pop    esi
1099918a:	e9 31 70 86 ff                                  	jmp    0x102001c0
1099918f:	5e                                              	pop    esi
10999190:	c3                                              	ret
10999191:	cc                                              	int3
10999192:	cc                                              	int3
10999193:	cc                                              	int3
10999194:	cc                                              	int3
10999195:	cc                                              	int3
10999196:	cc                                              	int3
10999197:	cc                                              	int3
10999198:	cc                                              	int3
10999199:	cc                                              	int3
1099919a:	cc                                              	int3
1099919b:	cc                                              	int3
1099919c:	cc                                              	int3
1099919d:	cc                                              	int3
1099919e:	cc                                              	int3
1099919f:	cc                                              	int3
