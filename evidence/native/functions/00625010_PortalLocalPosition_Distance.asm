# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00625010,0x00625041); analyst name PortalLocalPosition_Distance.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00625010 <.text+0x224010>:
  625010:	51                   	push   ecx
  625011:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  625014:	2b 50 08             	sub    edx,DWORD PTR [eax+0x8]
  625017:	89 14 24             	mov    DWORD PTR [esp],edx
  62501a:	db 04 24             	fild   DWORD PTR [esp]
  62501d:	d9 41 04             	fld    DWORD PTR [ecx+0x4]
  625020:	d8 60 04             	fsub   DWORD PTR [eax+0x4]
  625023:	d9 01                	fld    DWORD PTR [ecx]
  625025:	d8 20                	fsub   DWORD PTR [eax]
  625027:	dc c8                	fmul   st(0),st
  625029:	d9 c1                	fld    st(1)
  62502b:	de ca                	fmulp  st(2),st
  62502d:	de c1                	faddp  st(1),st
  62502f:	d9 c1                	fld    st(1)
  625031:	de ca                	fmulp  st(2),st
  625033:	d9 c9                	fxch   st(1)
  625035:	d8 0d 20 d0 fb 00    	fmul   DWORD PTR ds:0xfbd020
  62503b:	de c1                	faddp  st(1),st
  62503d:	d9 fa                	fsqrt
  62503f:	59                   	pop    ecx
  625040:	c3                   	ret
