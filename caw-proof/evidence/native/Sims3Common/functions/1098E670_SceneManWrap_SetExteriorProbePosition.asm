# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e670 (SceneManWrap_SetExteriorProbePosition)
Paired Ghidra pseudocode: 1098E670_SceneManWrap_SetExteriorProbePosition.c
Window: [0x1098e670, 0x1098e6a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e6a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e670: 8b 4c 24 04 e8 b7 fd b4 ff 85 c0 74 21 d9 44 24
1098e680: 10 83 ec 0c d9 5c 24 08 8b c8 d9 44 24 18 d9 5c
1098e690: 24 04 d9 44 24 14 d9 1c 24 e8 02 4f b1 ff c3 cc

LINEAR DISASSEMBLY
1098e670 <.text+0x98d670>:
1098e670:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098e674:	e8 b7 fd b4 ff                                  	call   0x104de430
1098e679:	85 c0                                           	test   eax,eax
1098e67b:	74 21                                           	je     0x1098e69e
1098e67d:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
1098e681:	83 ec 0c                                        	sub    esp,0xc
1098e684:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
1098e688:	8b c8                                           	mov    ecx,eax
1098e68a:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
1098e68e:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1098e692:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
1098e696:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098e699:	e8 02 4f b1 ff                                  	call   0x104a35a0
1098e69e:	c3                                              	ret
1098e69f:	cc                                              	int3
