# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00588c40 (DirectTargetOf_AutomationUtils_Automation_SetFailureExitCode)
Paired Ghidra pseudocode: 00588C40_DirectTargetOf_AutomationUtils_Automation_SetFailureExitCode.c
Window: [0x00588c40, 0x00588d10) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00588d10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00588c40: 8b 44 24 04 a3 c8 eb 1c 01 c3 cc cc cc cc cc cc
00588c50: 56 6a 00 6a 00 6a 00 6a 00 68 68 cd fc 00 68 b8
00588c60: 00 00 00 e8 98 b8 f5 ff 8b f0 83 c4 18 85 f6 74
00588c70: 13 e8 4a 6d 3a 00 50 8b ce e8 42 40 ec ff 8b f0
00588c80: 85 f6 75 04 32 c0 5e c3 8b 06 8b 50 14 6a 00 6a
00588c90: 04 8b ce ff d2 56 e8 65 38 ec ff 83 c4 04 b0 01
00588ca0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00588cb0: e8 3b 38 ec ff 8b 10 8b c8 8b 42 38 ff e0 cc cc
00588cc0: 56 6a 00 e8 38 38 ec ff 8b f0 83 c4 04 85 f6 74
00588cd0: 13 8b 06 8b 50 08 8b ce ff d2 8b 06 8b 10 6a 01
00588ce0: 8b ce ff d2 5e c3 cc cc cc cc cc cc cc cc cc cc
00588cf0: e8 fb 37 ec ff 8b 10 8b c8 8b 42 38 ff d0 c2 08
00588d00: 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00588c40 <.text+0x187c40>:
  588c40:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  588c44:	a3 c8 eb 1c 01                                  	mov    ds:0x11cebc8,eax
  588c49:	c3                                              	ret
  588c4a:	cc                                              	int3
  588c4b:	cc                                              	int3
  588c4c:	cc                                              	int3
  588c4d:	cc                                              	int3
  588c4e:	cc                                              	int3
  588c4f:	cc                                              	int3
  588c50:	56                                              	push   esi
  588c51:	6a 00                                           	push   0x0
  588c53:	6a 00                                           	push   0x0
  588c55:	6a 00                                           	push   0x0
  588c57:	6a 00                                           	push   0x0
  588c59:	68 68 cd fc 00                                  	push   0xfccd68
  588c5e:	68 b8 00 00 00                                  	push   0xb8
  588c63:	e8 98 b8 f5 ff                                  	call   0x4e4500
  588c68:	8b f0                                           	mov    esi,eax
  588c6a:	83 c4 18                                        	add    esp,0x18
  588c6d:	85 f6                                           	test   esi,esi
  588c6f:	74 13                                           	je     0x588c84
  588c71:	e8 4a 6d 3a 00                                  	call   0x92f9c0
  588c76:	50                                              	push   eax
  588c77:	8b ce                                           	mov    ecx,esi
  588c79:	e8 42 40 ec ff                                  	call   0x44ccc0
  588c7e:	8b f0                                           	mov    esi,eax
  588c80:	85 f6                                           	test   esi,esi
  588c82:	75 04                                           	jne    0x588c88
  588c84:	32 c0                                           	xor    al,al
  588c86:	5e                                              	pop    esi
  588c87:	c3                                              	ret
  588c88:	8b 06                                           	mov    eax,DWORD PTR [esi]
  588c8a:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  588c8d:	6a 00                                           	push   0x0
  588c8f:	6a 04                                           	push   0x4
  588c91:	8b ce                                           	mov    ecx,esi
  588c93:	ff d2                                           	call   edx
  588c95:	56                                              	push   esi
  588c96:	e8 65 38 ec ff                                  	call   0x44c500
  588c9b:	83 c4 04                                        	add    esp,0x4
  588c9e:	b0 01                                           	mov    al,0x1
  588ca0:	5e                                              	pop    esi
  588ca1:	c3                                              	ret
  588ca2:	cc                                              	int3
  588ca3:	cc                                              	int3
  588ca4:	cc                                              	int3
  588ca5:	cc                                              	int3
  588ca6:	cc                                              	int3
  588ca7:	cc                                              	int3
  588ca8:	cc                                              	int3
  588ca9:	cc                                              	int3
  588caa:	cc                                              	int3
  588cab:	cc                                              	int3
  588cac:	cc                                              	int3
  588cad:	cc                                              	int3
  588cae:	cc                                              	int3
  588caf:	cc                                              	int3
  588cb0:	e8 3b 38 ec ff                                  	call   0x44c4f0
  588cb5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  588cb7:	8b c8                                           	mov    ecx,eax
  588cb9:	8b 42 38                                        	mov    eax,DWORD PTR [edx+0x38]
  588cbc:	ff e0                                           	jmp    eax
  588cbe:	cc                                              	int3
  588cbf:	cc                                              	int3
  588cc0:	56                                              	push   esi
  588cc1:	6a 00                                           	push   0x0
  588cc3:	e8 38 38 ec ff                                  	call   0x44c500
  588cc8:	8b f0                                           	mov    esi,eax
  588cca:	83 c4 04                                        	add    esp,0x4
  588ccd:	85 f6                                           	test   esi,esi
  588ccf:	74 13                                           	je     0x588ce4
  588cd1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  588cd3:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  588cd6:	8b ce                                           	mov    ecx,esi
  588cd8:	ff d2                                           	call   edx
  588cda:	8b 06                                           	mov    eax,DWORD PTR [esi]
  588cdc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  588cde:	6a 01                                           	push   0x1
  588ce0:	8b ce                                           	mov    ecx,esi
  588ce2:	ff d2                                           	call   edx
  588ce4:	5e                                              	pop    esi
  588ce5:	c3                                              	ret
  588ce6:	cc                                              	int3
  588ce7:	cc                                              	int3
  588ce8:	cc                                              	int3
  588ce9:	cc                                              	int3
  588cea:	cc                                              	int3
  588ceb:	cc                                              	int3
  588cec:	cc                                              	int3
  588ced:	cc                                              	int3
  588cee:	cc                                              	int3
  588cef:	cc                                              	int3
  588cf0:	e8 fb 37 ec ff                                  	call   0x44c4f0
  588cf5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  588cf7:	8b c8                                           	mov    ecx,eax
  588cf9:	8b 42 38                                        	mov    eax,DWORD PTR [edx+0x38]
  588cfc:	ff d0                                           	call   eax
  588cfe:	c2 08 00                                        	ret    0x8
  588d01:	cc                                              	int3
  588d02:	cc                                              	int3
  588d03:	cc                                              	int3
  588d04:	cc                                              	int3
  588d05:	cc                                              	int3
  588d06:	cc                                              	int3
  588d07:	cc                                              	int3
  588d08:	cc                                              	int3
  588d09:	cc                                              	int3
  588d0a:	cc                                              	int3
  588d0b:	cc                                              	int3
  588d0c:	cc                                              	int3
  588d0d:	cc                                              	int3
  588d0e:	cc                                              	int3
  588d0f:	cc                                              	int3
