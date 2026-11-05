# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10785000 (DownloadContent_ImportHouseholdContentsFromTravelBinImpl)
Paired Ghidra pseudocode: 10785000_DownloadContent_ImportHouseholdContentsFromTravelBinImpl.c
Window: [0x10785000, 0x10785090) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10785090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10785000: 83 ec 1c e8 18 61 dd ff 85 c0 75 06 33 d2 83 c4
10785010: 1c c3 8b 0d 94 de c8 10 56 8b 35 d8 e9 c6 10 8d
10785020: 44 24 04 50 c7 44 24 08 00 00 00 00 e8 ff ba 00
10785030: 00 8b 44 24 04 85 c0 75 07 33 d2 5e 83 c4 1c c3
10785040: 57 6a 01 50 8d 4c 24 14 e8 43 58 e4 ff 8d 4c 24
10785050: 0c 51 8b ce e8 77 78 91 ff 8d 4c 24 0c 8b f0 8b
10785060: fa e8 9a 58 e4 ff 8b 44 24 08 85 c0 74 0b 8b 50
10785070: 04 8d 48 04 8b 42 04 ff d0 8b d7 5f 8b c6 5e 83
10785080: c4 1c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10785000 <.text+0x784000>:
10785000:	83 ec 1c                                        	sub    esp,0x1c
10785003:	e8 18 61 dd ff                                  	call   0x1055b120
10785008:	85 c0                                           	test   eax,eax
1078500a:	75 06                                           	jne    0x10785012
1078500c:	33 d2                                           	xor    edx,edx
1078500e:	83 c4 1c                                        	add    esp,0x1c
10785011:	c3                                              	ret
10785012:	8b 0d 94 de c8 10                               	mov    ecx,DWORD PTR ds:0x10c8de94
10785018:	56                                              	push   esi
10785019:	8b 35 d8 e9 c6 10                               	mov    esi,DWORD PTR ds:0x10c6e9d8
1078501f:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10785023:	50                                              	push   eax
10785024:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
1078502c:	e8 ff ba 00 00                                  	call   0x10790b30
10785031:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10785035:	85 c0                                           	test   eax,eax
10785037:	75 07                                           	jne    0x10785040
10785039:	33 d2                                           	xor    edx,edx
1078503b:	5e                                              	pop    esi
1078503c:	83 c4 1c                                        	add    esp,0x1c
1078503f:	c3                                              	ret
10785040:	57                                              	push   edi
10785041:	6a 01                                           	push   0x1
10785043:	50                                              	push   eax
10785044:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10785048:	e8 43 58 e4 ff                                  	call   0x105ca890
1078504d:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10785051:	51                                              	push   ecx
10785052:	8b ce                                           	mov    ecx,esi
10785054:	e8 77 78 91 ff                                  	call   0x1009c8d0
10785059:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1078505d:	8b f0                                           	mov    esi,eax
1078505f:	8b fa                                           	mov    edi,edx
10785061:	e8 9a 58 e4 ff                                  	call   0x105ca900
10785066:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1078506a:	85 c0                                           	test   eax,eax
1078506c:	74 0b                                           	je     0x10785079
1078506e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10785071:	8d 48 04                                        	lea    ecx,[eax+0x4]
10785074:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10785077:	ff d0                                           	call   eax
10785079:	8b d7                                           	mov    edx,edi
1078507b:	5f                                              	pop    edi
1078507c:	8b c6                                           	mov    eax,esi
1078507e:	5e                                              	pop    esi
1078507f:	83 c4 1c                                        	add    esp,0x1c
10785082:	c3                                              	ret
10785083:	cc                                              	int3
10785084:	cc                                              	int3
10785085:	cc                                              	int3
10785086:	cc                                              	int3
10785087:	cc                                              	int3
10785088:	cc                                              	int3
10785089:	cc                                              	int3
1078508a:	cc                                              	int3
1078508b:	cc                                              	int3
1078508c:	cc                                              	int3
1078508d:	cc                                              	int3
1078508e:	cc                                              	int3
1078508f:	cc                                              	int3
