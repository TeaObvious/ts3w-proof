# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a0200 (CASUtils_SimOutfitUncacheImpl)
Paired Ghidra pseudocode: 103A0200_CASUtils_SimOutfitUncacheImpl.c
Window: [0x103a0200, 0x103a0240) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a0240
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a0200: 83 ec 10 e8 d8 5d 04 00 8b 4c 24 1c 8b 54 24 20
103a0210: 89 0c 24 8b 4c 24 14 89 4c 24 08 8d 0c 24 89 54
103a0220: 24 04 8b 54 24 18 51 8b c8 89 54 24 10 e8 ce 8a
103a0230: 04 00 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a0200 <.text+0x39f200>:
103a0200:	83 ec 10                                        	sub    esp,0x10
103a0203:	e8 d8 5d 04 00                                  	call   0x103e5fe0
103a0208:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a020c:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
103a0210:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
103a0213:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
103a0217:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
103a021b:	8d 0c 24                                        	lea    ecx,[esp]
103a021e:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
103a0222:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
103a0226:	51                                              	push   ecx
103a0227:	8b c8                                           	mov    ecx,eax
103a0229:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
103a022d:	e8 ce 8a 04 00                                  	call   0x103e8d00
103a0232:	83 c4 10                                        	add    esp,0x10
103a0235:	c3                                              	ret
103a0236:	cc                                              	int3
103a0237:	cc                                              	int3
103a0238:	cc                                              	int3
103a0239:	cc                                              	int3
103a023a:	cc                                              	int3
103a023b:	cc                                              	int3
103a023c:	cc                                              	int3
103a023d:	cc                                              	int3
103a023e:	cc                                              	int3
103a023f:	cc                                              	int3
