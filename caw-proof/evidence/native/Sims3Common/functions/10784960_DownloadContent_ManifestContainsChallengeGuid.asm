# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784960 (DownloadContent_ManifestContainsChallengeGuid)
Paired Ghidra pseudocode: 10784960_DownloadContent_ManifestContainsChallengeGuid.c
Window: [0x10784960, 0x10784990) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784960: e8 bb 67 dd ff 8b 4c 24 04 8b 10 8b 52 58 51 8b
10784970: c8 ff d2 8b 0d dc 88 c7 10 85 c9 74 0c 83 c1 f8
10784980: 74 07 50 e8 b8 ed ee ff c3 32 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
10784960 <.text+0x783960>:
10784960:	e8 bb 67 dd ff                                  	call   0x1055b120
10784965:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10784969:	8b 10                                           	mov    edx,DWORD PTR [eax]
1078496b:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1078496e:	51                                              	push   ecx
1078496f:	8b c8                                           	mov    ecx,eax
10784971:	ff d2                                           	call   edx
10784973:	8b 0d dc 88 c7 10                               	mov    ecx,DWORD PTR ds:0x10c788dc
10784979:	85 c9                                           	test   ecx,ecx
1078497b:	74 0c                                           	je     0x10784989
1078497d:	83 c1 f8                                        	add    ecx,0xfffffff8
10784980:	74 07                                           	je     0x10784989
10784982:	50                                              	push   eax
10784983:	e8 b8 ed ee ff                                  	call   0x10673740
10784988:	c3                                              	ret
10784989:	32 c0                                           	xor    al,al
1078498b:	c3                                              	ret
1078498c:	cc                                              	int3
1078498d:	cc                                              	int3
1078498e:	cc                                              	int3
1078498f:	cc                                              	int3
