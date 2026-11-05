# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00610280,0x00610321); analyst name RenderDevice_BeginTechniqueStateScope.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00610280 <.text+0x20f280>:
  610280:	8b 81 d4 07 00 00    	mov    eax,DWORD PTR [ecx+0x7d4]
  610286:	09 81 b8 07 00 00    	or     DWORD PTR [ecx+0x7b8],eax
  61028c:	8b 81 d8 07 00 00    	mov    eax,DWORD PTR [ecx+0x7d8]
  610292:	09 81 bc 07 00 00    	or     DWORD PTR [ecx+0x7bc],eax
  610298:	8b 81 dc 07 00 00    	mov    eax,DWORD PTR [ecx+0x7dc]
  61029e:	09 81 c0 07 00 00    	or     DWORD PTR [ecx+0x7c0],eax
  6102a4:	8b 81 e0 07 00 00    	mov    eax,DWORD PTR [ecx+0x7e0]
  6102aa:	09 81 c4 07 00 00    	or     DWORD PTR [ecx+0x7c4],eax
  6102b0:	8b 81 e4 07 00 00    	mov    eax,DWORD PTR [ecx+0x7e4]
  6102b6:	09 81 c8 07 00 00    	or     DWORD PTR [ecx+0x7c8],eax
  6102bc:	8b 81 e8 07 00 00    	mov    eax,DWORD PTR [ecx+0x7e8]
  6102c2:	09 81 cc 07 00 00    	or     DWORD PTR [ecx+0x7cc],eax
  6102c8:	8b 81 ec 07 00 00    	mov    eax,DWORD PTR [ecx+0x7ec]
  6102ce:	33 d2                	xor    edx,edx
  6102d0:	09 81 d0 07 00 00    	or     DWORD PTR [ecx+0x7d0],eax
  6102d6:	89 91 d4 07 00 00    	mov    DWORD PTR [ecx+0x7d4],edx
  6102dc:	89 91 d8 07 00 00    	mov    DWORD PTR [ecx+0x7d8],edx
  6102e2:	89 91 dc 07 00 00    	mov    DWORD PTR [ecx+0x7dc],edx
  6102e8:	89 91 e0 07 00 00    	mov    DWORD PTR [ecx+0x7e0],edx
  6102ee:	89 91 e4 07 00 00    	mov    DWORD PTR [ecx+0x7e4],edx
  6102f4:	89 91 e8 07 00 00    	mov    DWORD PTR [ecx+0x7e8],edx
  6102fa:	89 91 ec 07 00 00    	mov    DWORD PTR [ecx+0x7ec],edx
  610300:	8d 81 7c 08 00 00    	lea    eax,[ecx+0x87c]
  610306:	8d 4a 10             	lea    ecx,[edx+0x10]
  610309:	56                   	push   esi
  61030a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  610310:	8b 30                	mov    esi,DWORD PTR [eax]
  610312:	09 70 fc             	or     DWORD PTR [eax-0x4],esi
  610315:	89 10                	mov    DWORD PTR [eax],edx
  610317:	83 c0 74             	add    eax,0x74
  61031a:	83 e9 01             	sub    ecx,0x1
  61031d:	75 f1                	jne    0x610310
  61031f:	5e                   	pop    esi
  610320:	c3                   	ret
