# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00568590, 0x005685ce); analyst name AnimationClipController_GetRemainingLifetime.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00568590 <.text+0x167590>:
  568590:	51                   	push   ecx
  568591:	56                   	push   esi
  568592:	8b f1                	mov    esi,ecx
  568594:	8b 06                	mov    eax,DWORD PTR [esi]
  568596:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  568599:	ff d2                	call   edx
  56859b:	d9 05 94 05 15 01    	fld    DWORD PTR ds:0x1150594
  5685a1:	d9 c0                	fld    st(0)
  5685a3:	d9 ca                	fxch   st(2)
  5685a5:	df ea                	fucomip st,st(2)
  5685a7:	dd d9                	fstp   st(1)
  5685a9:	9f                   	lahf
  5685aa:	f6 c4 44             	test   ah,0x44
  5685ad:	7b 1c                	jnp    0x5685cb
  5685af:	8b 06                	mov    eax,DWORD PTR [esi]
  5685b1:	dd d8                	fstp   st(0)
  5685b3:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  5685b6:	8b ce                	mov    ecx,esi
  5685b8:	ff d2                	call   edx
  5685ba:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  5685be:	8b 06                	mov    eax,DWORD PTR [esi]
  5685c0:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
  5685c3:	8b ce                	mov    ecx,esi
  5685c5:	ff d2                	call   edx
  5685c7:	d8 6c 24 04          	fsubr  DWORD PTR [esp+0x4]
  5685cb:	5e                   	pop    esi
  5685cc:	59                   	pop    ecx
  5685cd:	c3                   	ret
