# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039efe0 (CASUtils_GetDefaultThumbnailCASPartKeyImpl)
Paired Ghidra pseudocode: 1039EFE0_CASUtils_GetDefaultThumbnailCASPartKeyImpl.c
Window: [0x1039efe0, 0x1039f050) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039efe0: 83 ec 10 8b 4c 24 20 8b 54 24 1c 33 c0 56 8b 74
1039eff0: 24 18 89 06 89 46 04 89 46 08 89 46 0c 89 44 24
1039f000: 04 89 44 24 08 89 44 24 0c 89 44 24 10 8d 44 24
1039f010: 04 50 8b 44 24 20 51 52 50 e8 32 af 03 00 8b c8
1039f020: e8 1b b6 03 00 84 c0 74 1b 8b 4c 24 0c 8b 54 24
1039f030: 04 8b 44 24 08 89 0e 8b 4c 24 10 89 56 08 89 46
1039f040: 0c 89 4e 04 8b c6 5e 83 c4 10 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1039efe0 <.text+0x39dfe0>:
1039efe0:	83 ec 10                                        	sub    esp,0x10
1039efe3:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1039efe7:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1039efeb:	33 c0                                           	xor    eax,eax
1039efed:	56                                              	push   esi
1039efee:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
1039eff2:	89 06                                           	mov    DWORD PTR [esi],eax
1039eff4:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
1039eff7:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
1039effa:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
1039effd:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
1039f001:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
1039f005:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
1039f009:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1039f00d:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1039f011:	50                                              	push   eax
1039f012:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1039f016:	51                                              	push   ecx
1039f017:	52                                              	push   edx
1039f018:	50                                              	push   eax
1039f019:	e8 32 af 03 00                                  	call   0x103d9f50
1039f01e:	8b c8                                           	mov    ecx,eax
1039f020:	e8 1b b6 03 00                                  	call   0x103da640
1039f025:	84 c0                                           	test   al,al
1039f027:	74 1b                                           	je     0x1039f044
1039f029:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1039f02d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1039f031:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1039f035:	89 0e                                           	mov    DWORD PTR [esi],ecx
1039f037:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1039f03b:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
1039f03e:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
1039f041:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
1039f044:	8b c6                                           	mov    eax,esi
1039f046:	5e                                              	pop    esi
1039f047:	83 c4 10                                        	add    esp,0x10
1039f04a:	c3                                              	ret
1039f04b:	cc                                              	int3
1039f04c:	cc                                              	int3
1039f04d:	cc                                              	int3
1039f04e:	cc                                              	int3
1039f04f:	cc                                              	int3
