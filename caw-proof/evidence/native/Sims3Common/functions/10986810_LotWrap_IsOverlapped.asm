# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986810 (LotWrap_IsOverlapped)
Paired Ghidra pseudocode: 10986810_LotWrap_IsOverlapped.c
Window: [0x10986810, 0x10986860) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986810: 8b 4c 24 04 83 ec 10 85 c9 74 31 8b 44 24 18 8b
10986820: 10 89 14 24 8b 50 04 89 54 24 04 8b 50 08 8b 40
10986830: 0c 89 54 24 08 8d 14 24 52 89 44 24 10 e8 8e aa
10986840: 6f ff f6 d8 1b c0 f7 d8 83 c4 10 c3 33 c0 83 c4
10986850: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986810 <.text+0x985810>:
10986810:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10986814:	83 ec 10                                        	sub    esp,0x10
10986817:	85 c9                                           	test   ecx,ecx
10986819:	74 31                                           	je     0x1098684c
1098681b:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1098681f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10986821:	89 14 24                                        	mov    DWORD PTR [esp],edx
10986824:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10986827:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
1098682b:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1098682e:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10986831:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
10986835:	8d 14 24                                        	lea    edx,[esp]
10986838:	52                                              	push   edx
10986839:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1098683d:	e8 8e aa 6f ff                                  	call   0x100812d0
10986842:	f6 d8                                           	neg    al
10986844:	1b c0                                           	sbb    eax,eax
10986846:	f7 d8                                           	neg    eax
10986848:	83 c4 10                                        	add    esp,0x10
1098684b:	c3                                              	ret
1098684c:	33 c0                                           	xor    eax,eax
1098684e:	83 c4 10                                        	add    esp,0x10
10986851:	c3                                              	ret
10986852:	cc                                              	int3
10986853:	cc                                              	int3
10986854:	cc                                              	int3
10986855:	cc                                              	int3
10986856:	cc                                              	int3
10986857:	cc                                              	int3
10986858:	cc                                              	int3
10986859:	cc                                              	int3
1098685a:	cc                                              	int3
1098685b:	cc                                              	int3
1098685c:	cc                                              	int3
1098685d:	cc                                              	int3
1098685e:	cc                                              	int3
1098685f:	cc                                              	int3
