/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_CopyStream. Export ordinal(s): 2446.
   Entry VA: 0x10567f30. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F46. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl StreamHost_CopyStream(uint param_1,uint param_2)

{
  char cVar1;
  int *piVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  
                    /* 0x567f30  2446  StreamHost_CopyStream */
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
    return 0xfffffffe;
  }
  piVar3 = DAT_10c7b0a8;
  if (param_2 != DAT_10c7b0a4) {
    piVar3 = (int *)FUN_10567270(param_2);
  }
  if (piVar3 == (int *)0x0) {
    return 0xfffffffe;
  }
  uVar4 = (**(code **)(*piVar3 + 0x1c))();
  if ((uVar4 != 0xffffffff) && (cVar1 = (**(code **)(*piVar3 + 0x28))(0,0), cVar1 != '\0')) {
    while( true ) {
      if (uVar4 == 0) {
        return 0;
      }
      uVar6 = 0x1000;
      if (uVar4 < 0x1001) {
        uVar6 = uVar4;
      }
      uVar5 = (**(code **)(*piVar3 + 0x30))(&stack0xffffeff8,uVar6);
      if ((uVar6 != uVar5) ||
         (cVar1 = (**(code **)(*piVar2 + 0x38))(&stack0xffffeff0,uVar6), cVar1 == '\0')) break;
      uVar4 = uVar4 - uVar6;
    }
  }
  return 0xfffffffd;
}

