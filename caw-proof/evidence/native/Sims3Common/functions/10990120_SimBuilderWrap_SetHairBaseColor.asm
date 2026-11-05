# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990120 (SimBuilderWrap_SetHairBaseColor)
Paired Ghidra pseudocode: 10990120_SimBuilderWrap_SetHairBaseColor.c
Window: [0x10990120, 0x109901a0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x109901a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990120: 55 8b ec 83 e4 f0 83 ec 20 f3 0f 10 4d 14 f3 0f
10990130: 10 45 0c f3 0f 11 4c 24 18 f3 0f 10 4d 10 f3 0f
10990140: 11 44 24 1c f3 0f 11 44 24 10 f3 0f 11 4c 24 14
10990150: 0f 28 44 24 10 0f 29 44 24 10 f3 0f 10 05 d4 b0
10990160: ac 10 f3 0f 11 44 24 1c 0f 28 44 24 10 8d 44 24
10990170: 10 50 8d 4c 24 10 0f 29 44 24 14 e8 90 7d a7 ff
10990180: 8b 45 08 8b 4c 24 0c 81 48 1c 04 01 00 00 89 48
10990190: 44 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990120 <.text+0x98f120>:
10990120:	55                                              	push   ebp
10990121:	8b ec                                           	mov    ebp,esp
10990123:	83 e4 f0                                        	and    esp,0xfffffff0
10990126:	83 ec 20                                        	sub    esp,0x20
10990129:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
1099012e:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
10990133:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
10990139:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
1099013e:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10990144:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1099014a:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10990150:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10990155:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1099015a:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
10990162:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10990168:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1099016d:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10990171:	50                                              	push   eax
10990172:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10990176:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
1099017b:	e8 90 7d a7 ff                                  	call   0x10407f10
10990180:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10990183:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10990187:	81 48 1c 04 01 00 00                            	or     DWORD PTR [eax+0x1c],0x104
1099018e:	89 48 44                                        	mov    DWORD PTR [eax+0x44],ecx
10990191:	8b e5                                           	mov    esp,ebp
10990193:	5d                                              	pop    ebp
10990194:	c3                                              	ret
10990195:	cc                                              	int3
10990196:	cc                                              	int3
10990197:	cc                                              	int3
10990198:	cc                                              	int3
10990199:	cc                                              	int3
1099019a:	cc                                              	int3
1099019b:	cc                                              	int3
1099019c:	cc                                              	int3
1099019d:	cc                                              	int3
1099019e:	cc                                              	int3
1099019f:	cc                                              	int3
