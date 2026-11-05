/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_WriteDouble. Export ordinal(s): 2467.
   Entry VA: 0x105674f0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F30. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl StreamHost_WriteDouble(uint param_1,undefined8 param_2)

{
  char cVar1;
  int *piVar2;
  undefined8 local_8;
  
                    /* 0x5674f0  2467  StreamHost_WriteDouble */
  piVar2 = DAT_10c7b0a8;
  if (param_1 != DAT_10c7b0a4) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar2 = (int *)FUN_1055b120();
      piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(param_1);
      if (piVar2 != (int *)0x0) {
        DAT_10c7b0a4 = param_1;
        DAT_10c7b0a8 = piVar2;
      }
    }
    else {
      piVar2 = (int *)0x0;
    }
  }
  if (piVar2 != (int *)0x0) {
    local_8 = param_2;
    cVar1 = (**(code **)(*piVar2 + 0x38))(&local_8,8);
    return (-(uint)(cVar1 != '\0') & 3) - 3;
  }
  return -2;
}

