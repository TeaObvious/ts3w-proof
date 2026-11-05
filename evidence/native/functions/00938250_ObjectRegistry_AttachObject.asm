# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00938250, 0x00938290); analyst name ObjectRegistry_AttachObject.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00938250 <.text+0x537250>:
  938250:	83 ec 0c             	sub    esp,0xc
  938253:	56                   	push   esi
  938254:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  938258:	8d 46 04             	lea    eax,[esi+0x4]
  93825b:	ba 01 00 00 00       	mov    edx,0x1
  938260:	f0 0f c1 10          	lock xadd DWORD PTR [eax],edx
  938264:	c6 44 24 14 00       	mov    BYTE PTR [esp+0x14],0x0
  938269:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  93826d:	50                   	push   eax
  93826e:	56                   	push   esi
  93826f:	8d 54 24 0c          	lea    edx,[esp+0xc]
  938273:	52                   	push   edx
  938274:	83 c1 10             	add    ecx,0x10
  938277:	e8 14 f9 ff ff       	call   0x937b90
  93827c:	6a 00                	push   0x0
  93827e:	56                   	push   esi
  93827f:	6a 04                	push   0x4
  938281:	e8 3a d4 ff ff       	call   0x9356c0
  938286:	83 c4 0c             	add    esp,0xc
  938289:	5e                   	pop    esi
  93828a:	83 c4 0c             	add    esp,0xc
  93828d:	c2 04 00             	ret    0x4
