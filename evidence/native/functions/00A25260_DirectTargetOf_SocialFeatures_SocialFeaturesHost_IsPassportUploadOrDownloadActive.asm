# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a25260 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_IsPassportUploadOrDownloadActive)
Paired Ghidra pseudocode: 00A25260_DirectTargetOf_SocialFeatures_SocialFeaturesHost_IsPassportUploadOrDownloadActive.c
Window: [0x00a25260, 0x00a252a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a252a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a25260: 8b 0d a0 bd 1e 01 56 e8 04 6e b4 ff 85 c0 74 23
00a25270: 8b c8 e8 79 95 fb ff 8b f0 85 f6 74 16 53 8b ce
00a25280: e8 5b 57 01 00 8b ce 8a d8 e8 f2 56 01 00 0b c3
00a25290: 5b 5e c3 32 c0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a25260 <.text+0x624260>:
  a25260:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a25266:	56                                              	push   esi
  a25267:	e8 04 6e b4 ff                                  	call   0x56c070
  a2526c:	85 c0                                           	test   eax,eax
  a2526e:	74 23                                           	je     0xa25293
  a25270:	8b c8                                           	mov    ecx,eax
  a25272:	e8 79 95 fb ff                                  	call   0x9de7f0
  a25277:	8b f0                                           	mov    esi,eax
  a25279:	85 f6                                           	test   esi,esi
  a2527b:	74 16                                           	je     0xa25293
  a2527d:	53                                              	push   ebx
  a2527e:	8b ce                                           	mov    ecx,esi
  a25280:	e8 5b 57 01 00                                  	call   0xa3a9e0
  a25285:	8b ce                                           	mov    ecx,esi
  a25287:	8a d8                                           	mov    bl,al
  a25289:	e8 f2 56 01 00                                  	call   0xa3a980
  a2528e:	0b c3                                           	or     eax,ebx
  a25290:	5b                                              	pop    ebx
  a25291:	5e                                              	pop    esi
  a25292:	c3                                              	ret
  a25293:	32 c0                                           	xor    al,al
  a25295:	5e                                              	pop    esi
  a25296:	c3                                              	ret
  a25297:	cc                                              	int3
  a25298:	cc                                              	int3
  a25299:	cc                                              	int3
  a2529a:	cc                                              	int3
  a2529b:	cc                                              	int3
  a2529c:	cc                                              	int3
  a2529d:	cc                                              	int3
  a2529e:	cc                                              	int3
  a2529f:	cc                                              	int3
