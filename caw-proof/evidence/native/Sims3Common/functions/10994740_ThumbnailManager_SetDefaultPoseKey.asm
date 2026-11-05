# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10994740 (ThumbnailManager_SetDefaultPoseKey)
Paired Ghidra pseudocode: 10994740_ThumbnailManager_SetDefaultPoseKey.c
Window: [0x10994740, 0x10994770) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10994770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10994740: 83 ec 10 56 8b 35 50 11 c7 10 85 f6 74 1a 8d 44
10994750: 24 18 50 8d 4c 24 08 51 e8 43 93 bc ff 83 c4 08
10994760: 50 8b ce e8 f8 dd 98 ff 5e 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10994740 <.text+0x993740>:
10994740:	83 ec 10                                        	sub    esp,0x10
10994743:	56                                              	push   esi
10994744:	8b 35 50 11 c7 10                               	mov    esi,DWORD PTR ds:0x10c71150
1099474a:	85 f6                                           	test   esi,esi
1099474c:	74 1a                                           	je     0x10994768
1099474e:	8d 44 24 18                                     	lea    eax,[esp+0x18]
10994752:	50                                              	push   eax
10994753:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10994757:	51                                              	push   ecx
10994758:	e8 43 93 bc ff                                  	call   0x1055daa0
1099475d:	83 c4 08                                        	add    esp,0x8
10994760:	50                                              	push   eax
10994761:	8b ce                                           	mov    ecx,esi
10994763:	e8 f8 dd 98 ff                                  	call   0x10322560
10994768:	5e                                              	pop    esi
10994769:	83 c4 10                                        	add    esp,0x10
1099476c:	c3                                              	ret
1099476d:	cc                                              	int3
1099476e:	cc                                              	int3
1099476f:	cc                                              	int3
