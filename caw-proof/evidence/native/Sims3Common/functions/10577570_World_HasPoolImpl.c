/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_HasPoolImpl. Export ordinal(s): 1411. Entry
   VA: 0x10577570. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CB8. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl World_HasPoolImpl(int param_1,int param_2,int param_3,int param_4,char param_5)

{
  char cVar1;
  uint in_EAX;
  int *piVar2;
  undefined4 uVar3;
  char local_10 [4];
  float local_c;
  float local_8;
  int local_4;
  
                    /* 0x577570  1411  World_HasPoolImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar2 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if (piVar2 != (int *)0x0) {
      local_c = (float)param_3;
      local_10[0] = -1;
      local_10[1] = 0xff;
      local_10[3] = 0xff;
      local_4 = (int)param_5;
      local_8 = (float)param_4;
      local_10[2] = 0;
      FUN_100be930(&local_c,local_10);
      cVar1 = FUN_10097490(piVar2,(undefined2 *)local_10,1,1);
      if (cVar1 == '\0') {
        uVar3 = FUN_10097420(piVar2,local_10,1,1,(undefined1 *)0x0);
        if ((char)uVar3 == '\0') {
          return 0;
        }
      }
      return 1;
    }
  }
  return in_EAX & 0xffffff00;
}

