/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162968 (original PC 1.67 TS3W.exe).
   ScriptCore.StreamHost::StreamHost_ToArray [assembly=ScriptCore token=0x0600103F; handle:
   System.UInt32; return=System.Byte[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.StreamHost::StreamHost_ToArray(uint param_1)

{
  char cVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int unaff_ESI;
  undefined4 uStack_18;
  undefined4 uStack_4;
  
  piVar2 = DAT_011d783c;
  if (param_1 != DAT_011d7838) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
      piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))();
      if (piVar2 != (int *)0x0) {
        DAT_011d7838 = param_1;
        DAT_011d783c = piVar2;
      }
    }
    else {
      piVar2 = (int *)0x0;
    }
  }
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  uStack_18 = 0x775cbf;
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uStack_18 = 0x775cca;
  iVar4 = (**(code **)(*piVar2 + 0x1c))();
  if (-1 < iVar4) {
    uStack_18 = 0;
    cVar1 = (**(code **)(*piVar2 + 0x28))(0);
    if (cVar1 != '\0') {
      uStack_4 = 0;
      (**(code **)(*piVar3 + 0x80))();
      if (unaff_ESI != 0) {
        (**(code **)(*piVar3 + 0x70))(unaff_ESI,&uStack_18,&stack0xffffffec);
        if ((&uStack_4 != (undefined4 *)0x0) &&
           (iVar5 = (**(code **)(*piVar2 + 0x30))(&uStack_4,iVar4), iVar4 == iVar5)) {
          return uStack_18;
        }
        (**(code **)(*piVar3 + 0x94))(uStack_18);
      }
    }
  }
  return 0;
}

