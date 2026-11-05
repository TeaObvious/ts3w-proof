/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetLoadSaveLog. Export ordinal(s):
   2633. Entry VA: 0x1099a3d0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004AE. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined2 * __cdecl WorldWrap_GetLoadSaveLog(void *param_1)

{
                    /* 0x99a3d0  2633  WorldWrap_GetLoadSaveLog */
  if ((_DAT_10cb81c0 & 1) == 0) {
    _DAT_10cb81c0 = _DAT_10cb81c0 | 1;
    _DAT_10cb81bc = "Services/Log";
    DAT_10cb81b0 = (undefined2 *)&_Dst_10ca8244;
    DAT_10cb81b4 = (undefined2 *)&_Dst_10ca8244;
    DAT_10cb81b8 = &DAT_10ca8246;
    FUN_10a90adf((_onexit_t)&LAB_10aaaab0);
  }
  if (DAT_10cb81b0 != DAT_10cb81b4) {
    *DAT_10cb81b0 = 0;
    DAT_10cb81b4 = DAT_10cb81b0;
  }
  FUN_10237c50(param_1,&DAT_10cb81b0);
  return DAT_10cb81b0;
}

