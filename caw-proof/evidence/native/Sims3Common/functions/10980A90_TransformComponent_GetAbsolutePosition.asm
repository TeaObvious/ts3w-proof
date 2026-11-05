# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980a90 (TransformComponent_GetAbsolutePosition)
Paired Ghidra pseudocode: 10980A90_TransformComponent_GetAbsolutePosition.c
Window: [0x10980a90, 0x10980b00) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980b00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980a90: 55 8b ec 83 e4 f0 83 ec 20 8b 4d 0c 8d 44 24 10
10980aa0: 50 e8 0a 98 dc ff 0f 28 00 8b 45 08 0f 29 04 24
10980ab0: f3 0f 10 0c 24 0f 29 44 24 10 f3 0f 11 0c 24 f3
10980ac0: 0f 10 4c 24 14 8b 0c 24 0f 29 44 24 10 f3 0f 10
10980ad0: 44 24 18 89 08 f3 0f 11 4c 24 04 8b 54 24 04 f3
10980ae0: 0f 11 44 24 08 8b 4c 24 08 89 50 04 89 48 08 8b
10980af0: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10980a90 <.text+0x97fa90>:
10980a90:	55                                              	push   ebp
10980a91:	8b ec                                           	mov    ebp,esp
10980a93:	83 e4 f0                                        	and    esp,0xfffffff0
10980a96:	83 ec 20                                        	sub    esp,0x20
10980a99:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10980a9c:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10980aa0:	50                                              	push   eax
10980aa1:	e8 0a 98 dc ff                                  	call   0x1074a2b0
10980aa6:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
10980aa9:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10980aac:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10980ab0:	f3 0f 10 0c 24                                  	movss  xmm1,DWORD PTR [esp]
10980ab5:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10980aba:	f3 0f 11 0c 24                                  	movss  DWORD PTR [esp],xmm1
10980abf:	f3 0f 10 4c 24 14                               	movss  xmm1,DWORD PTR [esp+0x14]
10980ac5:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
10980ac8:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10980acd:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
10980ad3:	89 08                                           	mov    DWORD PTR [eax],ecx
10980ad5:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10980adb:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10980adf:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10980ae5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10980ae9:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10980aec:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10980aef:	8b e5                                           	mov    esp,ebp
10980af1:	5d                                              	pop    ebp
10980af2:	c3                                              	ret
10980af3:	cc                                              	int3
10980af4:	cc                                              	int3
10980af5:	cc                                              	int3
10980af6:	cc                                              	int3
10980af7:	cc                                              	int3
10980af8:	cc                                              	int3
10980af9:	cc                                              	int3
10980afa:	cc                                              	int3
10980afb:	cc                                              	int3
10980afc:	cc                                              	int3
10980afd:	cc                                              	int3
10980afe:	cc                                              	int3
10980aff:	cc                                              	int3
