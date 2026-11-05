# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00627d90,0x00627dfd); analyst name PortalGraphSearch_EstimateDistance.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00627d90 <.text+0x226d90>:
  627d90:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  627d94:	53                   	push   ebx
  627d95:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
  627d99:	55                   	push   ebp
  627d9a:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  627d9e:	56                   	push   esi
  627d9f:	57                   	push   edi
  627da0:	6a 00                	push   0x0
  627da2:	50                   	push   eax
  627da3:	8b f9                	mov    edi,ecx
  627da5:	8b 4b 40             	mov    ecx,DWORD PTR [ebx+0x40]
  627da8:	55                   	push   ebp
  627da9:	51                   	push   ecx
  627daa:	8b cf                	mov    ecx,edi
  627dac:	e8 1f ef ff ff       	call   0x626cd0
  627db1:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  627db5:	6a 00                	push   0x0
  627db7:	52                   	push   edx
  627db8:	8b f0                	mov    esi,eax
  627dba:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
  627dbd:	55                   	push   ebp
  627dbe:	50                   	push   eax
  627dbf:	8b cf                	mov    ecx,edi
  627dc1:	e8 0a ef ff ff       	call   0x626cd0
  627dc6:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  627dc9:	2b 48 08             	sub    ecx,DWORD PTR [eax+0x8]
  627dcc:	5f                   	pop    edi
  627dcd:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  627dd1:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
  627dd5:	d9 46 04             	fld    DWORD PTR [esi+0x4]
  627dd8:	d8 60 04             	fsub   DWORD PTR [eax+0x4]
  627ddb:	d9 06                	fld    DWORD PTR [esi]
  627ddd:	5e                   	pop    esi
  627dde:	d8 20                	fsub   DWORD PTR [eax]
  627de0:	5d                   	pop    ebp
  627de1:	5b                   	pop    ebx
  627de2:	dc c8                	fmul   st(0),st
  627de4:	d9 c1                	fld    st(1)
  627de6:	de ca                	fmulp  st(2),st
  627de8:	de c1                	faddp  st(1),st
  627dea:	d9 c1                	fld    st(1)
  627dec:	de ca                	fmulp  st(2),st
  627dee:	d9 c9                	fxch   st(1)
  627df0:	d8 0d 20 d0 fb 00    	fmul   DWORD PTR ds:0xfbd020
  627df6:	de c1                	faddp  st(1),st
  627df8:	d9 fa                	fsqrt
  627dfa:	c2 10 00             	ret    0x10
