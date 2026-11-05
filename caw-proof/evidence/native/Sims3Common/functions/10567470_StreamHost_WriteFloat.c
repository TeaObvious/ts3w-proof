/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_WriteFloat. Export ordinal(s): 2468.
   Entry VA: 0x10567470. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F2F. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl StreamHost_WriteFloat(uint param_1,uint param_2)

{
  uint uVar1;
  char cVar2;
  int *piVar3;
  
                    /* 0x567470  2468  StreamHost_WriteFloat */
  uVar1 = param_1;
  piVar3 = DAT_10c7b0a8;
  if (param_1 != DAT_10c7b0a4) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar3 = (int *)FUN_1055b120();
      piVar3 = (int *)(**(code **)(*piVar3 + 0xcc))(uVar1);
      if (piVar3 != (int *)0x0) {
        DAT_10c7b0a4 = uVar1;
        DAT_10c7b0a8 = piVar3;
      }
    }
    else {
      piVar3 = (int *)0x0;
    }
  }
  if (piVar3 != (int *)0x0) {
    param_1 = param_2;
    cVar2 = (**(code **)(*piVar3 + 0x38))(&param_1,4);
    return (-(uint)(cVar2 != '\0') & 3) - 3;
  }
  return -2;
}

