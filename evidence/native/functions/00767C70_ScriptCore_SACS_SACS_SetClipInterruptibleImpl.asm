# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00767c70 (ScriptCore.SACS::SACS_SetClipInterruptibleImpl)
Paired Ghidra pseudocode: 00767C70_ScriptCore_SACS_SACS_SetClipInterruptibleImpl.c
Window: [0x00767c70, 0x00767cf0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00767cf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00767c70: 51 56 e8 f9 f8 1c 00 8b 4c 24 10 8b 54 24 0c 51
00767c80: 52 8b c8 e8 f8 02 1d 00 8b f0 85 f6 74 50 57 8d
00767c90: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 84
00767ca0: d4 1d 01 52 8b ce e8 b5 c5 1c 00 85 c0 74 11 8b
00767cb0: 4c 24 1c 8b 54 24 18 51 52 8b c8 e8 60 4d 1d 00
00767cc0: 8b c7 83 c9 ff f0 0f c1 08 49 75 11 ba 01 00 00
00767cd0: 00 87 17 8b 06 8b 10 6a 01 8b ce ff d2 5f 5e 59
00767ce0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00767c70 <.text+0x366c70>:
  767c70:	51                                              	push   ecx
  767c71:	56                                              	push   esi
  767c72:	e8 f9 f8 1c 00                                  	call   0x937570
  767c77:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  767c7b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  767c7f:	51                                              	push   ecx
  767c80:	52                                              	push   edx
  767c81:	8b c8                                           	mov    ecx,eax
  767c83:	e8 f8 02 1d 00                                  	call   0x937f80
  767c88:	8b f0                                           	mov    esi,eax
  767c8a:	85 f6                                           	test   esi,esi
  767c8c:	74 50                                           	je     0x767cde
  767c8e:	57                                              	push   edi
  767c8f:	8d 7e 04                                        	lea    edi,[esi+0x4]
  767c92:	8b c7                                           	mov    eax,edi
  767c94:	b9 01 00 00 00                                  	mov    ecx,0x1
  767c99:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  767c9d:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  767ca3:	52                                              	push   edx
  767ca4:	8b ce                                           	mov    ecx,esi
  767ca6:	e8 b5 c5 1c 00                                  	call   0x934260
  767cab:	85 c0                                           	test   eax,eax
  767cad:	74 11                                           	je     0x767cc0
  767caf:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  767cb3:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  767cb7:	51                                              	push   ecx
  767cb8:	52                                              	push   edx
  767cb9:	8b c8                                           	mov    ecx,eax
  767cbb:	e8 60 4d 1d 00                                  	call   0x93ca20
  767cc0:	8b c7                                           	mov    eax,edi
  767cc2:	83 c9 ff                                        	or     ecx,0xffffffff
  767cc5:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  767cc9:	49                                              	dec    ecx
  767cca:	75 11                                           	jne    0x767cdd
  767ccc:	ba 01 00 00 00                                  	mov    edx,0x1
  767cd1:	87 17                                           	xchg   DWORD PTR [edi],edx
  767cd3:	8b 06                                           	mov    eax,DWORD PTR [esi]
  767cd5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  767cd7:	6a 01                                           	push   0x1
  767cd9:	8b ce                                           	mov    ecx,esi
  767cdb:	ff d2                                           	call   edx
  767cdd:	5f                                              	pop    edi
  767cde:	5e                                              	pop    esi
  767cdf:	59                                              	pop    ecx
  767ce0:	c3                                              	ret
  767ce1:	cc                                              	int3
  767ce2:	cc                                              	int3
  767ce3:	cc                                              	int3
  767ce4:	cc                                              	int3
  767ce5:	cc                                              	int3
  767ce6:	cc                                              	int3
  767ce7:	cc                                              	int3
  767ce8:	cc                                              	int3
  767ce9:	cc                                              	int3
  767cea:	cc                                              	int3
  767ceb:	cc                                              	int3
  767cec:	cc                                              	int3
  767ced:	cc                                              	int3
  767cee:	cc                                              	int3
  767cef:	cc                                              	int3
