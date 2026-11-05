# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109907f0 (SimBuilderWrap_SetFurParameterTexture)
Paired Ghidra pseudocode: 109907F0_SimBuilderWrap_SetFurParameterTexture.c
Window: [0x109907f0, 0x10990840) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109907f0: 55 8b ec 83 e4 f0 8b 4d 08 83 ec 38 85 c9 56 57
10990800: 74 32 8b 45 18 8b 55 1c 8b 75 14 8b 7d 10 89 44
10990810: 24 30 8d 44 24 10 89 54 24 34 8b 55 0c 50 52 c7
10990820: 44 24 18 07 00 00 00 89 7c 24 40 89 74 24 44 e8
10990830: 8c ad a4 ff 5f 5e 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
109907f0 <.text+0x98f7f0>:
109907f0:	55                                              	push   ebp
109907f1:	8b ec                                           	mov    ebp,esp
109907f3:	83 e4 f0                                        	and    esp,0xfffffff0
109907f6:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
109907f9:	83 ec 38                                        	sub    esp,0x38
109907fc:	85 c9                                           	test   ecx,ecx
109907fe:	56                                              	push   esi
109907ff:	57                                              	push   edi
10990800:	74 32                                           	je     0x10990834
10990802:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
10990805:	8b 55 1c                                        	mov    edx,DWORD PTR [ebp+0x1c]
10990808:	8b 75 14                                        	mov    esi,DWORD PTR [ebp+0x14]
1099080b:	8b 7d 10                                        	mov    edi,DWORD PTR [ebp+0x10]
1099080e:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
10990812:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10990816:	89 54 24 34                                     	mov    DWORD PTR [esp+0x34],edx
1099081a:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
1099081d:	50                                              	push   eax
1099081e:	52                                              	push   edx
1099081f:	c7 44 24 18 07 00 00 00                         	mov    DWORD PTR [esp+0x18],0x7
10990827:	89 7c 24 40                                     	mov    DWORD PTR [esp+0x40],edi
1099082b:	89 74 24 44                                     	mov    DWORD PTR [esp+0x44],esi
1099082f:	e8 8c ad a4 ff                                  	call   0x103db5c0
10990834:	5f                                              	pop    edi
10990835:	5e                                              	pop    esi
10990836:	8b e5                                           	mov    esp,ebp
10990838:	5d                                              	pop    ebp
10990839:	c3                                              	ret
1099083a:	cc                                              	int3
1099083b:	cc                                              	int3
1099083c:	cc                                              	int3
1099083d:	cc                                              	int3
1099083e:	cc                                              	int3
1099083f:	cc                                              	int3
