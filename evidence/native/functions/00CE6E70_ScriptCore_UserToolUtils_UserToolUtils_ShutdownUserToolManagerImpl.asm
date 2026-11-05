# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6e70 (ScriptCore.UserToolUtils::UserToolUtils_ShutdownUserToolManagerImpl)
Paired Ghidra pseudocode: 00CE6E70_ScriptCore_UserToolUtils_UserToolUtils_ShutdownUserToolManagerImpl.c
Window: [0x00ce6e70, 0x00ce6ec0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6ec0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6e70: 51 a1 18 e7 1e 01 8b 48 08 85 c9 74 38 e8 5e 90
00ce6e80: 00 00 a1 18 e7 1e 01 8b 48 08 85 c9 74 27 c7 40
00ce6e90: 08 00 00 00 00 8d 41 04 56 8b d0 83 ce ff f0 0f
00ce6ea0: c1 32 4e 5e 75 0f ba 01 00 00 00 87 10 8b 01 8b
00ce6eb0: 10 6a 01 ff d2 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce6e70 <.text+0x8e5e70>:
  ce6e70:	51                                              	push   ecx
  ce6e71:	a1 18 e7 1e 01                                  	mov    eax,ds:0x11ee718
  ce6e76:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  ce6e79:	85 c9                                           	test   ecx,ecx
  ce6e7b:	74 38                                           	je     0xce6eb5
  ce6e7d:	e8 5e 90 00 00                                  	call   0xcefee0
  ce6e82:	a1 18 e7 1e 01                                  	mov    eax,ds:0x11ee718
  ce6e87:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  ce6e8a:	85 c9                                           	test   ecx,ecx
  ce6e8c:	74 27                                           	je     0xce6eb5
  ce6e8e:	c7 40 08 00 00 00 00                            	mov    DWORD PTR [eax+0x8],0x0
  ce6e95:	8d 41 04                                        	lea    eax,[ecx+0x4]
  ce6e98:	56                                              	push   esi
  ce6e99:	8b d0                                           	mov    edx,eax
  ce6e9b:	83 ce ff                                        	or     esi,0xffffffff
  ce6e9e:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  ce6ea2:	4e                                              	dec    esi
  ce6ea3:	5e                                              	pop    esi
  ce6ea4:	75 0f                                           	jne    0xce6eb5
  ce6ea6:	ba 01 00 00 00                                  	mov    edx,0x1
  ce6eab:	87 10                                           	xchg   DWORD PTR [eax],edx
  ce6ead:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  ce6eaf:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ce6eb1:	6a 01                                           	push   0x1
  ce6eb3:	ff d2                                           	call   edx
  ce6eb5:	59                                              	pop    ecx
  ce6eb6:	c3                                              	ret
  ce6eb7:	cc                                              	int3
  ce6eb8:	cc                                              	int3
  ce6eb9:	cc                                              	int3
  ce6eba:	cc                                              	int3
  ce6ebb:	cc                                              	int3
  ce6ebc:	cc                                              	int3
  ce6ebd:	cc                                              	int3
  ce6ebe:	cc                                              	int3
  ce6ebf:	cc                                              	int3
