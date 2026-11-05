/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_HasSolidFloorImpl. Export ordinal(s): 1413.
   Entry VA: 0x10577450. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CB4. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl
World_HasSolidFloorImpl
          (int param_1,int param_2,undefined1 param_3,undefined1 param_4,undefined1 param_5)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  undefined1 local_4 [3];
  undefined1 local_1;
  
                    /* 0x577450  1413  World_HasSolidFloorImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      local_4._0_2_ = CONCAT11(param_4,param_3);
      _local_4 = CONCAT13(0xf,CONCAT12(param_5,local_4._0_2_));
      uVar2 = FUN_10096940(piVar1,(ushort *)local_4,1,'\x01',0,0,'\x01');
      return uVar2;
    }
  }
  return in_EAX & 0xffffff00;
}

