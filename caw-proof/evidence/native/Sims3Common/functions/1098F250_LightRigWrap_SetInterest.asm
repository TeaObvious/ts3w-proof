# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f250 (LightRigWrap_SetInterest)
Paired Ghidra pseudocode: 1098F250_LightRigWrap_SetInterest.c
Window: [0x1098f250, 0x1098f290) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f250: 55 8b ec 83 e4 f0 8b 45 10 83 ec 60 50 8d 4c 24
1098f260: 24 51 e8 f9 0e ff ff 8b 4d 0c 83 c4 08 8d 54 24
1098f270: 20 52 8d 44 24 04 50 e8 e4 78 ff ff 8b 4d 08 50
1098f280: e8 8b 1a b2 ff 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f250 <.text+0x98e250>:
1098f250:	55                                              	push   ebp
1098f251:	8b ec                                           	mov    ebp,esp
1098f253:	83 e4 f0                                        	and    esp,0xfffffff0
1098f256:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
1098f259:	83 ec 60                                        	sub    esp,0x60
1098f25c:	50                                              	push   eax
1098f25d:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1098f261:	51                                              	push   ecx
1098f262:	e8 f9 0e ff ff                                  	call   0x10980160
1098f267:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
1098f26a:	83 c4 08                                        	add    esp,0x8
1098f26d:	8d 54 24 20                                     	lea    edx,[esp+0x20]
1098f271:	52                                              	push   edx
1098f272:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1098f276:	50                                              	push   eax
1098f277:	e8 e4 78 ff ff                                  	call   0x10986b60
1098f27c:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098f27f:	50                                              	push   eax
1098f280:	e8 8b 1a b2 ff                                  	call   0x104b0d10
1098f285:	8b e5                                           	mov    esp,ebp
1098f287:	5d                                              	pop    ebp
1098f288:	c3                                              	ret
1098f289:	cc                                              	int3
1098f28a:	cc                                              	int3
1098f28b:	cc                                              	int3
1098f28c:	cc                                              	int3
1098f28d:	cc                                              	int3
1098f28e:	cc                                              	int3
1098f28f:	cc                                              	int3
