# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578240 (World_TreesWithinRadialRangeImpl)
Paired Ghidra pseudocode: 10578240_World_TreesWithinRadialRangeImpl.c
Window: [0x10578240, 0x105782a0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x105782a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578240: 55 8b ec 83 e4 f0 83 ec 10 d9 45 1c f3 0f 10 4d
10578250: 18 f3 0f 10 45 10 8b 55 08 51 8b 4d 0c d9 1c 24
10578260: 8d 44 24 04 f3 0f 11 4c 24 0c f3 0f 10 4d 14 50
10578270: f3 0f 11 44 24 14 f3 0f 11 4c 24 0c f3 0f 11 44
10578280: 24 08 0f 28 44 24 08 51 52 0f 29 44 24 10 e8 7d
10578290: 52 1d 00 83 c4 10 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10578240 <.text+0x577240>:
10578240:	55                                              	push   ebp
10578241:	8b ec                                           	mov    ebp,esp
10578243:	83 e4 f0                                        	and    esp,0xfffffff0
10578246:	83 ec 10                                        	sub    esp,0x10
10578249:	d9 45 1c                                        	fld    DWORD PTR [ebp+0x1c]
1057824c:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
10578251:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
10578256:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
10578259:	51                                              	push   ecx
1057825a:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
1057825d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10578260:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10578264:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1057826a:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
1057826f:	50                                              	push   eax
10578270:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10578276:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1057827c:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10578282:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
10578287:	51                                              	push   ecx
10578288:	52                                              	push   edx
10578289:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1057828e:	e8 7d 52 1d 00                                  	call   0x1074d510
10578293:	83 c4 10                                        	add    esp,0x10
10578296:	8b e5                                           	mov    esp,ebp
10578298:	5d                                              	pop    ebp
10578299:	c3                                              	ret
1057829a:	cc                                              	int3
1057829b:	cc                                              	int3
1057829c:	cc                                              	int3
1057829d:	cc                                              	int3
1057829e:	cc                                              	int3
1057829f:	cc                                              	int3
