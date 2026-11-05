# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982820 (ContentManager_GetContentSource)
Paired Ghidra pseudocode: 10982820_ContentManager_GetContentSource.c
Window: [0x10982820, 0x10982840) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982820: 83 ec 10 8d 44 24 14 50 8d 4c 24 04 51 e8 6e b2
10982830: bd ff 8d 54 24 08 52 e8 54 fa df ff 83 c4 1c c3

LINEAR DISASSEMBLY
10982820 <.text+0x981820>:
10982820:	83 ec 10                                        	sub    esp,0x10
10982823:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10982827:	50                                              	push   eax
10982828:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1098282c:	51                                              	push   ecx
1098282d:	e8 6e b2 bd ff                                  	call   0x1055daa0
10982832:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10982836:	52                                              	push   edx
10982837:	e8 54 fa df ff                                  	call   0x10782290
1098283c:	83 c4 1c                                        	add    esp,0x1c
1098283f:	c3                                              	ret
