# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109903f0 (SimBuilderWrap_SetFurParameterBool)
Paired Ghidra pseudocode: 109903F0_SimBuilderWrap_SetFurParameterBool.c
Window: [0x109903f0, 0x10990480) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109903f0: 55 8b ec 83 e4 f0 8b 4d 08 33 c0 83 ec 50 3b c8
10990400: 74 77 38 45 10 89 44 24 40 89 44 24 44 89 44 24
10990410: 48 89 44 24 4c c7 44 24 20 05 00 00 00 74 0a f3
10990420: 0f 10 05 d4 b0 ac 10 eb 03 0f 57 c0 8b 55 0c f3
10990430: 0f 11 44 24 0c f3 0f 11 44 24 08 f3 0f 11 44 24
10990440: 04 f3 0f 11 04 24 0f 28 04 24 0f 29 44 24 10 0f
10990450: 28 44 24 30 0f 29 04 24 f3 0f 10 44 24 10 8d 44
10990460: 24 20 50 f3 0f 11 44 24 04 0f 28 44 24 04 52 0f
10990470: 29 44 24 38 e8 47 b1 a4 ff 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
109903f0 <.text+0x98f3f0>:
109903f0:	55                                              	push   ebp
109903f1:	8b ec                                           	mov    ebp,esp
109903f3:	83 e4 f0                                        	and    esp,0xfffffff0
109903f6:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
109903f9:	33 c0                                           	xor    eax,eax
109903fb:	83 ec 50                                        	sub    esp,0x50
109903fe:	3b c8                                           	cmp    ecx,eax
10990400:	74 77                                           	je     0x10990479
10990402:	38 45 10                                        	cmp    BYTE PTR [ebp+0x10],al
10990405:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
10990409:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
1099040d:	89 44 24 48                                     	mov    DWORD PTR [esp+0x48],eax
10990411:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
10990415:	c7 44 24 20 05 00 00 00                         	mov    DWORD PTR [esp+0x20],0x5
1099041d:	74 0a                                           	je     0x10990429
1099041f:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
10990427:	eb 03                                           	jmp    0x1099042c
10990429:	0f 57 c0                                        	xorps  xmm0,xmm0
1099042c:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
1099042f:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10990435:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1099043b:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10990441:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10990446:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1099044a:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1099044f:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
10990454:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10990458:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
1099045e:	8d 44 24 20                                     	lea    eax,[esp+0x20]
10990462:	50                                              	push   eax
10990463:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10990469:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
1099046e:	52                                              	push   edx
1099046f:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
10990474:	e8 47 b1 a4 ff                                  	call   0x103db5c0
10990479:	8b e5                                           	mov    esp,ebp
1099047b:	5d                                              	pop    ebp
1099047c:	c3                                              	ret
1099047d:	cc                                              	int3
1099047e:	cc                                              	int3
1099047f:	cc                                              	int3
