# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770e90 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportSimImage)
Paired Ghidra pseudocode: 00770E90_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPassportSimImage.c
Window: [0x00770e90, 0x00770ed0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770ed0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770e90: 8b 44 24 08 83 ec 10 50 8d 4c 24 04 51 e8 be 44
00770ea0: 2b 00 8b 4c 24 1c 8b 10 89 11 8b 50 04 89 51 04
00770eb0: 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4
00770ec0: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770e90 <.text+0x36fe90>:
  770e90:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770e94:	83 ec 10                                        	sub    esp,0x10
  770e97:	50                                              	push   eax
  770e98:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  770e9c:	51                                              	push   ecx
  770e9d:	e8 be 44 2b 00                                  	call   0xa25360
  770ea2:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  770ea6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  770ea8:	89 11                                           	mov    DWORD PTR [ecx],edx
  770eaa:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  770ead:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  770eb0:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  770eb3:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  770eb6:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  770eb9:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  770ebc:	8b c1                                           	mov    eax,ecx
  770ebe:	83 c4 18                                        	add    esp,0x18
  770ec1:	c3                                              	ret
  770ec2:	cc                                              	int3
  770ec3:	cc                                              	int3
  770ec4:	cc                                              	int3
  770ec5:	cc                                              	int3
  770ec6:	cc                                              	int3
  770ec7:	cc                                              	int3
  770ec8:	cc                                              	int3
  770ec9:	cc                                              	int3
  770eca:	cc                                              	int3
  770ecb:	cc                                              	int3
  770ecc:	cc                                              	int3
  770ecd:	cc                                              	int3
  770ece:	cc                                              	int3
  770ecf:	cc                                              	int3
