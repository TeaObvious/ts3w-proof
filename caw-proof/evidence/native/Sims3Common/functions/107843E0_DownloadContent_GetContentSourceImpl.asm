# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107843e0 (DownloadContent_GetContentSourceImpl)
Paired Ghidra pseudocode: 107843E0_DownloadContent_GetContentSourceImpl.c
Window: [0x107843e0, 0x10784400) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107843e0: 83 ec 10 8d 04 24 50 8d 4c 24 18 e8 c0 97 dd ff
107843f0: 50 e8 9a de ff ff 83 c4 14 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
107843e0 <.text+0x7833e0>:
107843e0:	83 ec 10                                        	sub    esp,0x10
107843e3:	8d 04 24                                        	lea    eax,[esp]
107843e6:	50                                              	push   eax
107843e7:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
107843eb:	e8 c0 97 dd ff                                  	call   0x1055dbb0
107843f0:	50                                              	push   eax
107843f1:	e8 9a de ff ff                                  	call   0x10782290
107843f6:	83 c4 14                                        	add    esp,0x14
107843f9:	c3                                              	ret
107843fa:	cc                                              	int3
107843fb:	cc                                              	int3
107843fc:	cc                                              	int3
107843fd:	cc                                              	int3
107843fe:	cc                                              	int3
107843ff:	cc                                              	int3
