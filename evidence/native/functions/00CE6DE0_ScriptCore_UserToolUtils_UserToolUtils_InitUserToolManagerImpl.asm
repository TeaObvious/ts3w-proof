# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6de0 (ScriptCore.UserToolUtils::UserToolUtils_InitUserToolManagerImpl)
Paired Ghidra pseudocode: 00CE6DE0_ScriptCore_UserToolUtils_UserToolUtils_InitUserToolManagerImpl.c
Window: [0x00ce6de0, 0x00ce6e70) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6de0: 51 6a 00 6a 00 6a 00 6a 00 68 8c 15 08 01 68 d8
00ce6df0: 01 00 00 e8 08 d7 7f ff 83 c4 18 85 c0 74 09 8b
00ce6e00: c8 e8 7a a9 00 00 eb 02 33 c0 8b 15 18 e7 1e 01
00ce6e10: 8b 4a 08 83 c2 08 3b c1 74 38 85 c0 56 74 0e 57
00ce6e20: 8d 70 04 bf 01 00 00 00 f0 0f c1 3e 5f 85 c9 89
00ce6e30: 02 74 1e 8d 41 04 8b d0 83 ce ff f0 0f c1 32 4e
00ce6e40: 75 0f ba 01 00 00 00 87 10 8b 01 8b 10 6a 01 ff
00ce6e50: d2 5e a1 18 e7 1e 01 8b 48 08 83 c4 04 e9 ae 86
00ce6e60: 00 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce6de0 <.text+0x8e5de0>:
  ce6de0:	51                                              	push   ecx
  ce6de1:	6a 00                                           	push   0x0
  ce6de3:	6a 00                                           	push   0x0
  ce6de5:	6a 00                                           	push   0x0
  ce6de7:	6a 00                                           	push   0x0
  ce6de9:	68 8c 15 08 01                                  	push   0x108158c
  ce6dee:	68 d8 01 00 00                                  	push   0x1d8
  ce6df3:	e8 08 d7 7f ff                                  	call   0x4e4500
  ce6df8:	83 c4 18                                        	add    esp,0x18
  ce6dfb:	85 c0                                           	test   eax,eax
  ce6dfd:	74 09                                           	je     0xce6e08
  ce6dff:	8b c8                                           	mov    ecx,eax
  ce6e01:	e8 7a a9 00 00                                  	call   0xcf1780
  ce6e06:	eb 02                                           	jmp    0xce6e0a
  ce6e08:	33 c0                                           	xor    eax,eax
  ce6e0a:	8b 15 18 e7 1e 01                               	mov    edx,DWORD PTR ds:0x11ee718
  ce6e10:	8b 4a 08                                        	mov    ecx,DWORD PTR [edx+0x8]
  ce6e13:	83 c2 08                                        	add    edx,0x8
  ce6e16:	3b c1                                           	cmp    eax,ecx
  ce6e18:	74 38                                           	je     0xce6e52
  ce6e1a:	85 c0                                           	test   eax,eax
  ce6e1c:	56                                              	push   esi
  ce6e1d:	74 0e                                           	je     0xce6e2d
  ce6e1f:	57                                              	push   edi
  ce6e20:	8d 70 04                                        	lea    esi,[eax+0x4]
  ce6e23:	bf 01 00 00 00                                  	mov    edi,0x1
  ce6e28:	f0 0f c1 3e                                     	lock xadd DWORD PTR [esi],edi
  ce6e2c:	5f                                              	pop    edi
  ce6e2d:	85 c9                                           	test   ecx,ecx
  ce6e2f:	89 02                                           	mov    DWORD PTR [edx],eax
  ce6e31:	74 1e                                           	je     0xce6e51
  ce6e33:	8d 41 04                                        	lea    eax,[ecx+0x4]
  ce6e36:	8b d0                                           	mov    edx,eax
  ce6e38:	83 ce ff                                        	or     esi,0xffffffff
  ce6e3b:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  ce6e3f:	4e                                              	dec    esi
  ce6e40:	75 0f                                           	jne    0xce6e51
  ce6e42:	ba 01 00 00 00                                  	mov    edx,0x1
  ce6e47:	87 10                                           	xchg   DWORD PTR [eax],edx
  ce6e49:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  ce6e4b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ce6e4d:	6a 01                                           	push   0x1
  ce6e4f:	ff d2                                           	call   edx
  ce6e51:	5e                                              	pop    esi
  ce6e52:	a1 18 e7 1e 01                                  	mov    eax,ds:0x11ee718
  ce6e57:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  ce6e5a:	83 c4 04                                        	add    esp,0x4
  ce6e5d:	e9 ae 86 00 00                                  	jmp    0xcef510
  ce6e62:	cc                                              	int3
  ce6e63:	cc                                              	int3
  ce6e64:	cc                                              	int3
  ce6e65:	cc                                              	int3
  ce6e66:	cc                                              	int3
  ce6e67:	cc                                              	int3
  ce6e68:	cc                                              	int3
  ce6e69:	cc                                              	int3
  ce6e6a:	cc                                              	int3
  ce6e6b:	cc                                              	int3
  ce6e6c:	cc                                              	int3
  ce6e6d:	cc                                              	int3
  ce6e6e:	cc                                              	int3
  ce6e6f:	cc                                              	int3
