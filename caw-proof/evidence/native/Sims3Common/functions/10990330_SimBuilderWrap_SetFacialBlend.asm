# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990330 (SimBuilderWrap_SetFacialBlend)
Paired Ghidra pseudocode: 10990330_SimBuilderWrap_SetFacialBlend.c
Window: [0x10990330, 0x10990370) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990370
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990330: 83 ec 10 8b 4c 24 24 d9 44 24 28 8b 44 24 20 8b
10990340: 54 24 18 51 89 4c 24 08 d9 1c 24 8d 4c 24 04 89
10990350: 44 24 04 8b 44 24 20 51 8b 4c 24 1c 89 54 24 10
10990360: 89 44 24 14 e8 b7 e0 a4 ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10990330 <.text+0x98f330>:
10990330:	83 ec 10                                        	sub    esp,0x10
10990333:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10990337:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
1099033b:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1099033f:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10990343:	51                                              	push   ecx
10990344:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
10990348:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1099034b:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1099034f:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10990353:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10990357:	51                                              	push   ecx
10990358:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1099035c:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
10990360:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
10990364:	e8 b7 e0 a4 ff                                  	call   0x103de420
10990369:	83 c4 10                                        	add    esp,0x10
1099036c:	c3                                              	ret
1099036d:	cc                                              	int3
1099036e:	cc                                              	int3
1099036f:	cc                                              	int3
