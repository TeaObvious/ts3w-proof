# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00599300, 0x0059937a).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00599300 <.text+0x198300>:
  599300:	83 ec 1c             	sub    esp,0x1c
  599303:	56                   	push   esi
  599304:	8b 35 d0 eb 1c 01    	mov    esi,DWORD PTR ds:0x11cebd0
  59930a:	e8 01 56 07 00       	call   0x60e910
  59930f:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  599313:	51                   	push   ecx
  599314:	8d 54 24 0c          	lea    edx,[esp+0xc]
  599318:	52                   	push   edx
  599319:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  59931d:	51                   	push   ecx
  59931e:	8b c8                	mov    ecx,eax
  599320:	e8 db 59 07 00       	call   0x60ed00
  599325:	8b 16                	mov    edx,DWORD PTR [esi]
  599327:	8b 52 40             	mov    edx,DWORD PTR [edx+0x40]
  59932a:	8d 44 24 10          	lea    eax,[esp+0x10]
  59932e:	50                   	push   eax
  59932f:	8b ce                	mov    ecx,esi
  599331:	ff d2                	call   edx
  599333:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  599337:	2b 44 24 10          	sub    eax,DWORD PTR [esp+0x10]
  59933b:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  59933f:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  599343:	f3 0f 59 44 24 2c    	mulss  xmm0,DWORD PTR [esp+0x2c]
  599349:	f3 0f 2c c0          	cvttss2si eax,xmm0
  59934d:	99                   	cdq
  59934e:	f7 7c 24 04          	idiv   DWORD PTR [esp+0x4]
  599352:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  599356:	2b 54 24 14          	sub    edx,DWORD PTR [esp+0x14]
  59935a:	5e                   	pop    esi
  59935b:	f3 0f 2a c2          	cvtsi2ss xmm0,edx
  59935f:	f3 0f 59 44 24 2c    	mulss  xmm0,DWORD PTR [esp+0x2c]
  599365:	89 01                	mov    DWORD PTR [ecx],eax
  599367:	f3 0f 2c c0          	cvttss2si eax,xmm0
  59936b:	99                   	cdq
  59936c:	f7 7c 24 04          	idiv   DWORD PTR [esp+0x4]
  599370:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  599374:	89 01                	mov    DWORD PTR [ecx],eax
  599376:	83 c4 1c             	add    esp,0x1c
  599379:	c3                   	ret
