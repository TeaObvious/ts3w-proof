/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_ReadFloat. Export ordinal(s): 2457.
   Entry VA: 0x10567890. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F38. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl StreamHost_ReadFloat(uint param_1)

{
  uint uVar1;
  int *piVar2;
  int iVar3;
  undefined4 *unaff_retaddr;
  
                    /* 0x567890  2457  StreamHost_ReadFloat */
  uVar1 = param_1;
  piVar2 = DAT_10c7b0a8;
  if (param_1 != DAT_10c7b0a4) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar2 = (int *)FUN_1055b120();
      piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(uVar1);
      if (piVar2 != (int *)0x0) {
        DAT_10c7b0a4 = uVar1;
        DAT_10c7b0a8 = piVar2;
      }
    }
    else {
      piVar2 = (int *)0x0;
    }
  }
  if (piVar2 != (int *)0x0) {
    param_1 = 0;
    iVar3 = (**(code **)(*piVar2 + 0x30))(&param_1);
    if (iVar3 == 4) {
      *unaff_retaddr = 4;
      return 0;
    }
    return (uint)(iVar3 != -1) * 2 + -3;
  }
  return -2;
}

