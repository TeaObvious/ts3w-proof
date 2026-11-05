# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00938f30, 0x00939028); analyst name ObjectRegistry_Construct.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00938f30 <.text+0x537f30>:
  938f30:	53                   	push   ebx
  938f31:	56                   	push   esi
  938f32:	57                   	push   edi
  938f33:	33 db                	xor    ebx,ebx
  938f35:	53                   	push   ebx
  938f36:	68 e8 fa de 03       	push   0x3defae8
  938f3b:	8b f1                	mov    esi,ecx
  938f3d:	e8 7e 65 c6 ff       	call   0x59f4c0
  938f42:	68 24 10 00 00       	push   0x1024
  938f47:	8d 7e 10             	lea    edi,[esi+0x10]
  938f4a:	53                   	push   ebx
  938f4b:	c7 06 d4 3e 04 01    	mov    DWORD PTR [esi],0x1043ed4
  938f51:	57                   	push   edi
  938f52:	89 9f 28 10 00 00    	mov    DWORD PTR [edi+0x1028],ebx
  938f58:	e8 3b 63 64 00       	call   0xf7f298
  938f5d:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  938f61:	83 c4 0c             	add    esp,0xc
  938f64:	3b c3                	cmp    eax,ebx
  938f66:	c7 87 24 10 00 00 ff ff ff ff 	mov    DWORD PTR [edi+0x1024],0xffffffff
  938f70:	75 05                	jne    0x938f77
  938f72:	e8 49 6a ff ff       	call   0x92f9c0
  938f77:	89 86 40 10 00 00    	mov    DWORD PTR [esi+0x1040],eax
  938f7d:	c7 86 c4 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x11c4],0x1
  938f87:	89 9e c8 11 00 00    	mov    DWORD PTR [esi+0x11c8],ebx
  938f8d:	89 9e cc 11 00 00    	mov    DWORD PTR [esi+0x11cc],ebx
  938f93:	89 9e d0 11 00 00    	mov    DWORD PTR [esi+0x11d0],ebx
  938f99:	8d be d4 11 00 00    	lea    edi,[esi+0x11d4]
  938f9f:	68 80 00 00 00       	push   0x80
  938fa4:	89 1f                	mov    DWORD PTR [edi],ebx
  938fa6:	89 5f 04             	mov    DWORD PTR [edi+0x4],ebx
  938fa9:	89 5f 08             	mov    DWORD PTR [edi+0x8],ebx
  938fac:	8d 86 44 10 00 00    	lea    eax,[esi+0x1044]
  938fb2:	c7 47 0c 1c 3f 04 01 	mov    DWORD PTR [edi+0xc],0x1043f1c
  938fb9:	53                   	push   ebx
  938fba:	50                   	push   eax
  938fbb:	88 9e e4 11 00 00    	mov    BYTE PTR [esi+0x11e4],bl
  938fc1:	89 9e e8 11 00 00    	mov    DWORD PTR [esi+0x11e8],ebx
  938fc7:	e8 cc 62 64 00       	call   0xf7f298
  938fcc:	68 80 00 00 00       	push   0x80
  938fd1:	8d 8e c4 10 00 00    	lea    ecx,[esi+0x10c4]
  938fd7:	53                   	push   ebx
  938fd8:	51                   	push   ecx
  938fd9:	e8 ba 62 64 00       	call   0xf7f298
  938fde:	68 80 00 00 00       	push   0x80
  938fe3:	8d 96 44 11 00 00    	lea    edx,[esi+0x1144]
  938fe9:	53                   	push   ebx
  938fea:	52                   	push   edx
  938feb:	e8 a8 62 64 00       	call   0xf7f298
  938ff0:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  938ff3:	83 c4 24             	add    esp,0x24
  938ff6:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  938ff9:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  938ffd:	73 14                	jae    0x939013
  938fff:	3b c3                	cmp    eax,ebx
  939001:	8d 48 04             	lea    ecx,[eax+0x4]
  939004:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
  939007:	74 17                	je     0x939020
  939009:	89 18                	mov    DWORD PTR [eax],ebx
  93900b:	5f                   	pop    edi
  93900c:	8b c6                	mov    eax,esi
  93900e:	5e                   	pop    esi
  93900f:	5b                   	pop    ebx
  939010:	c2 04 00             	ret    0x4
  939013:	8d 54 24 10          	lea    edx,[esp+0x10]
  939017:	52                   	push   edx
  939018:	50                   	push   eax
  939019:	8b cf                	mov    ecx,edi
  93901b:	e8 00 94 04 00       	call   0x982420
  939020:	5f                   	pop    edi
  939021:	8b c6                	mov    eax,esi
  939023:	5e                   	pop    esi
  939024:	5b                   	pop    ebx
  939025:	c2 04 00             	ret    0x4
