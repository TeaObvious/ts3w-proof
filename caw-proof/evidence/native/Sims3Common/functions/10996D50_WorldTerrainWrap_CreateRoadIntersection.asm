# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996d50 (WorldTerrainWrap_CreateRoadIntersection)
Paired Ghidra pseudocode: 10996D50_WorldTerrainWrap_CreateRoadIntersection.c
Window: [0x10996d50, 0x10996dc0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996dc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996d50: 55 8b ec 83 e4 f0 83 ec 10 a1 c4 00 c7 10 d9 45
10996d60: 14 8b 48 5c f3 0f 10 45 0c f3 0f 10 4d 10 b8 01
10996d70: 00 00 00 39 45 1c f3 0f 11 44 24 0c 0f 94 c2 39
10996d80: 45 18 f3 0f 11 44 24 08 0f 94 c0 f3 0f 11 4c 24
10996d90: 04 f3 0f 11 04 24 0f 28 04 24 52 8d 54 24 04 0f
10996da0: 29 44 24 04 50 51 d9 1c 24 52 e8 31 fd 7a ff 8b
10996db0: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996d50 <.text+0x995d50>:
10996d50:	55                                              	push   ebp
10996d51:	8b ec                                           	mov    ebp,esp
10996d53:	83 e4 f0                                        	and    esp,0xfffffff0
10996d56:	83 ec 10                                        	sub    esp,0x10
10996d59:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10996d5e:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
10996d61:	8b 48 5c                                        	mov    ecx,DWORD PTR [eax+0x5c]
10996d64:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
10996d69:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
10996d6e:	b8 01 00 00 00                                  	mov    eax,0x1
10996d73:	39 45 1c                                        	cmp    DWORD PTR [ebp+0x1c],eax
10996d76:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10996d7c:	0f 94 c2                                        	sete   dl
10996d7f:	39 45 18                                        	cmp    DWORD PTR [ebp+0x18],eax
10996d82:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10996d88:	0f 94 c0                                        	sete   al
10996d8b:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10996d91:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10996d96:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10996d9a:	52                                              	push   edx
10996d9b:	8d 54 24 04                                     	lea    edx,[esp+0x4]
10996d9f:	0f 29 44 24 04                                  	movaps XMMWORD PTR [esp+0x4],xmm0
10996da4:	50                                              	push   eax
10996da5:	51                                              	push   ecx
10996da6:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10996da9:	52                                              	push   edx
10996daa:	e8 31 fd 7a ff                                  	call   0x10146ae0
10996daf:	8b e5                                           	mov    esp,ebp
10996db1:	5d                                              	pop    ebp
10996db2:	c3                                              	ret
10996db3:	cc                                              	int3
10996db4:	cc                                              	int3
10996db5:	cc                                              	int3
10996db6:	cc                                              	int3
10996db7:	cc                                              	int3
10996db8:	cc                                              	int3
10996db9:	cc                                              	int3
10996dba:	cc                                              	int3
10996dbb:	cc                                              	int3
10996dbc:	cc                                              	int3
10996dbd:	cc                                              	int3
10996dbe:	cc                                              	int3
10996dbf:	cc                                              	int3
