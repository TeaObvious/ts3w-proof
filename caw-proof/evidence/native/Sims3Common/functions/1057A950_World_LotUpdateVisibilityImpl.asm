# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057a950 (World_LotUpdateVisibilityImpl)
Paired Ghidra pseudocode: 1057A950_World_LotUpdateVisibilityImpl.c
Window: [0x1057a950, 0x1057a980) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057a980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057a950: 8b 0d c4 00 c7 10 85 c9 74 1c 8b 44 24 08 8b 54
1057a960: 24 04 6a 00 50 52 e8 a5 c6 cb ff 85 c0 74 07 8b
1057a970: c8 e9 0a 06 b0 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057a950 <.text+0x579950>:
1057a950:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057a956:	85 c9                                           	test   ecx,ecx
1057a958:	74 1c                                           	je     0x1057a976
1057a95a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057a95e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057a962:	6a 00                                           	push   0x0
1057a964:	50                                              	push   eax
1057a965:	52                                              	push   edx
1057a966:	e8 a5 c6 cb ff                                  	call   0x10237010
1057a96b:	85 c0                                           	test   eax,eax
1057a96d:	74 07                                           	je     0x1057a976
1057a96f:	8b c8                                           	mov    ecx,eax
1057a971:	e9 0a 06 b0 ff                                  	jmp    0x1007af80
1057a976:	c3                                              	ret
1057a977:	cc                                              	int3
1057a978:	cc                                              	int3
1057a979:	cc                                              	int3
1057a97a:	cc                                              	int3
1057a97b:	cc                                              	int3
1057a97c:	cc                                              	int3
1057a97d:	cc                                              	int3
1057a97e:	cc                                              	int3
1057a97f:	cc                                              	int3
