# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00568c60, 0x00568d1d); analyst name AnimationClipController_Construct.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00568c60 <.text+0x167c60>:
  568c60:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  568c64:	56                   	push   esi
  568c65:	50                   	push   eax
  568c66:	8b f1                	mov    esi,ecx
  568c68:	e8 d3 d1 ff ff       	call   0x565e40
  568c6d:	c7 06 b0 2b fc 00    	mov    DWORD PTR [esi],0xfc2bb0
  568c73:	c7 46 08 a4 2b fc 00 	mov    DWORD PTR [esi+0x8],0xfc2ba4
  568c7a:	c7 46 0c a0 2b fc 00 	mov    DWORD PTR [esi+0xc],0xfc2ba0
  568c81:	8d 46 38             	lea    eax,[esi+0x38]
  568c84:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  568c87:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  568c8a:	05 b0 04 00 00       	add    eax,0x4b0
  568c8f:	8d 8e f0 04 00 00    	lea    ecx,[esi+0x4f0]
  568c95:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  568c98:	e8 d3 01 01 00       	call   0x578e70
  568c9d:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  568ca1:	0f 57 c0             	xorps  xmm0,xmm0
  568ca4:	33 c0                	xor    eax,eax
  568ca6:	89 86 d0 05 00 00    	mov    DWORD PTR [esi+0x5d0],eax
  568cac:	89 86 d4 05 00 00    	mov    DWORD PTR [esi+0x5d4],eax
  568cb2:	89 86 d8 05 00 00    	mov    DWORD PTR [esi+0x5d8],eax
  568cb8:	51                   	push   ecx
  568cb9:	8b ce                	mov    ecx,esi
  568cbb:	d9 1c 24             	fstp   DWORD PTR [esp]
  568cbe:	f3 0f 11 86 e4 05 00 00 	movss  DWORD PTR [esi+0x5e4],xmm0
  568cc6:	f3 0f 11 86 e8 05 00 00 	movss  DWORD PTR [esi+0x5e8],xmm0
  568cce:	c7 86 ec 05 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x5ec],0x1
  568cd8:	89 86 f0 05 00 00    	mov    DWORD PTR [esi+0x5f0],eax
  568cde:	c7 86 f4 05 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x5f4],0xffffffff
  568ce8:	88 86 f8 05 00 00    	mov    BYTE PTR [esi+0x5f8],al
  568cee:	88 86 f9 05 00 00    	mov    BYTE PTR [esi+0x5f9],al
  568cf4:	88 86 fa 05 00 00    	mov    BYTE PTR [esi+0x5fa],al
  568cfa:	88 86 fb 05 00 00    	mov    BYTE PTR [esi+0x5fb],al
  568d00:	88 86 fc 05 00 00    	mov    BYTE PTR [esi+0x5fc],al
  568d06:	88 86 fd 05 00 00    	mov    BYTE PTR [esi+0x5fd],al
  568d0c:	88 86 fe 05 00 00    	mov    BYTE PTR [esi+0x5fe],al
  568d12:	e8 39 f9 ff ff       	call   0x568650
  568d17:	8b c6                	mov    eax,esi
  568d19:	5e                   	pop    esi
  568d1a:	c2 08 00             	ret    0x8
