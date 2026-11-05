# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581fc0 (World_CanSeePointImpl)
Paired Ghidra pseudocode: 10581FC0_World_CanSeePointImpl.c
Window: [0x10581fc0, 0x10582050) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10582050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581fc0: 55 8b ec 83 e4 f0 83 ec 20 f3 0f 10 4d 1c 8b 45
10581fd0: 24 f3 0f 10 45 14 8b 4d 20 f3 0f 11 4c 24 08 f3
10581fe0: 0f 10 4d 18 f3 0f 11 4c 24 04 f3 0f 10 4d 10 f3
10581ff0: 0f 11 44 24 0c f3 0f 11 04 24 0f 28 04 24 50 f3
10582000: 0f 11 4c 24 0c f3 0f 10 4d 0c 51 0f 29 44 24 18
10582010: f3 0f 10 45 08 8d 54 24 18 f3 0f 11 44 24 14 f3
10582020: 0f 11 4c 24 0c f3 0f 11 44 24 08 0f 28 44 24 08
10582030: 52 8d 44 24 0c 50 0f 29 44 24 10 e8 70 a6 ff ff
10582040: 83 c4 10 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581fc0 <.text+0x580fc0>:
10581fc0:	55                                              	push   ebp
10581fc1:	8b ec                                           	mov    ebp,esp
10581fc3:	83 e4 f0                                        	and    esp,0xfffffff0
10581fc6:	83 ec 20                                        	sub    esp,0x20
10581fc9:	f3 0f 10 4d 1c                                  	movss  xmm1,DWORD PTR [ebp+0x1c]
10581fce:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
10581fd1:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
10581fd6:	8b 4d 20                                        	mov    ecx,DWORD PTR [ebp+0x20]
10581fd9:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10581fdf:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
10581fe4:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10581fea:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
10581fef:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10581ff5:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10581ffa:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10581ffe:	50                                              	push   eax
10581fff:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
10582005:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
1058200a:	51                                              	push   ecx
1058200b:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
10582010:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
10582015:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10582019:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1058201f:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
10582025:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1058202b:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
10582030:	52                                              	push   edx
10582031:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10582035:	50                                              	push   eax
10582036:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1058203b:	e8 70 a6 ff ff                                  	call   0x1057c6b0
10582040:	83 c4 10                                        	add    esp,0x10
10582043:	8b e5                                           	mov    esp,ebp
10582045:	5d                                              	pop    ebp
10582046:	c3                                              	ret
10582047:	cc                                              	int3
10582048:	cc                                              	int3
10582049:	cc                                              	int3
1058204a:	cc                                              	int3
1058204b:	cc                                              	int3
1058204c:	cc                                              	int3
1058204d:	cc                                              	int3
1058204e:	cc                                              	int3
1058204f:	cc                                              	int3
