# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00ad4e80,0x00ad4f4c); analyst name LotContent_ExportHouseholdToTravelDatabase.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ad4e80 <.text+0x6d3e80>:
  ad4e80:	83 ec 38             	sub    esp,0x38
  ad4e83:	53                   	push   ebx
  ad4e84:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
  ad4e88:	55                   	push   ebp
  ad4e89:	56                   	push   esi
  ad4e8a:	8b 35 a4 a6 1e 01    	mov    esi,DWORD PTR ds:0x11ea6a4
  ad4e90:	57                   	push   edi
  ad4e91:	8b 7c 24 50          	mov    edi,DWORD PTR [esp+0x50]
  ad4e95:	57                   	push   edi
  ad4e96:	53                   	push   ebx
  ad4e97:	8b e9                	mov    ebp,ecx
  ad4e99:	e8 62 f2 ff ff       	call   0xad4100
  ad4e9e:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  ad4ea2:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
  ad4ea6:	89 4c 24 34          	mov    DWORD PTR [esp+0x34],ecx
  ad4eaa:	83 c4 08             	add    esp,0x8
  ad4ead:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  ad4eb1:	c7 44 24 20 94 8e 06 01 	mov    DWORD PTR [esp+0x20],0x1068e94
  ad4eb9:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  ad4ebd:	e8 3e 2a d0 ff       	call   0x7d7900
  ad4ec2:	8d 54 24 30          	lea    edx,[esp+0x30]
  ad4ec6:	52                   	push   edx
  ad4ec7:	8b ce                	mov    ecx,esi
  ad4ec9:	e8 12 c8 ec ff       	call   0x9a16e0
  ad4ece:	84 c0                	test   al,al
  ad4ed0:	74 65                	je     0xad4f37
  ad4ed2:	8b 74 24 54          	mov    esi,DWORD PTR [esp+0x54]
  ad4ed6:	8b 06                	mov    eax,DWORD PTR [esi]
  ad4ed8:	6a 00                	push   0x0
  ad4eda:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  ad4ede:	51                   	push   ecx
  ad4edf:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  ad4ee3:	6a 00                	push   0x0
  ad4ee5:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  ad4ee9:	52                   	push   edx
  ad4eea:	51                   	push   ecx
  ad4eeb:	50                   	push   eax
  ad4eec:	c7 44 24 28 20 bf 04 01 	mov    DWORD PTR [esp+0x28],0x104bf20
  ad4ef4:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
  ad4ef8:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  ad4efc:	e8 2f 42 d0 ff       	call   0x7d9130
  ad4f01:	83 c4 18             	add    esp,0x18
  ad4f04:	85 c0                	test   eax,eax
  ad4f06:	76 2f                	jbe    0xad4f37
  ad4f08:	57                   	push   edi
  ad4f09:	53                   	push   ebx
  ad4f0a:	8d 54 24 38          	lea    edx,[esp+0x38]
  ad4f0e:	52                   	push   edx
  ad4f0f:	56                   	push   esi
  ad4f10:	8b cd                	mov    ecx,ebp
  ad4f12:	e8 a9 f7 ff ff       	call   0xad46c0
  ad4f17:	8a 5e 14             	mov    bl,BYTE PTR [esi+0x14]
  ad4f1a:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  ad4f1e:	c7 44 24 10 cc 3c fb 00 	mov    DWORD PTR [esp+0x10],0xfb3ccc
  ad4f26:	e8 65 2a d0 ff       	call   0x7d7990
  ad4f2b:	5f                   	pop    edi
  ad4f2c:	5e                   	pop    esi
  ad4f2d:	5d                   	pop    ebp
  ad4f2e:	8a c3                	mov    al,bl
  ad4f30:	5b                   	pop    ebx
  ad4f31:	83 c4 38             	add    esp,0x38
  ad4f34:	c2 14 00             	ret    0x14
  ad4f37:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  ad4f3b:	e8 50 2a d0 ff       	call   0x7d7990
  ad4f40:	5f                   	pop    edi
  ad4f41:	5e                   	pop    esi
  ad4f42:	5d                   	pop    ebp
  ad4f43:	32 c0                	xor    al,al
  ad4f45:	5b                   	pop    ebx
  ad4f46:	83 c4 38             	add    esp,0x38
  ad4f49:	c2 14 00             	ret    0x14
