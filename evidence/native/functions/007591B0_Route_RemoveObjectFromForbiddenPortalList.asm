# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x007591b0,0x00759235); analyst name Route_RemoveObjectFromForbiddenPortalList.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007591b0 <.text+0x3581b0>:
  7591b0:	8b 0d c4 50 1d 01    	mov    ecx,DWORD PTR ds:0x11d50c4
  7591b6:	85 c9                	test   ecx,ecx
  7591b8:	74 7a                	je     0x759234
  7591ba:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  7591be:	56                   	push   esi
  7591bf:	50                   	push   eax
  7591c0:	e8 eb 22 ff ff       	call   0x74b4b0
  7591c5:	8b f0                	mov    esi,eax
  7591c7:	85 f6                	test   esi,esi
  7591c9:	74 68                	je     0x759233
  7591cb:	8b 16                	mov    edx,DWORD PTR [esi]
  7591cd:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  7591d0:	57                   	push   edi
  7591d1:	8b ce                	mov    ecx,esi
  7591d3:	ff d0                	call   eax
  7591d5:	8d 8e 58 01 00 00    	lea    ecx,[esi+0x158]
  7591db:	e8 60 33 0c 00       	call   0x81c540
  7591e0:	8b f8                	mov    edi,eax
  7591e2:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  7591e5:	8b 07                	mov    eax,DWORD PTR [edi]
  7591e7:	3b c1                	cmp    eax,ecx
  7591e9:	74 3d                	je     0x759228
  7591eb:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  7591ef:	53                   	push   ebx
  7591f0:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  7591f4:	55                   	push   ebp
  7591f5:	8b 28                	mov    ebp,DWORD PTR [eax]
  7591f7:	3b eb                	cmp    ebp,ebx
  7591f9:	75 07                	jne    0x759202
  7591fb:	8b 68 04             	mov    ebp,DWORD PTR [eax+0x4]
  7591fe:	3b ea                	cmp    ebp,edx
  759200:	74 07                	je     0x759209
  759202:	83 c0 08             	add    eax,0x8
  759205:	3b c1                	cmp    eax,ecx
  759207:	75 ec                	jne    0x7591f5
  759209:	3b c1                	cmp    eax,ecx
  75920b:	5d                   	pop    ebp
  75920c:	5b                   	pop    ebx
  75920d:	74 19                	je     0x759228
  75920f:	8d 50 08             	lea    edx,[eax+0x8]
  759212:	3b d1                	cmp    edx,ecx
  759214:	73 0e                	jae    0x759224
  759216:	2b ca                	sub    ecx,edx
  759218:	51                   	push   ecx
  759219:	52                   	push   edx
  75921a:	50                   	push   eax
  75921b:	ff 15 88 66 f9 00    	call   DWORD PTR ds:0xf96688
  759221:	83 c4 0c             	add    esp,0xc
  759224:	83 47 04 f8          	add    DWORD PTR [edi+0x4],0xfffffff8
  759228:	8b 16                	mov    edx,DWORD PTR [esi]
  75922a:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  75922d:	5f                   	pop    edi
  75922e:	8b ce                	mov    ecx,esi
  759230:	5e                   	pop    esi
  759231:	ff e0                	jmp    eax
  759233:	5e                   	pop    esi
  759234:	c3                   	ret
