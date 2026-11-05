# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e7f0 (SceneManWrap_Shutdown)
Paired Ghidra pseudocode: 1098E7F0_SceneManWrap_Shutdown.c
Window: [0x1098e7f0, 0x1098e830) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e7f0: 56 e8 aa fb b4 ff 8b 74 24 08 3b c6 75 1c 6a 00
1098e800: e8 ab fb b4 ff 83 c4 04 e8 53 e9 b7 ff 85 c0 74
1098e810: 09 8b 10 8b c8 8b 42 04 ff d0 8b ce 5e e9 8e 0d
1098e820: b5 ff cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e7f0 <.text+0x98d7f0>:
1098e7f0:	56                                              	push   esi
1098e7f1:	e8 aa fb b4 ff                                  	call   0x104de3a0
1098e7f6:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1098e7fa:	3b c6                                           	cmp    eax,esi
1098e7fc:	75 1c                                           	jne    0x1098e81a
1098e7fe:	6a 00                                           	push   0x0
1098e800:	e8 ab fb b4 ff                                  	call   0x104de3b0
1098e805:	83 c4 04                                        	add    esp,0x4
1098e808:	e8 53 e9 b7 ff                                  	call   0x1050d160
1098e80d:	85 c0                                           	test   eax,eax
1098e80f:	74 09                                           	je     0x1098e81a
1098e811:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098e813:	8b c8                                           	mov    ecx,eax
1098e815:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098e818:	ff d0                                           	call   eax
1098e81a:	8b ce                                           	mov    ecx,esi
1098e81c:	5e                                              	pop    esi
1098e81d:	e9 8e 0d b5 ff                                  	jmp    0x104df5b0
1098e822:	cc                                              	int3
1098e823:	cc                                              	int3
1098e824:	cc                                              	int3
1098e825:	cc                                              	int3
1098e826:	cc                                              	int3
1098e827:	cc                                              	int3
1098e828:	cc                                              	int3
1098e829:	cc                                              	int3
1098e82a:	cc                                              	int3
1098e82b:	cc                                              	int3
1098e82c:	cc                                              	int3
1098e82d:	cc                                              	int3
1098e82e:	cc                                              	int3
1098e82f:	cc                                              	int3
