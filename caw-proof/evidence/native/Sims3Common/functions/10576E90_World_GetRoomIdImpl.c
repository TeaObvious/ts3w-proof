/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetRoomIdImpl. Export ordinal(s): 1377.
   Entry VA: 0x10576e90. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C10. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl
World_GetRoomIdImpl(int param_1,int param_2,int param_3,int param_4,char param_5,int param_6)

{
  undefined4 in_EAX;
  undefined2 uVar3;
  int *piVar1;
  undefined4 uVar2;
  float local_c;
  float local_8;
  int local_4;
  
                    /* 0x576e90  1377  World_GetRoomIdImpl */
  uVar3 = (undefined2)((uint)in_EAX >> 0x10);
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    uVar3 = 0;
    if ((piVar1 != (int *)0x0) && (uVar3 = 0, (void *)piVar1[0xa6] != (void *)0x0)) {
      local_4 = (int)param_5;
      local_c = (float)param_3;
      local_8 = (float)param_4;
      uVar2 = FUN_101117d0((void *)piVar1[0xa6],&local_c,param_6,1);
      return uVar2;
    }
  }
  return CONCAT22(uVar3,0xffff);
}

