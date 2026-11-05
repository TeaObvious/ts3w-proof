/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_HasDiagonalWallImpl. Export ordinal(s):
   1406. Entry VA: 0x10577680. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CB9. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl
World_HasDiagonalWallImpl
          (int param_1,int param_2,undefined1 param_3,undefined1 param_4,undefined1 param_5)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  undefined1 local_4;
  undefined1 local_3;
  undefined1 local_2;
  undefined1 uStack_1;
  
                    /* 0x577680  1406  World_HasDiagonalWallImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if ((piVar1 != (int *)0x0) && (in_EAX = 0, (void *)piVar1[0xa6] != (void *)0x0)) {
      _local_4 = CONCAT12(param_5,CONCAT11(param_4,param_3));
      uVar2 = FUN_10112e70((void *)piVar1[0xa6],(undefined2 *)&local_4);
      return uVar2;
    }
  }
  return in_EAX & 0xffffff00;
}

