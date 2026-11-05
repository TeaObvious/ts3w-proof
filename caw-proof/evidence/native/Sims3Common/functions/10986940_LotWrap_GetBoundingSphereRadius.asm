# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986940 (LotWrap_GetBoundingSphereRadius)
Paired Ghidra pseudocode: 10986940_LotWrap_GetBoundingSphereRadius.c
Window: [0x10986940, 0x10986990) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986940: 55 8b ec 83 e4 f0 8b 45 08 d9 ee 83 ec 40 85 c0
10986950: 74 33 0f 28 80 30 02 00 00 d9 5c 24 0c 0f 29 44
10986960: 24 20 0f 28 80 40 02 00 00 8d 44 24 0c 50 8d 4c
10986970: 24 14 51 8d 4c 24 28 0f 29 44 24 38 e8 4f c3 af
10986980: ff d9 44 24 0c 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986940 <.text+0x985940>:
10986940:	55                                              	push   ebp
10986941:	8b ec                                           	mov    ebp,esp
10986943:	83 e4 f0                                        	and    esp,0xfffffff0
10986946:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10986949:	d9 ee                                           	fldz
1098694b:	83 ec 40                                        	sub    esp,0x40
1098694e:	85 c0                                           	test   eax,eax
10986950:	74 33                                           	je     0x10986985
10986952:	0f 28 80 30 02 00 00                            	movaps xmm0,XMMWORD PTR [eax+0x230]
10986959:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1098695d:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10986962:	0f 28 80 40 02 00 00                            	movaps xmm0,XMMWORD PTR [eax+0x240]
10986969:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
1098696d:	50                                              	push   eax
1098696e:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10986972:	51                                              	push   ecx
10986973:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10986977:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
1098697c:	e8 4f c3 af ff                                  	call   0x10482cd0
10986981:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10986985:	8b e5                                           	mov    esp,ebp
10986987:	5d                                              	pop    ebp
10986988:	c3                                              	ret
10986989:	cc                                              	int3
1098698a:	cc                                              	int3
1098698b:	cc                                              	int3
1098698c:	cc                                              	int3
1098698d:	cc                                              	int3
1098698e:	cc                                              	int3
1098698f:	cc                                              	int3
