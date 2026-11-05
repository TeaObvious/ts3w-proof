# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074c060, 0x0074c115); analyst name RoutePoint_ResolveLotAndLevel.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074c060 <.text+0x34b060>:
  74c060:	55                   	push   ebp
  74c061:	8b ec                	mov    ebp,esp
  74c063:	83 e4 f0             	and    esp,0xfffffff0
  74c066:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  74c06c:	83 ec 28             	sub    esp,0x28
  74c06f:	85 c9                	test   ecx,ecx
  74c071:	56                   	push   esi
  74c072:	57                   	push   edi
  74c073:	0f 84 94 00 00 00    	je     0x74c10d
  74c079:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  74c07c:	0f 28 06             	movaps xmm0,XMMWORD PTR [esi]
  74c07f:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  74c084:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  74c088:	83 ec 08             	sub    esp,0x8
  74c08b:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  74c08f:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  74c094:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  74c098:	d9 1c 24             	fstp   DWORD PTR [esp]
  74c09b:	e8 30 c7 51 00       	call   0xc687d0
  74c0a0:	85 c0                	test   eax,eax
  74c0a2:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  74c0a5:	89 07                	mov    DWORD PTR [edi],eax
  74c0a7:	74 64                	je     0x74c10d
  74c0a9:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  74c0b1:	6a 01                	push   0x1
  74c0b3:	6a 00                	push   0x0
  74c0b5:	56                   	push   esi
  74c0b6:	50                   	push   eax
  74c0b7:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  74c0bd:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  74c0c3:	c7 44 24 28 00 00 00 00 	mov    DWORD PTR [esp+0x28],0x0
  74c0cb:	e8 00 39 3b 00       	call   0xaff9d0
  74c0d0:	83 c4 10             	add    esp,0x10
  74c0d3:	84 c0                	test   al,al
  74c0d5:	74 1b                	je     0x74c0f2
  74c0d7:	8b 0f                	mov    ecx,DWORD PTR [edi]
  74c0d9:	8d 44 24 10          	lea    eax,[esp+0x10]
  74c0dd:	50                   	push   eax
  74c0de:	56                   	push   esi
  74c0df:	51                   	push   ecx
  74c0e0:	e8 3b 08 39 00       	call   0xadc920
  74c0e5:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  74c0e9:	83 c4 0c             	add    esp,0xc
  74c0ec:	5f                   	pop    edi
  74c0ed:	5e                   	pop    esi
  74c0ee:	8b e5                	mov    esp,ebp
  74c0f0:	5d                   	pop    ebp
  74c0f1:	c3                   	ret
  74c0f2:	8b 07                	mov    eax,DWORD PTR [edi]
  74c0f4:	8d 54 24 10          	lea    edx,[esp+0x10]
  74c0f8:	52                   	push   edx
  74c0f9:	56                   	push   esi
  74c0fa:	50                   	push   eax
  74c0fb:	e8 60 07 39 00       	call   0xadc860
  74c100:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  74c104:	83 c4 0c             	add    esp,0xc
  74c107:	5f                   	pop    edi
  74c108:	5e                   	pop    esi
  74c109:	8b e5                	mov    esp,ebp
  74c10b:	5d                   	pop    ebp
  74c10c:	c3                   	ret
  74c10d:	5f                   	pop    edi
  74c10e:	33 c0                	xor    eax,eax
  74c110:	5e                   	pop    esi
  74c111:	8b e5                	mov    esp,ebp
  74c113:	5d                   	pop    ebp
  74c114:	c3                   	ret
