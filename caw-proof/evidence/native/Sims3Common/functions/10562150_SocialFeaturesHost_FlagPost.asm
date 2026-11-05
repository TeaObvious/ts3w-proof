# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562150 (SocialFeaturesHost_FlagPost)
Paired Ghidra pseudocode: 10562150_SocialFeaturesHost_FlagPost.c
Window: [0x10562150, 0x10562180) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562150: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
10562160: 0c 51 8b 4c 24 0c 52 50 51 e8 d2 bf 2a 00 83 c4
10562170: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562150 <.text+0x561150>:
10562150:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10562154:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10562158:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1056215c:	50                                              	push   eax
1056215d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10562161:	51                                              	push   ecx
10562162:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10562166:	52                                              	push   edx
10562167:	50                                              	push   eax
10562168:	51                                              	push   ecx
10562169:	e8 d2 bf 2a 00                                  	call   0x1080e140
1056216e:	83 c4 14                                        	add    esp,0x14
10562171:	c3                                              	ret
10562172:	cc                                              	int3
10562173:	cc                                              	int3
10562174:	cc                                              	int3
10562175:	cc                                              	int3
10562176:	cc                                              	int3
10562177:	cc                                              	int3
10562178:	cc                                              	int3
10562179:	cc                                              	int3
1056217a:	cc                                              	int3
1056217b:	cc                                              	int3
1056217c:	cc                                              	int3
1056217d:	cc                                              	int3
1056217e:	cc                                              	int3
1056217f:	cc                                              	int3
