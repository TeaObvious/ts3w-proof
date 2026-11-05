/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CameraWrap_GetViewToClipSpaceMatrix. Export
   ordinal(s): 1752. Entry VA: 0x1098f480. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000865. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence.
   
   Original CAW 1.22.10 Sims3Common.dll: CameraWrap_GetViewToClipSpaceMatrix copies camera+0x70
   through pure-copy0x10980020. It exposes the original zero-to-one depth matrix produced
   by0x107538A0. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

void __cdecl CameraWrap_GetViewToClipSpaceMatrix(undefined4 *param_1,int param_2)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 local_40 [16];
  
                    /* 0x98f480  1752  CameraWrap_GetViewToClipSpaceMatrix */
  puVar1 = (undefined4 *)CAW_CopyMatrix16Words(local_40,(undefined4 *)(param_2 + 0x70));
  for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *puVar1;
    puVar1 = puVar1 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

