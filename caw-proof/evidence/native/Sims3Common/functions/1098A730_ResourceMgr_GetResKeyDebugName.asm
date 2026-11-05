# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098a730 (ResourceMgr_GetResKeyDebugName)
Paired Ghidra pseudocode: 1098A730_ResourceMgr_GetResKeyDebugName.c
Window: [0x1098a730, 0x1098a7c0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098a7c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098a730: 83 ec 30 8b 44 24 34 8b 08 8b 50 04 89 4c 24 08
1098a740: 8b 48 08 89 54 24 0c 8b 50 0c 8d 04 24 89 0c 24
1098a750: 50 8d 4c 24 24 51 89 54 24 0c e8 11 1d c4 ff 50
1098a760: 8d 54 24 1c 52 e8 86 c7 f9 ff 8b 4c 24 38 8b 44
1098a770: 24 30 2b c8 83 c4 10 83 f9 01 7e 0d 85 c0 74 09
1098a780: 50 e8 0a e7 f8 ff 83 c4 04 8b 54 24 10 56 52 ff
1098a790: 15 c4 b6 aa 10 8b 4c 24 1c 8b f0 8b 44 24 14 2b
1098a7a0: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 dd
1098a7b0: e6 f8 ff 83 c4 04 8b c6 5e 83 c4 30 c3 cc cc cc

LINEAR DISASSEMBLY
1098a730 <.text+0x989730>:
1098a730:	83 ec 30                                        	sub    esp,0x30
1098a733:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
1098a737:	8b 08                                           	mov    ecx,DWORD PTR [eax]
1098a739:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098a73c:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1098a740:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
1098a743:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
1098a747:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098a74a:	8d 04 24                                        	lea    eax,[esp]
1098a74d:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
1098a750:	50                                              	push   eax
1098a751:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1098a755:	51                                              	push   ecx
1098a756:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
1098a75a:	e8 11 1d c4 ff                                  	call   0x105cc470
1098a75f:	50                                              	push   eax
1098a760:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
1098a764:	52                                              	push   edx
1098a765:	e8 86 c7 f9 ff                                  	call   0x10926ef0
1098a76a:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
1098a76e:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1098a772:	2b c8                                           	sub    ecx,eax
1098a774:	83 c4 10                                        	add    esp,0x10
1098a777:	83 f9 01                                        	cmp    ecx,0x1
1098a77a:	7e 0d                                           	jle    0x1098a789
1098a77c:	85 c0                                           	test   eax,eax
1098a77e:	74 09                                           	je     0x1098a789
1098a780:	50                                              	push   eax
1098a781:	e8 0a e7 f8 ff                                  	call   0x10918e90
1098a786:	83 c4 04                                        	add    esp,0x4
1098a789:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1098a78d:	56                                              	push   esi
1098a78e:	52                                              	push   edx
1098a78f:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1098a795:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1098a799:	8b f0                                           	mov    esi,eax
1098a79b:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1098a79f:	2b c8                                           	sub    ecx,eax
1098a7a1:	83 e1 fe                                        	and    ecx,0xfffffffe
1098a7a4:	83 f9 02                                        	cmp    ecx,0x2
1098a7a7:	7e 0d                                           	jle    0x1098a7b6
1098a7a9:	85 c0                                           	test   eax,eax
1098a7ab:	74 09                                           	je     0x1098a7b6
1098a7ad:	50                                              	push   eax
1098a7ae:	e8 dd e6 f8 ff                                  	call   0x10918e90
1098a7b3:	83 c4 04                                        	add    esp,0x4
1098a7b6:	8b c6                                           	mov    eax,esi
1098a7b8:	5e                                              	pop    esi
1098a7b9:	83 c4 30                                        	add    esp,0x30
1098a7bc:	c3                                              	ret
1098a7bd:	cc                                              	int3
1098a7be:	cc                                              	int3
1098a7bf:	cc                                              	int3
