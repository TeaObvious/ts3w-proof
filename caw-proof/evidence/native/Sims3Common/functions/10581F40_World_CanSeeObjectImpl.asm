# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581f40 (World_CanSeeObjectImpl)
Paired Ghidra pseudocode: 10581F40_World_CanSeeObjectImpl.c
Window: [0x10581f40, 0x10581fc0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581fc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581f40: 55 8b ec 83 e4 f0 83 ec 20 8b 4d 1c 8b 55 18 f3
10581f50: 0f 10 4d 10 f3 0f 10 45 08 33 c0 50 89 44 24 14
10581f60: 89 44 24 18 89 44 24 1c 8d 44 24 14 50 8b 45 14
10581f70: 51 f3 0f 11 4c 24 14 f3 0f 10 4d 0c 52 f3 0f 11
10581f80: 44 24 1c f3 0f 11 4c 24 14 f3 0f 11 44 24 10 0f
10581f90: 28 44 24 10 50 8d 4c 24 14 51 c7 44 24 34 30 1b
10581fa0: b2 10 0f 29 44 24 18 e8 a4 a2 ff ff 83 c4 18 8b
10581fb0: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581f40 <.text+0x580f40>:
10581f40:	55                                              	push   ebp
10581f41:	8b ec                                           	mov    ebp,esp
10581f43:	83 e4 f0                                        	and    esp,0xfffffff0
10581f46:	83 ec 20                                        	sub    esp,0x20
10581f49:	8b 4d 1c                                        	mov    ecx,DWORD PTR [ebp+0x1c]
10581f4c:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
10581f4f:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
10581f54:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
10581f59:	33 c0                                           	xor    eax,eax
10581f5b:	50                                              	push   eax
10581f5c:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
10581f60:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
10581f64:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
10581f68:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10581f6c:	50                                              	push   eax
10581f6d:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
10581f70:	51                                              	push   ecx
10581f71:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10581f77:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
10581f7c:	52                                              	push   edx
10581f7d:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10581f83:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10581f89:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10581f8f:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10581f94:	50                                              	push   eax
10581f95:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10581f99:	51                                              	push   ecx
10581f9a:	c7 44 24 34 30 1b b2 10                         	mov    DWORD PTR [esp+0x34],0x10b21b30
10581fa2:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
10581fa7:	e8 a4 a2 ff ff                                  	call   0x1057c250
10581fac:	83 c4 18                                        	add    esp,0x18
10581faf:	8b e5                                           	mov    esp,ebp
10581fb1:	5d                                              	pop    ebp
10581fb2:	c3                                              	ret
10581fb3:	cc                                              	int3
10581fb4:	cc                                              	int3
10581fb5:	cc                                              	int3
10581fb6:	cc                                              	int3
10581fb7:	cc                                              	int3
10581fb8:	cc                                              	int3
10581fb9:	cc                                              	int3
10581fba:	cc                                              	int3
10581fbb:	cc                                              	int3
10581fbc:	cc                                              	int3
10581fbd:	cc                                              	int3
10581fbe:	cc                                              	int3
10581fbf:	cc                                              	int3
