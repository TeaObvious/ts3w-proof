/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_State_SetProperties. Export ordinal(s):
   2241. Entry VA: 0x1098cb20. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000D34. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl SacsWrap_State_SetProperties(void *param_1,uint param_2,uint param_3)

{
  uint uVar1;
  
                    /* 0x98cb20  2241  SacsWrap_State_SetProperties */
  if (param_1 != (void *)0x0) {
    FUN_105eef70(param_1,param_2,param_3);
  }
  if (param_1 != (void *)0x0) {
    uVar1 = FUN_105ee9b0((int)param_1);
    return uVar1;
  }
  return 0;
}

