# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566a40 (SocialFeaturesHost_GetGiftPostGiftName)
Paired Ghidra pseudocode: 10566A40_SocialFeaturesHost_GetGiftPostGiftName.c
Window: [0x10566a40, 0x10566a60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566a60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566a40: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10566a50: 08 51 52 50 e8 a7 dd ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10566a40 <.text+0x565a40>:
10566a40:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10566a44:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10566a48:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10566a4c:	50                                              	push   eax
10566a4d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10566a51:	51                                              	push   ecx
10566a52:	52                                              	push   edx
10566a53:	50                                              	push   eax
10566a54:	e8 a7 dd ff ff                                  	call   0x10564800
10566a59:	83 c4 10                                        	add    esp,0x10
10566a5c:	c3                                              	ret
10566a5d:	cc                                              	int3
10566a5e:	cc                                              	int3
10566a5f:	cc                                              	int3
