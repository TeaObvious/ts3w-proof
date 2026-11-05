/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_ToArray. Export ordinal(s): 2462.
   Entry VA: 0x10568050. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F47. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl StreamHost_ToArray(uint param_1)

{
  char cVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int unaff_ESI;
  undefined4 uStack_18;
  undefined4 uStack_4;
  
                    /* 0x568050  2462  StreamHost_ToArray */
  piVar2 = DAT_10c7b0a8;
  if (param_1 != DAT_10c7b0a4) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar2 = (int *)FUN_1055b120();
      piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))();
      if (piVar2 != (int *)0x0) {
        DAT_10c7b0a4 = param_1;
        DAT_10c7b0a8 = piVar2;
      }
    }
    else {
      piVar2 = (int *)0x0;
    }
  }
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  uStack_18 = 0x105680af;
  piVar3 = (int *)FUN_1055b120();
  uStack_18 = 0x105680ba;
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

