/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_WriteInt. Export ordinal(s): 2469.
   Entry VA: 0x10567340. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F2D. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl StreamHost_WriteInt(uint param_1,undefined4 param_2,int param_3)

{
  uint uVar1;
  int iVar2;
  char cVar3;
  int *piVar4;
  
                    /* 0x567340  2469  StreamHost_WriteInt */
  uVar1 = param_1;
  piVar4 = DAT_10c7b0a8;
  if (param_1 != DAT_10c7b0a4) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar4 = (int *)FUN_1055b120();
      piVar4 = (int *)(**(code **)(*piVar4 + 0xcc))(uVar1);
      if (piVar4 != (int *)0x0) {
        DAT_10c7b0a4 = uVar1;
        DAT_10c7b0a8 = piVar4;
      }
    }
    else {
      piVar4 = (int *)0x0;
    }
  }
  iVar2 = param_3;
  if (piVar4 != (int *)0x0) {
    if (param_3 < 5) {
      FUN_10567200(&param_1,param_2,param_3);
      cVar3 = (**(code **)(*piVar4 + 0x38))(&param_1,iVar2);
      return (-(uint)(cVar3 != '\0') & 3) - 3;
    }
    return -7;
  }
  return -2;
}

