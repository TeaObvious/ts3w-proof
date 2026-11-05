# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d7110 <.text+0x3d6110>:
  7d7110:	51                   	push   ecx
  7d7111:	53                   	push   ebx
  7d7112:	56                   	push   esi
  7d7113:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  7d7117:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  7d711a:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  7d711d:	57                   	push   edi
  7d711e:	8b f9                	mov    edi,ecx
  7d7120:	50                   	push   eax
  7d7121:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  7d7125:	51                   	push   ecx
  7d7126:	52                   	push   edx
  7d7127:	e8 54 68 d0 ff       	call   0x4dd980
  7d712c:	83 c4 0c             	add    esp,0xc
  7d712f:	8b ce                	mov    ecx,esi
  7d7131:	50                   	push   eax
  7d7132:	e8 b9 08 00 00       	call   0x7d79f0
  7d7137:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  7d713a:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  7d713d:	50                   	push   eax
  7d713e:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  7d7142:	51                   	push   ecx
  7d7143:	52                   	push   edx
  7d7144:	e8 37 68 d0 ff       	call   0x4dd980
  7d7149:	83 c4 0c             	add    esp,0xc
  7d714c:	8b ce                	mov    ecx,esi
  7d714e:	50                   	push   eax
  7d714f:	e8 9c 08 00 00       	call   0x7d79f0
  7d7154:	8b ce                	mov    ecx,esi
  7d7156:	e8 15 13 00 00       	call   0x7d8470
  7d715b:	8b d8                	mov    ebx,eax
  7d715d:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  7d7161:	6a 00                	push   0x0
  7d7163:	50                   	push   eax
  7d7164:	8b ce                	mov    ecx,esi
  7d7166:	e8 25 13 00 00       	call   0x7d8490
  7d716b:	6a 00                	push   0x0
  7d716d:	56                   	push   esi
  7d716e:	8b cf                	mov    ecx,edi
  7d7170:	e8 1b fb ff ff       	call   0x7d6c90
  7d7175:	6a 00                	push   0x0
  7d7177:	53                   	push   ebx
  7d7178:	8b ce                	mov    ecx,esi
  7d717a:	e8 11 13 00 00       	call   0x7d8490
  7d717f:	5f                   	pop    edi
  7d7180:	5e                   	pop    esi
  7d7181:	5b                   	pop    ebx
  7d7182:	59                   	pop    ecx
  7d7183:	c2 04 00             	ret    0x4
