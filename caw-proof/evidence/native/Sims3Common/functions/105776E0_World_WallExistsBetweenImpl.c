/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: World_WallExistsBetweenImpl. Export ordinal(s):
   1621. Entry VA: 0x105776e0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CBA. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl
World_WallExistsBetweenImpl
          (int param_1,int param_2,int param_3,int param_4,char param_5,int param_6,int param_7,
          char param_8)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  float local_18;
  float local_14;
  int local_10;
  float local_c;
  float local_8;
  int local_4;
  
                    /* 0x5776e0  1621  World_WallExistsBetweenImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      in_EAX = piVar1[0xa6];
      if (*(void **)(in_EAX + 100) != (void *)0x0) {
        local_4 = (int)param_5;
        local_10 = (int)param_8;
        local_c = (float)param_3 + _DAT_10b310ec;
        local_8 = (float)param_4 + _DAT_10b310ec;
        local_18 = (float)param_6 + _DAT_10b310ec;
        local_14 = (float)param_7 + _DAT_10b310ec;
        uVar2 = FUN_10214e00(*(void **)(in_EAX + 100),&local_c,&local_18,(void *)0x0);
        return uVar2;
      }
    }
  }
  return in_EAX & 0xffffff00;
}

