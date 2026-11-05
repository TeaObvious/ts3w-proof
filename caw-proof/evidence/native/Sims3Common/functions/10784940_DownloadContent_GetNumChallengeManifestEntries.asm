# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784940 (DownloadContent_GetNumChallengeManifestEntries)
Paired Ghidra pseudocode: 10784940_DownloadContent_GetNumChallengeManifestEntries.c
Window: [0x10784940, 0x10784960) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784960
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784940: a1 dc 88 c7 10 85 c0 74 0c 8d 48 f8 85 c9 74 05
10784950: e9 5b ec ee ff 33 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10784940 <.text+0x783940>:
10784940:	a1 dc 88 c7 10                                  	mov    eax,ds:0x10c788dc
10784945:	85 c0                                           	test   eax,eax
10784947:	74 0c                                           	je     0x10784955
10784949:	8d 48 f8                                        	lea    ecx,[eax-0x8]
1078494c:	85 c9                                           	test   ecx,ecx
1078494e:	74 05                                           	je     0x10784955
10784950:	e9 5b ec ee ff                                  	jmp    0x106735b0
10784955:	33 c0                                           	xor    eax,eax
10784957:	c3                                              	ret
10784958:	cc                                              	int3
10784959:	cc                                              	int3
1078495a:	cc                                              	int3
1078495b:	cc                                              	int3
1078495c:	cc                                              	int3
1078495d:	cc                                              	int3
1078495e:	cc                                              	int3
1078495f:	cc                                              	int3
