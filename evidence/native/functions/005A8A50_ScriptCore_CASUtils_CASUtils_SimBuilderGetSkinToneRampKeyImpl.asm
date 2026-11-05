# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8a50 (ScriptCore.CASUtils::CASUtils_SimBuilderGetSkinToneRampKeyImpl)
Paired Ghidra pseudocode: 005A8A50_ScriptCore_CASUtils_CASUtils_SimBuilderGetSkinToneRampKeyImpl.c
Window: [0x005a8a50, 0x005a8af0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8a50: 83 ec 10 56 e8 37 09 1c 00 8b 74 24 18 33 d2 85
005a8a60: c0 89 16 89 56 04 89 56 08 89 56 0c 74 6e 8b 4c
005a8a70: 24 1c 8b d1 81 e2 00 00 00 ff 81 fa 00 00 00 35
005a8a80: 75 5a 8b 10 51 8b c8 8b 82 cc 00 00 00 ff d0 85
005a8a90: c0 74 49 8b 48 20 85 c9 57 74 2d 8d 54 24 08 52
005a8aa0: e8 bb 17 02 00 8b 7c 24 14 8b 44 24 08 8b 54 24
005a8ab0: 10 8b 4c 24 0c 89 7e 04 89 46 08 5f 89 16 89 4e
005a8ac0: 0c 8b c6 5e 83 c4 10 c3 33 c0 33 c9 33 d2 33 ff
005a8ad0: 89 7e 04 89 16 89 46 08 89 4e 0c 5f 8b c6 5e 83
005a8ae0: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a8a50 <.text+0x1a7a50>:
  5a8a50:	83 ec 10                                        	sub    esp,0x10
  5a8a53:	56                                              	push   esi
  5a8a54:	e8 37 09 1c 00                                  	call   0x769390
  5a8a59:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  5a8a5d:	33 d2                                           	xor    edx,edx
  5a8a5f:	85 c0                                           	test   eax,eax
  5a8a61:	89 16                                           	mov    DWORD PTR [esi],edx
  5a8a63:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
  5a8a66:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  5a8a69:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  5a8a6c:	74 6e                                           	je     0x5a8adc
  5a8a6e:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a8a72:	8b d1                                           	mov    edx,ecx
  5a8a74:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  5a8a7a:	81 fa 00 00 00 35                               	cmp    edx,0x35000000
  5a8a80:	75 5a                                           	jne    0x5a8adc
  5a8a82:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8a84:	51                                              	push   ecx
  5a8a85:	8b c8                                           	mov    ecx,eax
  5a8a87:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a8a8d:	ff d0                                           	call   eax
  5a8a8f:	85 c0                                           	test   eax,eax
  5a8a91:	74 49                                           	je     0x5a8adc
  5a8a93:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  5a8a96:	85 c9                                           	test   ecx,ecx
  5a8a98:	57                                              	push   edi
  5a8a99:	74 2d                                           	je     0x5a8ac8
  5a8a9b:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  5a8a9f:	52                                              	push   edx
  5a8aa0:	e8 bb 17 02 00                                  	call   0x5ca260
  5a8aa5:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  5a8aa9:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5a8aad:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  5a8ab1:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a8ab5:	89 7e 04                                        	mov    DWORD PTR [esi+0x4],edi
  5a8ab8:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a8abb:	5f                                              	pop    edi
  5a8abc:	89 16                                           	mov    DWORD PTR [esi],edx
  5a8abe:	89 4e 0c                                        	mov    DWORD PTR [esi+0xc],ecx
  5a8ac1:	8b c6                                           	mov    eax,esi
  5a8ac3:	5e                                              	pop    esi
  5a8ac4:	83 c4 10                                        	add    esp,0x10
  5a8ac7:	c3                                              	ret
  5a8ac8:	33 c0                                           	xor    eax,eax
  5a8aca:	33 c9                                           	xor    ecx,ecx
  5a8acc:	33 d2                                           	xor    edx,edx
  5a8ace:	33 ff                                           	xor    edi,edi
  5a8ad0:	89 7e 04                                        	mov    DWORD PTR [esi+0x4],edi
  5a8ad3:	89 16                                           	mov    DWORD PTR [esi],edx
  5a8ad5:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a8ad8:	89 4e 0c                                        	mov    DWORD PTR [esi+0xc],ecx
  5a8adb:	5f                                              	pop    edi
  5a8adc:	8b c6                                           	mov    eax,esi
  5a8ade:	5e                                              	pop    esi
  5a8adf:	83 c4 10                                        	add    esp,0x10
  5a8ae2:	c3                                              	ret
  5a8ae3:	cc                                              	int3
  5a8ae4:	cc                                              	int3
  5a8ae5:	cc                                              	int3
  5a8ae6:	cc                                              	int3
  5a8ae7:	cc                                              	int3
  5a8ae8:	cc                                              	int3
  5a8ae9:	cc                                              	int3
  5a8aea:	cc                                              	int3
  5a8aeb:	cc                                              	int3
  5a8aec:	cc                                              	int3
  5a8aed:	cc                                              	int3
  5a8aee:	cc                                              	int3
  5a8aef:	cc                                              	int3
