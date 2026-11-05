# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e6e0 (SceneManWrap_SetSunDirection)
Paired Ghidra pseudocode: 1098E6E0_SceneManWrap_SetSunDirection.c
Window: [0x1098e6e0, 0x1098e740) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e740
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e6e0: 55 8b ec 83 e4 f0 8b 4d 08 83 ec 10 e8 3f fd b4
1098e6f0: ff 85 c0 74 46 f3 0f 10 4d 14 f3 0f 10 45 0c f3
1098e700: 0f 11 4c 24 08 f3 0f 10 4d 10 6a 01 8d 88 30 01
1098e710: 00 00 51 f3 0f 11 44 24 14 f3 0f 11 4c 24 0c f3
1098e720: 0f 11 44 24 08 0f 28 44 24 08 8d 54 24 08 52 8b
1098e730: c8 0f 29 44 24 0c e8 b5 51 b1 ff 8b e5 5d c3 cc

LINEAR DISASSEMBLY
1098e6e0 <.text+0x98d6e0>:
1098e6e0:	55                                              	push   ebp
1098e6e1:	8b ec                                           	mov    ebp,esp
1098e6e3:	83 e4 f0                                        	and    esp,0xfffffff0
1098e6e6:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098e6e9:	83 ec 10                                        	sub    esp,0x10
1098e6ec:	e8 3f fd b4 ff                                  	call   0x104de430
1098e6f1:	85 c0                                           	test   eax,eax
1098e6f3:	74 46                                           	je     0x1098e73b
1098e6f5:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
1098e6fa:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
1098e6ff:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1098e705:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
1098e70a:	6a 01                                           	push   0x1
1098e70c:	8d 88 30 01 00 00                               	lea    ecx,[eax+0x130]
1098e712:	51                                              	push   ecx
1098e713:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1098e719:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1098e71f:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1098e725:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
1098e72a:	8d 54 24 08                                     	lea    edx,[esp+0x8]
1098e72e:	52                                              	push   edx
1098e72f:	8b c8                                           	mov    ecx,eax
1098e731:	0f 29 44 24 0c                                  	movaps XMMWORD PTR [esp+0xc],xmm0
1098e736:	e8 b5 51 b1 ff                                  	call   0x104a38f0
1098e73b:	8b e5                                           	mov    esp,ebp
1098e73d:	5d                                              	pop    ebp
1098e73e:	c3                                              	ret
1098e73f:	cc                                              	int3
