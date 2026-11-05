/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156838 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_GetSkinToneRampKeyImpl [assembly=ScriptCore token=0x06000392; key:
   Sims3.SimIFace.ResourceKey; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.CASUtils::CASUtils_GetSkinToneRampKeyImpl
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
  
  puVar3 = param_1;
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  uStack_28 = 0x5a7dea;
  piVar5 = (int *)FUN_004afe80();
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
    FUN_005f27e0(piVar5,&uStack_28);
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

