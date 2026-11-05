/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156270 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderFreeImpl [assembly=ScriptCore token=0x060002F5; handle:
   System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CASUtils__CASUtils_SimBuilderFreeImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  void *this;
  int *piVar4;
  
  piVar1 = (int *)FUN_0044c4f0();
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((piVar2 != (int *)0x0) && ((param_1 & 0xff000000) == 0x35000000)) &&
     (iVar3 = (**(code **)(*piVar2 + 0xcc))(param_1), iVar3 != 0)) {
    this = (void *)FUN_004e4500(0x14,"CAS/CASHost/SimMsgCASFreeBuilder",0);
    if (this == (void *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = (int *)FUN_005a9640(this,iVar3);
    }
    (**(code **)(*piVar4 + 4))();
    (**(code **)(*piVar1 + 0x1c))(0x1fc9ad87,piVar4,0,piVar4 + 1);
    (**(code **)(*piVar4 + 8))();
    (**(code **)(*piVar2 + 0xd8))(param_1);
  }
  return;
}

