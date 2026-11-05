# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00748b70 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_PostPipeMessage)
Paired Ghidra pseudocode: 00748B70_ScriptCore_OnlineFeatures_OnlineFeaturesHost_PostPipeMessage.c
Window: [0x00748b70, 0x00748c10) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00748c10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00748b70: 83 ec 10 e8 18 08 02 00 85 c0 0f 84 89 00 00 00
00748b80: 8b 4c 24 1c 8b 10 8b 52 58 56 57 51 8b c8 ff d2
00748b90: 8b 7c 24 20 8b f0 8d 44 24 08 57 50 e8 7f 36 ec
00748ba0: ff 8b 08 6a 00 56 51 68 d8 40 00 01 6a 53 6a 02
00748bb0: e8 5b ef 14 00 8b 54 24 30 8b 44 24 28 2b d0 83
00748bc0: e2 fe 83 c4 20 83 fa 02 7e 0d 85 c0 74 09 50 e8
00748bd0: 0c b9 d9 ff 83 c4 04 a1 a0 fc 1c 01 85 c0 74 15
00748be0: 56 8d 48 f0 8b 44 24 20 57 50 e8 21 33 ec ff 5f
00748bf0: 5e 83 c4 10 c3 8b 44 24 1c 56 57 33 c9 50 e8 0d
00748c00: 33 ec ff 5f 5e 83 c4 10 c3 32 c0 83 c4 10 c3 cc

LINEAR DISASSEMBLY
00748b70 <.text+0x347b70>:
  748b70:	83 ec 10                                        	sub    esp,0x10
  748b73:	e8 18 08 02 00                                  	call   0x769390
  748b78:	85 c0                                           	test   eax,eax
  748b7a:	0f 84 89 00 00 00                               	je     0x748c09
  748b80:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  748b84:	8b 10                                           	mov    edx,DWORD PTR [eax]
  748b86:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  748b89:	56                                              	push   esi
  748b8a:	57                                              	push   edi
  748b8b:	51                                              	push   ecx
  748b8c:	8b c8                                           	mov    ecx,eax
  748b8e:	ff d2                                           	call   edx
  748b90:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  748b94:	8b f0                                           	mov    esi,eax
  748b96:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  748b9a:	57                                              	push   edi
  748b9b:	50                                              	push   eax
  748b9c:	e8 7f 36 ec ff                                  	call   0x60c220
  748ba1:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  748ba3:	6a 00                                           	push   0x0
  748ba5:	56                                              	push   esi
  748ba6:	51                                              	push   ecx
  748ba7:	68 d8 40 00 01                                  	push   0x10040d8
  748bac:	6a 53                                           	push   0x53
  748bae:	6a 02                                           	push   0x2
  748bb0:	e8 5b ef 14 00                                  	call   0x897b10
  748bb5:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  748bb9:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  748bbd:	2b d0                                           	sub    edx,eax
  748bbf:	83 e2 fe                                        	and    edx,0xfffffffe
  748bc2:	83 c4 20                                        	add    esp,0x20
  748bc5:	83 fa 02                                        	cmp    edx,0x2
  748bc8:	7e 0d                                           	jle    0x748bd7
  748bca:	85 c0                                           	test   eax,eax
  748bcc:	74 09                                           	je     0x748bd7
  748bce:	50                                              	push   eax
  748bcf:	e8 0c b9 d9 ff                                  	call   0x4e44e0
  748bd4:	83 c4 04                                        	add    esp,0x4
  748bd7:	a1 a0 fc 1c 01                                  	mov    eax,ds:0x11cfca0
  748bdc:	85 c0                                           	test   eax,eax
  748bde:	74 15                                           	je     0x748bf5
  748be0:	56                                              	push   esi
  748be1:	8d 48 f0                                        	lea    ecx,[eax-0x10]
  748be4:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  748be8:	57                                              	push   edi
  748be9:	50                                              	push   eax
  748bea:	e8 21 33 ec ff                                  	call   0x60bf10
  748bef:	5f                                              	pop    edi
  748bf0:	5e                                              	pop    esi
  748bf1:	83 c4 10                                        	add    esp,0x10
  748bf4:	c3                                              	ret
  748bf5:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  748bf9:	56                                              	push   esi
  748bfa:	57                                              	push   edi
  748bfb:	33 c9                                           	xor    ecx,ecx
  748bfd:	50                                              	push   eax
  748bfe:	e8 0d 33 ec ff                                  	call   0x60bf10
  748c03:	5f                                              	pop    edi
  748c04:	5e                                              	pop    esi
  748c05:	83 c4 10                                        	add    esp,0x10
  748c08:	c3                                              	ret
  748c09:	32 c0                                           	xor    al,al
  748c0b:	83 c4 10                                        	add    esp,0x10
  748c0e:	c3                                              	ret
  748c0f:	cc                                              	int3
