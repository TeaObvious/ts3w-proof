/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_IsDeckFoundationAtLotLocImpl. Export
   ordinal(s): 1416. Entry VA: 0x105780d0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000BC3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl
World_IsDeckFoundationAtLotLocImpl
          (int param_1,int param_2,float param_3,undefined4 param_4,undefined4 param_5)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  float local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x5780d0  1416  World_IsDeckFoundationAtLotLocImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      local_c = param_3;
      local_8 = param_4;
      local_4 = param_5;
      uVar2 = FUN_100c6000(piVar1,&local_c);
      return uVar2;
    }
  }
  return in_EAX & 0xffffff00;
}

