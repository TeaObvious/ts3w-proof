# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10534660 (LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl)
Paired Ghidra pseudocode: 10534660_LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl.c
Window: [0x10534660, 0x105346a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105346a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10534660: e8 bb 6a 02 00 85 c0 75 03 32 c0 c3 8b 4c 24 04
10534670: 8b 10 8b 92 d8 00 00 00 51 8b c8 ff d2 85 c0 74
10534680: 1c 8b 48 04 83 c1 ff 89 48 04 75 11 c7 40 04 01
10534690: 00 00 00 8b 10 8b c8 8b 02 6a 01 ff d0 b0 01 c3

LINEAR DISASSEMBLY
10534660 <.text+0x533660>:
10534660:	e8 bb 6a 02 00                                  	call   0x1055b120
10534665:	85 c0                                           	test   eax,eax
10534667:	75 03                                           	jne    0x1053466c
10534669:	32 c0                                           	xor    al,al
1053466b:	c3                                              	ret
1053466c:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10534670:	8b 10                                           	mov    edx,DWORD PTR [eax]
10534672:	8b 92 d8 00 00 00                               	mov    edx,DWORD PTR [edx+0xd8]
10534678:	51                                              	push   ecx
10534679:	8b c8                                           	mov    ecx,eax
1053467b:	ff d2                                           	call   edx
1053467d:	85 c0                                           	test   eax,eax
1053467f:	74 1c                                           	je     0x1053469d
10534681:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
10534684:	83 c1 ff                                        	add    ecx,0xffffffff
10534687:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1053468a:	75 11                                           	jne    0x1053469d
1053468c:	c7 40 04 01 00 00 00                            	mov    DWORD PTR [eax+0x4],0x1
10534693:	8b 10                                           	mov    edx,DWORD PTR [eax]
10534695:	8b c8                                           	mov    ecx,eax
10534697:	8b 02                                           	mov    eax,DWORD PTR [edx]
10534699:	6a 01                                           	push   0x1
1053469b:	ff d0                                           	call   eax
1053469d:	b0 01                                           	mov    al,0x1
1053469f:	c3                                              	ret
