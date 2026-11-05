# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109927b0 (Sims3PackFile_GetMinRequiredGameVersion)
Paired Ghidra pseudocode: 109927B0_Sims3PackFile_GetMinRequiredGameVersion.c
Window: [0x109927b0, 0x10992820) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10992820
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109927b0: 83 ec 20 8d 44 24 10 56 50 e8 52 dd e0 ff 83 c4
109927c0: 04 8d 4c 24 04 b8 44 82 ca 10 51 8d 4c 24 18 c7
109927d0: 44 24 14 1c 74 b9 10 89 44 24 08 89 44 24 0c c7
109927e0: 44 24 10 46 82 ca 10 e8 04 b4 e0 ff 8b 54 24 04
109927f0: 52 ff 15 c4 b6 aa 10 8b 4c 24 0c 8b f0 8b 44 24
10992800: 04 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50
10992810: e8 7b 66 f8 ff 83 c4 04 8b c6 5e 83 c4 20 c3 cc

LINEAR DISASSEMBLY
109927b0 <.text+0x9917b0>:
109927b0:	83 ec 20                                        	sub    esp,0x20
109927b3:	8d 44 24 10                                     	lea    eax,[esp+0x10]
109927b7:	56                                              	push   esi
109927b8:	50                                              	push   eax
109927b9:	e8 52 dd e0 ff                                  	call   0x107a0510
109927be:	83 c4 04                                        	add    esp,0x4
109927c1:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
109927c5:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
109927ca:	51                                              	push   ecx
109927cb:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
109927cf:	c7 44 24 14 1c 74 b9 10                         	mov    DWORD PTR [esp+0x14],0x10b9741c
109927d7:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
109927db:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
109927df:	c7 44 24 10 46 82 ca 10                         	mov    DWORD PTR [esp+0x10],0x10ca8246
109927e7:	e8 04 b4 e0 ff                                  	call   0x1079dbf0
109927ec:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
109927f0:	52                                              	push   edx
109927f1:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
109927f7:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
109927fb:	8b f0                                           	mov    esi,eax
109927fd:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10992801:	2b c8                                           	sub    ecx,eax
10992803:	83 e1 fe                                        	and    ecx,0xfffffffe
10992806:	83 f9 02                                        	cmp    ecx,0x2
10992809:	7e 0d                                           	jle    0x10992818
1099280b:	85 c0                                           	test   eax,eax
1099280d:	74 09                                           	je     0x10992818
1099280f:	50                                              	push   eax
10992810:	e8 7b 66 f8 ff                                  	call   0x10918e90
10992815:	83 c4 04                                        	add    esp,0x4
10992818:	8b c6                                           	mov    eax,esi
1099281a:	5e                                              	pop    esi
1099281b:	83 c4 20                                        	add    esp,0x20
1099281e:	c3                                              	ret
1099281f:	cc                                              	int3
