/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_MessagePump. Export ordinal(s): 1694. Entry
   VA: 0x1097d6c0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009BA. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl App3D_MessagePump(int param_1)

{
  int iVar1;
  int iVar2;
  tagMSG local_1c;
  
  iVar1 = PeekMessageW(&local_1c,(HWND)0x0,0,0,1);
                    /* 0x97d6c0  1694  App3D_MessagePump */
  for (iVar2 = 0; (iVar1 != 0 && ((param_1 == -1 || (iVar2 < param_1)))); iVar2 = iVar2 + 1) {
    if (local_1c.message == 0x12) {
      return -1;
    }
    TranslateMessage(&local_1c);
    DispatchMessageW(&local_1c);
    iVar1 = PeekMessageW(&local_1c,(HWND)0x0,0,0,1);
  }
  return iVar2;
}

