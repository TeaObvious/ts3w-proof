/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_ReadDecimal. Export ordinal(s): 2455.
   Entry VA: 0x105679c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F3A. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl StreamHost_ReadDecimal(uint param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *unaff_retaddr;
  undefined4 *puVar3;
  undefined4 local_10;
  undefined4 uStack_c;
  
                    /* 0x5679c0  2455  StreamHost_ReadDecimal */
  piVar1 = DAT_10c7b0a8;
  if (param_1 != DAT_10c7b0a4) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar1 = (int *)FUN_1055b120();
      piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
      if (piVar1 != (int *)0x0) {
        DAT_10c7b0a4 = param_1;
        DAT_10c7b0a8 = piVar1;
      }
    }
    else {
      piVar1 = (int *)0x0;
    }
  }
  puVar3 = &local_10;
  if (piVar1 != (int *)0x0) {
    iVar2 = (**(code **)(*piVar1 + 0x30))();
    if (iVar2 == 0x10) {
      unaff_retaddr[2] = puVar3;
      unaff_retaddr[3] = 0x10;
      unaff_retaddr[1] = local_10;
      *unaff_retaddr = uStack_c;
      return 0;
    }
    return (uint)(iVar2 != -1) * 2 + -3;
  }
  return -2;
}

