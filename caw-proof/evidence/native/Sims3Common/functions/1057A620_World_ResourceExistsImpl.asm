# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057a620 (World_ResourceExistsImpl)
Paired Ghidra pseudocode: 1057A620_World_ResourceExistsImpl.c
Window: [0x1057a620, 0x1057a660) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057a660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057a620: 83 ec 10 e8 a8 aa 36 00 8b 4c 24 1c 8b 54 24 20
1057a630: 89 0c 24 8b 4c 24 14 89 54 24 04 8b 54 24 18 89
1057a640: 4c 24 08 89 54 24 0c 8b 10 8b 52 44 8d 0c 24 51
1057a650: 8b c8 ff d2 f7 d8 1b c0 f7 d8 83 c4 10 c3 cc cc

LINEAR DISASSEMBLY
1057a620 <.text+0x579620>:
1057a620:	83 ec 10                                        	sub    esp,0x10
1057a623:	e8 a8 aa 36 00                                  	call   0x108e50d0
1057a628:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1057a62c:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1057a630:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
1057a633:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1057a637:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
1057a63b:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1057a63f:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1057a643:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
1057a647:	8b 10                                           	mov    edx,DWORD PTR [eax]
1057a649:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
1057a64c:	8d 0c 24                                        	lea    ecx,[esp]
1057a64f:	51                                              	push   ecx
1057a650:	8b c8                                           	mov    ecx,eax
1057a652:	ff d2                                           	call   edx
1057a654:	f7 d8                                           	neg    eax
1057a656:	1b c0                                           	sbb    eax,eax
1057a658:	f7 d8                                           	neg    eax
1057a65a:	83 c4 10                                        	add    esp,0x10
1057a65d:	c3                                              	ret
1057a65e:	cc                                              	int3
1057a65f:	cc                                              	int3
