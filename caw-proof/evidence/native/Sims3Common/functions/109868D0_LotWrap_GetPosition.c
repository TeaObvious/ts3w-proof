/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_GetPosition. Export ordinal(s): 1915.
   Entry VA: 0x109868d0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A8C. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl LotWrap_GetPosition(int *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined1 local_20 [28];
  
                    /* 0x9868d0  1915  LotWrap_GetPosition */
  if (param_1 != (int *)0x0) {
    puVar3 = (undefined4 *)(**(code **)(*param_1 + 100))(local_20);
    uVar1 = puVar3[1];
    uVar2 = puVar3[2];
    *param_2 = *puVar3;
    param_2[1] = uVar1;
    param_2[2] = uVar2;
  }
  return;
}

