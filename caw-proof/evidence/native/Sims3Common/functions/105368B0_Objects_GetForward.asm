# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105368b0 (Objects_GetForward)
Paired Ghidra pseudocode: 105368B0_Objects_GetForward.c
Window: [0x105368b0, 0x10536930) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105368b0: 55 8b ec 83 e4 f0 83 ec 4c 56 e8 e1 38 1f 00 8b
105368c0: 4d 10 8b 55 0c 51 52 8b c8 e8 e2 42 1f 00 85 c0
105368d0: 74 36 8b 0d 98 d9 c8 10 51 8b c8 e8 c0 04 1f 00
105368e0: 85 c0 74 24 8d 54 24 10 52 8b c8 e8 20 3a 21 00
105368f0: 8b 75 08 8d 44 24 30 50 56 e8 22 73 02 00 83 c4
10536900: 08 8b c6 5e 8b e5 5d c3 d9 e8 8b 75 08 83 ec 0c
10536910: d9 5c 24 08 d9 ee 8b ce d9 54 24 04 d9 1c 24 e8
10536920: 1c 71 02 00 8b c6 5e 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
105368b0 <.text+0x5358b0>:
105368b0:	55                                              	push   ebp
105368b1:	8b ec                                           	mov    ebp,esp
105368b3:	83 e4 f0                                        	and    esp,0xfffffff0
105368b6:	83 ec 4c                                        	sub    esp,0x4c
105368b9:	56                                              	push   esi
105368ba:	e8 e1 38 1f 00                                  	call   0x1072a1a0
105368bf:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
105368c2:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
105368c5:	51                                              	push   ecx
105368c6:	52                                              	push   edx
105368c7:	8b c8                                           	mov    ecx,eax
105368c9:	e8 e2 42 1f 00                                  	call   0x1072abb0
105368ce:	85 c0                                           	test   eax,eax
105368d0:	74 36                                           	je     0x10536908
105368d2:	8b 0d 98 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d998
105368d8:	51                                              	push   ecx
105368d9:	8b c8                                           	mov    ecx,eax
105368db:	e8 c0 04 1f 00                                  	call   0x10726da0
105368e0:	85 c0                                           	test   eax,eax
105368e2:	74 24                                           	je     0x10536908
105368e4:	8d 54 24 10                                     	lea    edx,[esp+0x10]
105368e8:	52                                              	push   edx
105368e9:	8b c8                                           	mov    ecx,eax
105368eb:	e8 20 3a 21 00                                  	call   0x1074a310
105368f0:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
105368f3:	8d 44 24 30                                     	lea    eax,[esp+0x30]
105368f7:	50                                              	push   eax
105368f8:	56                                              	push   esi
105368f9:	e8 22 73 02 00                                  	call   0x1055dc20
105368fe:	83 c4 08                                        	add    esp,0x8
10536901:	8b c6                                           	mov    eax,esi
10536903:	5e                                              	pop    esi
10536904:	8b e5                                           	mov    esp,ebp
10536906:	5d                                              	pop    ebp
10536907:	c3                                              	ret
10536908:	d9 e8                                           	fld1
1053690a:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
1053690d:	83 ec 0c                                        	sub    esp,0xc
10536910:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
10536914:	d9 ee                                           	fldz
10536916:	8b ce                                           	mov    ecx,esi
10536918:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
1053691c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053691f:	e8 1c 71 02 00                                  	call   0x1055da40
10536924:	8b c6                                           	mov    eax,esi
10536926:	5e                                              	pop    esi
10536927:	8b e5                                           	mov    esp,ebp
10536929:	5d                                              	pop    ebp
1053692a:	c3                                              	ret
1053692b:	cc                                              	int3
1053692c:	cc                                              	int3
1053692d:	cc                                              	int3
1053692e:	cc                                              	int3
1053692f:	cc                                              	int3
