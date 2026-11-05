/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_CreatePropNode_GetKey. Export
   ordinal(s): 2120. Entry VA: 0x1098d280. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000E97. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SacsWrap_CreatePropNode_GetKey(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
                    /* 0x98d280  2120  SacsWrap_CreatePropNode_GetKey */
  if (param_2 != 0) {
    uVar1 = *(undefined4 *)(param_2 + 0x58);
    uVar2 = *(undefined4 *)(param_2 + 0x5c);
    uVar3 = *(undefined4 *)(param_2 + 0x60);
    param_1[1] = *(undefined4 *)(param_2 + 100);
    *param_1 = uVar3;
    param_1[3] = uVar2;
    param_1[2] = uVar1;
    return;
  }
  *param_1 = 0;
  param_1[1] = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  return;
}

