/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_SlotSetupBuilder_GetBuffer. Export
   ordinal(s): 2189. Entry VA: 0x1098d3b0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000ED5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl SacsWrap_SlotSetupBuilder_GetBuffer(undefined4 *param_1,uint param_2,void *param_3)

{
  uint uVar1;
  int iVar2;
  size_t _Size;
  
                    /* 0x98d3b0  2189  SacsWrap_SlotSetupBuilder_GetBuffer */
  if (param_1 == (undefined4 *)0x0) {
    return 0;
  }
  iVar2 = *(int *)param_1[1];
  _Size = (*(int *)*param_1 + 1) * 0x10;
  uVar1 = _Size + iVar2 * 8 + 4U;
  if (uVar1 <= param_2) {
    memcpy(param_3,(int *)*param_1,_Size);
    *(undefined4 *)(_Size + (int)param_3) = *(undefined4 *)param_1[1];
    memcpy((void *)(_Size + 4 + (int)param_3),param_1 + 2,iVar2 * 8);
    return uVar1;
  }
  return 0;
}

