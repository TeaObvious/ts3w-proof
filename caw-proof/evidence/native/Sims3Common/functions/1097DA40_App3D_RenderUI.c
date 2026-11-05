/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_RenderUI. Export ordinal(s): 1699. Entry
   VA: 0x1097da40. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009C1. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl App3D_RenderUI(int param_1,int param_2,int param_3,int param_4)

{
  int *piVar1;
  float local_10;
  float local_c;
  float local_8;
  float local_4;
  
                    /* 0x97da40  1699  App3D_RenderUI */
  piVar1 = (int *)FUN_1093d2e0();
  local_10 = (float)param_1;
  local_c = (float)param_2;
  local_8 = (float)param_3;
  local_4 = (float)param_4;
  (**(code **)(*piVar1 + 0x30))(&local_10);
  return;
}

