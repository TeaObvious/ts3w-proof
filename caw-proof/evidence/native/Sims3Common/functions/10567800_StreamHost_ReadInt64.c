/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_ReadInt64. Export ordinal(s): 2459.
   Entry VA: 0x10567800. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F37. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl StreamHost_ReadInt64(uint param_1,undefined4 *param_2)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x567800  2459  StreamHost_ReadInt64 */
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
  if (piVar1 != (int *)0x0) {
    *param_2 = 0;
    param_2[1] = 0;
    iVar2 = (**(code **)(*piVar1 + 0x30))(param_2,8);
    if (iVar2 == 8) {
      return 0;
    }
    return (uint)(iVar2 != -1) * 2 + -3;
  }
  return -2;
}

