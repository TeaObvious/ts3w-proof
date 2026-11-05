/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156480 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_KeySearchGetCurrentImpl [assembly=ScriptCore token=0x060002EE;
   handle: System.UInt32; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CASUtils::CASUtils_KeySearchGetCurrentImpl(undefined4 *param_1,uint param_2)

{
  undefined4 *puVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  
  if ((param_2 & 0xff000000) == 0x35000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar3 = (**(code **)(*piVar2 + 0xcc))(param_2);
    if (iVar3 != 0) {
      uVar4 = 0;
      uVar5 = 0;
      uVar6 = 0;
      uVar7 = 0;
      if ((*(int *)(iVar3 + 0x14) != 0) && (*(int *)(iVar3 + 0x10) != *(int *)(iVar3 + 4))) {
        puVar1 = *(undefined4 **)(iVar3 + 0x10);
        uVar5 = puVar1[3];
        uVar6 = *puVar1;
        uVar7 = puVar1[1];
        uVar4 = puVar1[2];
      }
      *param_1 = uVar4;
      param_1[1] = uVar5;
      param_1[2] = uVar6;
      param_1[3] = uVar7;
      return;
    }
  }
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  return;
}

