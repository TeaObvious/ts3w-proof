# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00565e40, 0x00565e95); analyst name AnimationController_ConstructBase.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00565e40 <.text+0x164e40>:
  565e40:	8b c1                	mov    eax,ecx
  565e42:	33 d2                	xor    edx,edx
  565e44:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  565e47:	c7 40 08 94 d2 ff 00 	mov    DWORD PTR [eax+0x8],0xffd294
  565e4e:	c7 40 0c a8 3f fc 00 	mov    DWORD PTR [eax+0xc],0xfc3fa8
  565e55:	8d 48 10             	lea    ecx,[eax+0x10]
  565e58:	89 49 04             	mov    DWORD PTR [ecx+0x4],ecx
  565e5b:	89 09                	mov    DWORD PTR [ecx],ecx
  565e5d:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  565e61:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
  565e64:	89 48 1c             	mov    DWORD PTR [eax+0x1c],ecx
  565e67:	88 50 24             	mov    BYTE PTR [eax+0x24],dl
  565e6a:	c7 00 f8 29 fc 00    	mov    DWORD PTR [eax],0xfc29f8
  565e70:	c7 40 08 ec 29 fc 00 	mov    DWORD PTR [eax+0x8],0xfc29ec
  565e77:	c7 40 0c e8 29 fc 00 	mov    DWORD PTR [eax+0xc],0xfc29e8
  565e7e:	8b 0d 90 05 15 01    	mov    ecx,DWORD PTR ds:0x1150590
  565e84:	8b d1                	mov    edx,ecx
  565e86:	83 c1 01             	add    ecx,0x1
  565e89:	89 0d 90 05 15 01    	mov    DWORD PTR ds:0x1150590,ecx
  565e8f:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  565e92:	c2 04 00             	ret    0x4
