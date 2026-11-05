# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00766e90 (ScriptCore.SACS::SACS_SetParamCompositeValImpl)
Paired Ghidra pseudocode: 00766E90_ScriptCore_SACS_SACS_SetParamCompositeValImpl.c
Window: [0x00766e90, 0x00766f00) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00766f00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00766e90: 56 57 e8 f9 24 00 00 8b 4c 24 18 8b 10 8b 52 58
00766ea0: 51 8b c8 ff d2 8b f0 85 f6 bf c5 9d 1c 81 74 30
00766eb0: 0f b7 06 66 85 c0 74 28 53 8b 1d 68 67 f9 00 90
00766ec0: 0f b7 c0 50 ff d3 69 ff 93 01 00 01 0f b7 c0 83
00766ed0: c6 02 33 f8 0f b7 06 83 c4 04 66 85 c0 75 e1 5b
00766ee0: 8b 4c 24 14 8b 54 24 10 8b 44 24 0c 57 51 52 50
00766ef0: e8 cb fe ff ff 83 c4 10 5f 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00766e90 <.text+0x365e90>:
  766e90:	56                                              	push   esi
  766e91:	57                                              	push   edi
  766e92:	e8 f9 24 00 00                                  	call   0x769390
  766e97:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  766e9b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  766e9d:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  766ea0:	51                                              	push   ecx
  766ea1:	8b c8                                           	mov    ecx,eax
  766ea3:	ff d2                                           	call   edx
  766ea5:	8b f0                                           	mov    esi,eax
  766ea7:	85 f6                                           	test   esi,esi
  766ea9:	bf c5 9d 1c 81                                  	mov    edi,0x811c9dc5
  766eae:	74 30                                           	je     0x766ee0
  766eb0:	0f b7 06                                        	movzx  eax,WORD PTR [esi]
  766eb3:	66 85 c0                                        	test   ax,ax
  766eb6:	74 28                                           	je     0x766ee0
  766eb8:	53                                              	push   ebx
  766eb9:	8b 1d 68 67 f9 00                               	mov    ebx,DWORD PTR ds:0xf96768
  766ebf:	90                                              	nop
  766ec0:	0f b7 c0                                        	movzx  eax,ax
  766ec3:	50                                              	push   eax
  766ec4:	ff d3                                           	call   ebx
  766ec6:	69 ff 93 01 00 01                               	imul   edi,edi,0x1000193
  766ecc:	0f b7 c0                                        	movzx  eax,ax
  766ecf:	83 c6 02                                        	add    esi,0x2
  766ed2:	33 f8                                           	xor    edi,eax
  766ed4:	0f b7 06                                        	movzx  eax,WORD PTR [esi]
  766ed7:	83 c4 04                                        	add    esp,0x4
  766eda:	66 85 c0                                        	test   ax,ax
  766edd:	75 e1                                           	jne    0x766ec0
  766edf:	5b                                              	pop    ebx
  766ee0:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  766ee4:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  766ee8:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  766eec:	57                                              	push   edi
  766eed:	51                                              	push   ecx
  766eee:	52                                              	push   edx
  766eef:	50                                              	push   eax
  766ef0:	e8 cb fe ff ff                                  	call   0x766dc0
  766ef5:	83 c4 10                                        	add    esp,0x10
  766ef8:	5f                                              	pop    edi
  766ef9:	5e                                              	pop    esi
  766efa:	c3                                              	ret
  766efb:	cc                                              	int3
  766efc:	cc                                              	int3
  766efd:	cc                                              	int3
  766efe:	cc                                              	int3
  766eff:	cc                                              	int3
