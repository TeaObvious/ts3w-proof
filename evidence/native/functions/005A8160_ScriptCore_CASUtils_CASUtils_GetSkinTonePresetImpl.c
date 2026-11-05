/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156260 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_GetSkinTonePresetImpl [assembly=ScriptCore token=0x0600031B; key:
   Sims3.SimIFace.ResourceKey; return=Sims3.SimIFace.CAS.SkinTonePreset]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.CASUtils::CASUtils_GetSkinTonePresetImpl
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  code *pcVar5;
  undefined4 *puVar6;
  char cVar7;
  int *piVar8;
  int *unaff_ESI;
  undefined4 uVar9;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  puVar6 = param_1;
  memset(param_1,0,0x30);
  piVar8 = (int *)FUN_004afe80();
  local_10 = param_4;
  local_8 = param_2;
  uVar9 = 0;
  local_c = param_5;
  local_4 = param_3;
  cVar7 = (**(code **)(*piVar8 + 0xc))();
  if ((cVar7 != '\0') && (unaff_ESI != (int *)0x0)) {
    piVar8 = (int *)(**(code **)(*unaff_ESI + 0xc))(0xe37a2b15);
    if (piVar8 != (int *)0x0) {
      puVar6[4] = piVar8[10];
      puVar6[2] = &local_10;
      puVar6[1] = uVar9;
      *puVar6 = 0;
      iVar1 = piVar8[0xd];
      puVar6[3] = &param_1;
      iVar2 = piVar8[0xc];
      iVar3 = piVar8[0xf];
      puVar6[9] = iVar1;
      iVar1 = *piVar8;
      iVar4 = piVar8[0xe];
      puVar6[8] = iVar2;
      pcVar5 = *(code **)(iVar1 + 4);
      puVar6[7] = iVar3;
      puVar6[6] = iVar4;
      puVar6[10] = 0xff00ffff;
      (*pcVar5)();
    }
  }
  return puVar6;
}

