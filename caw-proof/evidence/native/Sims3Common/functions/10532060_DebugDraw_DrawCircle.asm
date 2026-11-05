# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532060 (DebugDraw_DrawCircle)
Paired Ghidra pseudocode: 10532060_DebugDraw_DrawCircle.c
Window: [0x10532060, 0x105320c0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x105320c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532060: 55 8b ec 83 e4 f0 83 ec 10 8b 45 18 d9 45 14 f3
10532070: 0f 10 4d 10 f3 0f 10 45 08 50 f3 0f 11 4c 24 0c
10532080: f3 0f 10 4d 0c 51 f3 0f 11 44 24 14 d9 1c 24 f3
10532090: 0f 11 4c 24 0c f3 0f 11 44 24 08 0f 28 44 24 08
105320a0: 8d 4c 24 08 51 0f 29 44 24 0c e8 71 fe ff ff 83
105320b0: c4 0c 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10532060 <.text+0x531060>:
10532060:	55                                              	push   ebp
10532061:	8b ec                                           	mov    ebp,esp
10532063:	83 e4 f0                                        	and    esp,0xfffffff0
10532066:	83 ec 10                                        	sub    esp,0x10
10532069:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
1053206c:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
1053206f:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
10532074:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
10532079:	50                                              	push   eax
1053207a:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
10532080:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
10532085:	51                                              	push   ecx
10532086:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1053208c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053208f:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
10532095:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1053209b:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
105320a0:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
105320a4:	51                                              	push   ecx
105320a5:	0f 29 44 24 0c                                  	movaps XMMWORD PTR [esp+0xc],xmm0
105320aa:	e8 71 fe ff ff                                  	call   0x10531f20
105320af:	83 c4 0c                                        	add    esp,0xc
105320b2:	8b e5                                           	mov    esp,ebp
105320b4:	5d                                              	pop    ebp
105320b5:	c3                                              	ret
105320b6:	cc                                              	int3
105320b7:	cc                                              	int3
105320b8:	cc                                              	int3
105320b9:	cc                                              	int3
105320ba:	cc                                              	int3
105320bb:	cc                                              	int3
105320bc:	cc                                              	int3
105320bd:	cc                                              	int3
105320be:	cc                                              	int3
105320bf:	cc                                              	int3
