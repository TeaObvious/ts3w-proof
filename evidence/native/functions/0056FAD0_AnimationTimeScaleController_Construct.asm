# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0056fad0, 0x0056fb56); analyst name AnimationTimeScaleController_Construct.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0056fad0 <.text+0x16ead0>:
  56fad0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  56fad4:	56                   	push   esi
  56fad5:	57                   	push   edi
  56fad6:	50                   	push   eax
  56fad7:	8b f1                	mov    esi,ecx
  56fad9:	e8 62 63 ff ff       	call   0x565e40
  56fade:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  56fae2:	85 c0                	test   eax,eax
  56fae4:	c7 46 28 0c 2c fc 00 	mov    DWORD PTR [esi+0x28],0xfc2c0c
  56faeb:	8d 7e 28             	lea    edi,[esi+0x28]
  56faee:	c7 06 40 31 fc 00    	mov    DWORD PTR [esi],0xfc3140
  56faf4:	c7 46 08 38 31 fc 00 	mov    DWORD PTR [esi+0x8],0xfc3138
  56fafb:	c7 46 0c 34 31 fc 00 	mov    DWORD PTR [esi+0xc],0xfc3134
  56fb02:	c7 07 c4 30 fc 00    	mov    DWORD PTR [edi],0xfc30c4
  56fb08:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  56fb0b:	74 04                	je     0x56fb11
  56fb0d:	83 40 04 01          	add    DWORD PTR [eax+0x4],0x1
  56fb11:	f3 0f 10 44 24 14    	movss  xmm0,DWORD PTR [esp+0x14]
  56fb17:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  56fb1a:	f3 0f 11 46 30       	movss  DWORD PTR [esi+0x30],xmm0
  56fb1f:	8b 11                	mov    edx,DWORD PTR [ecx]
  56fb21:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  56fb24:	ff d0                	call   eax
  56fb26:	d8 76 30             	fdiv   DWORD PTR [esi+0x30]
  56fb29:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
  56fb2c:	85 c0                	test   eax,eax
  56fb2e:	d9 5e 34             	fstp   DWORD PTR [esi+0x34]
  56fb31:	74 12                	je     0x56fb45
  56fb33:	6a ff                	push   0xffffffff
  56fb35:	8d 48 0c             	lea    ecx,[eax+0xc]
  56fb38:	57                   	push   edi
  56fb39:	e8 42 73 00 00       	call   0x576e80
  56fb3e:	5f                   	pop    edi
  56fb3f:	8b c6                	mov    eax,esi
  56fb41:	5e                   	pop    esi
  56fb42:	c2 0c 00             	ret    0xc
  56fb45:	6a ff                	push   0xffffffff
  56fb47:	33 c9                	xor    ecx,ecx
  56fb49:	57                   	push   edi
  56fb4a:	e8 31 73 00 00       	call   0x576e80
  56fb4f:	5f                   	pop    edi
  56fb50:	8b c6                	mov    eax,esi
  56fb52:	5e                   	pop    esi
  56fb53:	c2 0c 00             	ret    0xc
