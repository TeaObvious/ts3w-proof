# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00937fc0, 0x00938007); analyst name ObjectRegistry_AcquireGuid.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00937fc0 <.text+0x536fc0>:
  937fc0:	83 ec 08             	sub    esp,0x8
  937fc3:	56                   	push   esi
  937fc4:	8b f1                	mov    esi,ecx
  937fc6:	8d 44 24 10          	lea    eax,[esp+0x10]
  937fca:	50                   	push   eax
  937fcb:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  937fcf:	51                   	push   ecx
  937fd0:	8d 4e 10             	lea    ecx,[esi+0x10]
  937fd3:	e8 48 fb ff ff       	call   0x937b20
  937fd8:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  937fdc:	3b 86 34 10 00 00    	cmp    eax,DWORD PTR [esi+0x1034]
  937fe2:	5e                   	pop    esi
  937fe3:	74 1a                	je     0x937fff
  937fe5:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  937fe9:	89 02                	mov    DWORD PTR [edx],eax
  937feb:	83 c0 04             	add    eax,0x4
  937fee:	b9 01 00 00 00       	mov    ecx,0x1
  937ff3:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  937ff7:	b0 01                	mov    al,0x1
  937ff9:	83 c4 08             	add    esp,0x8
  937ffc:	c2 0c 00             	ret    0xc
  937fff:	32 c0                	xor    al,al
  938001:	83 c4 08             	add    esp,0x8
  938004:	c2 0c 00             	ret    0xc
