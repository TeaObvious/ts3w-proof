/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: KeyNameMap_Create. Export ordinal(s): 1872. Entry
   VA: 0x1098a0d0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060008D7. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl KeyNameMap_Create(int *param_1)

{
  int *piVar1;
  char cVar2;
  undefined4 *puVar3;
  int *piVar4;
  int *unaff_ESI;
  int local_10;
  int local_c;
  int local_8;
  int local_4;
  
                    /* 0x98a0d0  1872  KeyNameMap_Create */
  piVar1 = param_1;
  if (((*param_1 == 0) && (param_1[1] == 0)) && (param_1[2] == 0 && param_1[3] == 0)) {
    puVar3 = (undefined4 *)FUN_10918eb0(0x48,"KeyNameMap_Create",0);
    if (puVar3 != (undefined4 *)0x0) {
      puVar3 = FUN_10522410(puVar3);
      (**(code **)*puVar3)();
      return puVar3;
    }
    (*(code *)*_DAT_00000000)();
    return (undefined4 *)0x0;
  }
  piVar4 = (int *)FUN_108e50d0();
  local_8 = *piVar1;
  local_4 = piVar1[1];
  local_10 = piVar1[2];
  local_c = piVar1[3];
  cVar2 = (**(code **)(*piVar4 + 0xc))(&local_10,&param_1,0,0,0,0);
  if ((cVar2 != '\0') && (unaff_ESI != (int *)0x0)) {
    puVar3 = (undefined4 *)(**(code **)(*unaff_ESI + 0xc))(0x1660396);
    return puVar3;
  }
  return (undefined4 *)0x0;
}

