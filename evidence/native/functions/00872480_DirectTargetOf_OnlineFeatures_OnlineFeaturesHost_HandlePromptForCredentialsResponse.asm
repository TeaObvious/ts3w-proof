# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00872480 (DirectTargetOf_OnlineFeatures_OnlineFeaturesHost_HandlePromptForCredentialsResponse)
Paired Ghidra pseudocode: 00872480_DirectTargetOf_OnlineFeatures_OnlineFeaturesHost_HandlePromptForCredentialsResponse.c
Window: [0x00872480, 0x008724b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x008724b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00872480: a1 68 a6 1d 01 85 c0 7d 1c 33 c9 38 4c 24 04 ba
00872490: 68 a6 1d 01 0f 95 c1 87 0a 6a 01 b9 6c a6 1d 01
008724a0: e8 7b 08 c7 ff c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00872480 <.text+0x471480>:
  872480:	a1 68 a6 1d 01                                  	mov    eax,ds:0x11da668
  872485:	85 c0                                           	test   eax,eax
  872487:	7d 1c                                           	jge    0x8724a5
  872489:	33 c9                                           	xor    ecx,ecx
  87248b:	38 4c 24 04                                     	cmp    BYTE PTR [esp+0x4],cl
  87248f:	ba 68 a6 1d 01                                  	mov    edx,0x11da668
  872494:	0f 95 c1                                        	setne  cl
  872497:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  872499:	6a 01                                           	push   0x1
  87249b:	b9 6c a6 1d 01                                  	mov    ecx,0x11da66c
  8724a0:	e8 7b 08 c7 ff                                  	call   0x4e2d20
  8724a5:	c3                                              	ret
  8724a6:	cc                                              	int3
  8724a7:	cc                                              	int3
  8724a8:	cc                                              	int3
  8724a9:	cc                                              	int3
  8724aa:	cc                                              	int3
  8724ab:	cc                                              	int3
  8724ac:	cc                                              	int3
  8724ad:	cc                                              	int3
  8724ae:	cc                                              	int3
  8724af:	cc                                              	int3
