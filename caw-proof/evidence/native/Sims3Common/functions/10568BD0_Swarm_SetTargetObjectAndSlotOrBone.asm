# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10568bd0 (Swarm_SetTargetObjectAndSlotOrBone)
Paired Ghidra pseudocode: 10568BD0_Swarm_SetTargetObjectAndSlotOrBone.c
Window: [0x10568bd0, 0x10568c60) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10568c60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10568bd0: 55 8b ec 83 e4 f0 83 ec 10 e8 c2 15 1c 00 8b 4d
10568be0: 0c 8b 55 08 51 52 8b c8 e8 c3 1f 1c 00 85 c0 74
10568bf0: 63 8b 0d d0 d6 c8 10 51 8b c8 e8 a1 e1 1b 00 85
10568c00: c0 74 51 8b 55 28 f3 0f 10 4d 24 f3 0f 10 45 1c
10568c10: 52 8b 55 18 8d 4c 24 04 51 8b 4d 14 52 8b 55 10
10568c20: f3 0f 11 4c 24 14 f3 0f 10 4d 20 51 f3 0f 11 44
10568c30: 24 1c f3 0f 11 4c 24 14 f3 0f 11 44 24 10 0f 28
10568c40: 44 24 10 52 8b c8 0f 29 44 24 14 e8 80 d9 1c 00
10568c50: 8b e5 5d c3 32 c0 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10568bd0 <.text+0x567bd0>:
10568bd0:	55                                              	push   ebp
10568bd1:	8b ec                                           	mov    ebp,esp
10568bd3:	83 e4 f0                                        	and    esp,0xfffffff0
10568bd6:	83 ec 10                                        	sub    esp,0x10
10568bd9:	e8 c2 15 1c 00                                  	call   0x1072a1a0
10568bde:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10568be1:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
10568be4:	51                                              	push   ecx
10568be5:	52                                              	push   edx
10568be6:	8b c8                                           	mov    ecx,eax
10568be8:	e8 c3 1f 1c 00                                  	call   0x1072abb0
10568bed:	85 c0                                           	test   eax,eax
10568bef:	74 63                                           	je     0x10568c54
10568bf1:	8b 0d d0 d6 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d6d0
10568bf7:	51                                              	push   ecx
10568bf8:	8b c8                                           	mov    ecx,eax
10568bfa:	e8 a1 e1 1b 00                                  	call   0x10726da0
10568bff:	85 c0                                           	test   eax,eax
10568c01:	74 51                                           	je     0x10568c54
10568c03:	8b 55 28                                        	mov    edx,DWORD PTR [ebp+0x28]
10568c06:	f3 0f 10 4d 24                                  	movss  xmm1,DWORD PTR [ebp+0x24]
10568c0b:	f3 0f 10 45 1c                                  	movss  xmm0,DWORD PTR [ebp+0x1c]
10568c10:	52                                              	push   edx
10568c11:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
10568c14:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10568c18:	51                                              	push   ecx
10568c19:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
10568c1c:	52                                              	push   edx
10568c1d:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
10568c20:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10568c26:	f3 0f 10 4d 20                                  	movss  xmm1,DWORD PTR [ebp+0x20]
10568c2b:	51                                              	push   ecx
10568c2c:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10568c32:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10568c38:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10568c3e:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10568c43:	52                                              	push   edx
10568c44:	8b c8                                           	mov    ecx,eax
10568c46:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
10568c4b:	e8 80 d9 1c 00                                  	call   0x107365d0
10568c50:	8b e5                                           	mov    esp,ebp
10568c52:	5d                                              	pop    ebp
10568c53:	c3                                              	ret
10568c54:	32 c0                                           	xor    al,al
10568c56:	8b e5                                           	mov    esp,ebp
10568c58:	5d                                              	pop    ebp
10568c59:	c3                                              	ret
10568c5a:	cc                                              	int3
10568c5b:	cc                                              	int3
10568c5c:	cc                                              	int3
10568c5d:	cc                                              	int3
10568c5e:	cc                                              	int3
10568c5f:	cc                                              	int3
