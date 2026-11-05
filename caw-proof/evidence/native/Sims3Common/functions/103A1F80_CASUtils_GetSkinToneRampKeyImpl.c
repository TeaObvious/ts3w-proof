/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_GetSkinToneRampKeyImpl. Export
   ordinal(s): 109. Entry VA: 0x103a1f80. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000486. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl
CASUtils_GetSkinToneRampKeyImpl
          (undefined4 *param_1,undefined4 param_2,int *param_3,undefined4 param_4,undefined4 param_5
          )

{
  int iVar1;
  code *pcVar2;
  undefined4 *puVar3;
  char cVar4;
  int *piVar5;
  undefined4 unaff_ESI;
  undefined4 uStack_28;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  int *local_14;
  
                    /* 0x3a1f80  109  CASUtils_GetSkinToneRampKeyImpl */
  puVar3 = param_1;
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  uStack_28 = 0x103a1f9a;
  piVar5 = (int *)FUN_108e50d0();
  uStack_28 = 0;
  local_20 = param_4;
  local_18 = param_2;
  local_1c = param_5;
  local_14 = param_3;
  cVar4 = (**(code **)(*piVar5 + 0xc))(&local_20,&param_1,0,0,0);
  if (cVar4 != '\0') {
    if ((local_14 == (int *)0x0) ||
       (piVar5 = (int *)(**(code **)(*local_14 + 0xc))(0x3584920), piVar5 == (int *)0x0)) {
      (**(code **)(*local_14 + 4))();
      return puVar3;
    }
    FUN_103ecbe0(piVar5,&uStack_28);
    *puVar3 = local_20;
    puVar3[2] = uStack_28;
    iVar1 = *piVar5;
    puVar3[3] = unaff_ESI;
    pcVar2 = *(code **)(iVar1 + 4);
    puVar3[1] = local_1c;
    (*pcVar2)();
  }
  return puVar3;
}

