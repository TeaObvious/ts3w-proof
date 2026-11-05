# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00746040 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetStoreManifestFile)
Paired Ghidra pseudocode: 00746040_ScriptCore_OnlineFeatures_OnlineFeaturesHost_GetStoreManifestFile.c
Window: [0x00746040, 0x00746060) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00746060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00746040: a1 68 50 1d 01 85 c0 74 07 8d 48 f8 85 c9 75 03
00746050: 32 c0 c3 e8 78 76 14 00 b0 01 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00746040 <.text+0x345040>:
  746040:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  746045:	85 c0                                           	test   eax,eax
  746047:	74 07                                           	je     0x746050
  746049:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  74604c:	85 c9                                           	test   ecx,ecx
  74604e:	75 03                                           	jne    0x746053
  746050:	32 c0                                           	xor    al,al
  746052:	c3                                              	ret
  746053:	e8 78 76 14 00                                  	call   0x88d6d0
  746058:	b0 01                                           	mov    al,0x1
  74605a:	c3                                              	ret
  74605b:	cc                                              	int3
  74605c:	cc                                              	int3
  74605d:	cc                                              	int3
  74605e:	cc                                              	int3
  74605f:	cc                                              	int3
