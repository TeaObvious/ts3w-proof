/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156218 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_PartSearchGetCurrentImpl [assembly=ScriptCore token=0x060002E2;
   handle: System.UInt32; return=Sims3.SimIFace.CAS.CASPart]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.CASUtils::CASUtils_PartSearchGetCurrentImpl(undefined4 *param_1,uint param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 local_48 [18];
  
  if ((param_2 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_2);
    if (iVar2 != 0) {
      memset(param_1,0,0x48);
      if ((*(int *)(iVar2 + 0x14) != 0) && (*(uint **)(iVar2 + 0x10) != *(uint **)(iVar2 + 4))) {
        FUN_005a7e90(*(uint **)(iVar2 + 0x10),param_1);
      }
      return param_1;
    }
  }
  memset(local_48,0,0x48);
  puVar3 = local_48;
  puVar4 = param_1;
  for (iVar2 = 0x12; iVar2 != 0; iVar2 = iVar2 + -1) {
    *puVar4 = *puVar3;
    puVar3 = puVar3 + 1;
    puVar4 = puVar4 + 1;
  }
  return param_1;
}

