/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CameraWrap_GetTransform. Export ordinal(s): 1751.
   Entry VA: 0x1098f410. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000864. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CameraWrap_GetTransform(undefined4 *param_1,int param_2)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 local_40 [16];
  
                    /* 0x98f410  1751  CameraWrap_GetTransform */
  puVar1 = (undefined4 *)FUN_10980020(local_40,(undefined4 *)(param_2 + 0x30));
  for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *puVar1;
    puVar1 = puVar1 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

