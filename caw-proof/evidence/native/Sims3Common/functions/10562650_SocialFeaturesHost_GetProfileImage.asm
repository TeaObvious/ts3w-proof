# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562650 (SocialFeaturesHost_GetProfileImage)
Paired Ghidra pseudocode: 10562650_SocialFeaturesHost_GetProfileImage.c
Window: [0x10562650, 0x10562690) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562690
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562650: 8b 44 24 0c 8b 4c 24 08 83 ec 10 50 51 8d 54 24
10562660: 08 52 e8 09 c9 2a 00 8b 4c 24 20 8b 10 89 11 8b
10562670: 50 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41
10562680: 0c 8b c1 83 c4 1c c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562650 <.text+0x561650>:
10562650:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10562654:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10562658:	83 ec 10                                        	sub    esp,0x10
1056265b:	50                                              	push   eax
1056265c:	51                                              	push   ecx
1056265d:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10562661:	52                                              	push   edx
10562662:	e8 09 c9 2a 00                                  	call   0x1080ef70
10562667:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1056266b:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056266d:	89 11                                           	mov    DWORD PTR [ecx],edx
1056266f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10562672:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10562675:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10562678:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
1056267b:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1056267e:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10562681:	8b c1                                           	mov    eax,ecx
10562683:	83 c4 1c                                        	add    esp,0x1c
10562686:	c3                                              	ret
10562687:	cc                                              	int3
10562688:	cc                                              	int3
10562689:	cc                                              	int3
1056268a:	cc                                              	int3
1056268b:	cc                                              	int3
1056268c:	cc                                              	int3
1056268d:	cc                                              	int3
1056268e:	cc                                              	int3
1056268f:	cc                                              	int3
