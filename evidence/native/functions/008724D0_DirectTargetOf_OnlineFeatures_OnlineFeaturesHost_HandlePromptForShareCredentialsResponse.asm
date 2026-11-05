# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008724d0 (DirectTargetOf_OnlineFeatures_OnlineFeaturesHost_HandlePromptForShareCredentialsResponse)
Paired Ghidra pseudocode: 008724D0_DirectTargetOf_OnlineFeatures_OnlineFeaturesHost_HandlePromptForShareCredentialsResponse.c
Window: [0x008724d0, 0x00872500) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00872500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008724d0: a1 7c a6 1d 01 85 c0 7d 1c 33 c9 38 4c 24 04 ba
008724e0: 7c a6 1d 01 0f 95 c1 87 0a 6a 01 b9 a0 a6 1d 01
008724f0: e8 2b 08 c7 ff c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
008724d0 <.text+0x4714d0>:
  8724d0:	a1 7c a6 1d 01                                  	mov    eax,ds:0x11da67c
  8724d5:	85 c0                                           	test   eax,eax
  8724d7:	7d 1c                                           	jge    0x8724f5
  8724d9:	33 c9                                           	xor    ecx,ecx
  8724db:	38 4c 24 04                                     	cmp    BYTE PTR [esp+0x4],cl
  8724df:	ba 7c a6 1d 01                                  	mov    edx,0x11da67c
  8724e4:	0f 95 c1                                        	setne  cl
  8724e7:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  8724e9:	6a 01                                           	push   0x1
  8724eb:	b9 a0 a6 1d 01                                  	mov    ecx,0x11da6a0
  8724f0:	e8 2b 08 c7 ff                                  	call   0x4e2d20
  8724f5:	c3                                              	ret
  8724f6:	cc                                              	int3
  8724f7:	cc                                              	int3
  8724f8:	cc                                              	int3
  8724f9:	cc                                              	int3
  8724fa:	cc                                              	int3
  8724fb:	cc                                              	int3
  8724fc:	cc                                              	int3
  8724fd:	cc                                              	int3
  8724fe:	cc                                              	int3
  8724ff:	cc                                              	int3
