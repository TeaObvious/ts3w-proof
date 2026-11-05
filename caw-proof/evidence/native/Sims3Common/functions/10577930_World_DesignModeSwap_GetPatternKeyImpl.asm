# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577930 (World_DesignModeSwap_GetPatternKeyImpl)
Paired Ghidra pseudocode: 10577930_World_DesignModeSwap_GetPatternKeyImpl.c
Window: [0x10577930, 0x105779b0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x105779b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577930: 33 c0 83 ec 10 56 8b 74 24 18 89 06 89 46 04 89
10577940: 46 08 89 46 0c e8 d6 37 fe ff 8b 4c 24 1c 8b d1
10577950: 81 e2 00 00 00 ff 81 fa 00 00 00 45 75 3d 8b 10
10577960: 51 8b c8 8b 82 cc 00 00 00 ff d0 85 c0 74 2c 8b
10577970: 4c 24 20 51 8d 54 24 08 52 8b c8 e8 30 8d aa ff
10577980: 8b 44 24 0c 8b 4c 24 10 8b 54 24 04 89 06 8b 44
10577990: 24 08 89 4e 04 89 56 08 89 46 0c 8b c6 5e 83 c4
105779a0: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577930 <.text+0x576930>:
10577930:	33 c0                                           	xor    eax,eax
10577932:	83 ec 10                                        	sub    esp,0x10
10577935:	56                                              	push   esi
10577936:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
1057793a:	89 06                                           	mov    DWORD PTR [esi],eax
1057793c:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
1057793f:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
10577942:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
10577945:	e8 d6 37 fe ff                                  	call   0x1055b120
1057794a:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1057794e:	8b d1                                           	mov    edx,ecx
10577950:	81 e2 00 00 00 ff                               	and    edx,0xff000000
10577956:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
1057795c:	75 3d                                           	jne    0x1057799b
1057795e:	8b 10                                           	mov    edx,DWORD PTR [eax]
10577960:	51                                              	push   ecx
10577961:	8b c8                                           	mov    ecx,eax
10577963:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10577969:	ff d0                                           	call   eax
1057796b:	85 c0                                           	test   eax,eax
1057796d:	74 2c                                           	je     0x1057799b
1057796f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10577973:	51                                              	push   ecx
10577974:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10577978:	52                                              	push   edx
10577979:	8b c8                                           	mov    ecx,eax
1057797b:	e8 30 8d aa ff                                  	call   0x100206b0
10577980:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10577984:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10577988:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057798c:	89 06                                           	mov    DWORD PTR [esi],eax
1057798e:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10577992:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
10577995:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
10577998:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
1057799b:	8b c6                                           	mov    eax,esi
1057799d:	5e                                              	pop    esi
1057799e:	83 c4 10                                        	add    esp,0x10
105779a1:	c3                                              	ret
105779a2:	cc                                              	int3
105779a3:	cc                                              	int3
105779a4:	cc                                              	int3
105779a5:	cc                                              	int3
105779a6:	cc                                              	int3
105779a7:	cc                                              	int3
105779a8:	cc                                              	int3
105779a9:	cc                                              	int3
105779aa:	cc                                              	int3
105779ab:	cc                                              	int3
105779ac:	cc                                              	int3
105779ad:	cc                                              	int3
105779ae:	cc                                              	int3
105779af:	cc                                              	int3
