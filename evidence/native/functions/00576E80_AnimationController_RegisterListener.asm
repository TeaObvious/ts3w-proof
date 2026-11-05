# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00576e80, 0x00576ed9); analyst name AnimationController_RegisterListener.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00576e80 <.text+0x175e80>:
  576e80:	56                   	push   esi
  576e81:	6a 00                	push   0x0
  576e83:	6a 00                	push   0x0
  576e85:	6a 00                	push   0x0
  576e87:	6a 00                	push   0x0
  576e89:	68 68 2a fc 00       	push   0xfc2a68
  576e8e:	6a 10                	push   0x10
  576e90:	8b f1                	mov    esi,ecx
  576e92:	e8 69 d6 f6 ff       	call   0x4e4500
  576e97:	83 c4 18             	add    esp,0x18
  576e9a:	85 c0                	test   eax,eax
  576e9c:	74 35                	je     0x576ed3
  576e9e:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  576ea2:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  576ea6:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
  576ead:	c7 40 0c ff ff ff ff 	mov    DWORD PTR [eax+0xc],0xffffffff
  576eb4:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  576eb7:	8d 4e 04             	lea    ecx,[esi+0x4]
  576eba:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  576ebd:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  576ec0:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  576ec3:	89 08                	mov    DWORD PTR [eax],ecx
  576ec5:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  576ec8:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  576ecb:	89 01                	mov    DWORD PTR [ecx],eax
  576ecd:	b0 01                	mov    al,0x1
  576ecf:	5e                   	pop    esi
  576ed0:	c2 08 00             	ret    0x8
  576ed3:	32 c0                	xor    al,al
  576ed5:	5e                   	pop    esi
  576ed6:	c2 08 00             	ret    0x8
