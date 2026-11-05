/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectDesigner_GetCurrentPatternImpl.
   Export ordinal(s): 1480. Entry VA: 0x10581d30. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C68. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_ObjectDesigner_GetCurrentPatternImpl(undefined4 *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  
                    /* 0x581d30  1480  World_ObjectDesigner_GetCurrentPatternImpl */
  uVar4 = 0;
  uVar5 = 0;
  uVar2 = 0;
  uVar3 = 0;
  iVar1 = FUN_100f8460();
  iVar1 = *(int *)(iVar1 + 0xa4);
  if (iVar1 != 0) {
    uVar4 = *(undefined4 *)(iVar1 + 0x10);
    uVar5 = *(undefined4 *)(iVar1 + 0x14);
    uVar2 = *(undefined4 *)(iVar1 + 8);
    uVar3 = *(undefined4 *)(iVar1 + 0xc);
  }
  *param_1 = uVar4;
  param_1[1] = uVar5;
  param_1[2] = uVar2;
  param_1[3] = uVar3;
  return;
}

