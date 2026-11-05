/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_RequestLerpToPositionAndTarget. Export
   ordinal(s): 296. Entry VA: 0x1052f9c0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A2C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
Camera_RequestLerpToPositionAndTarget
          (undefined4 param_1,float param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5
          ,undefined4 param_6,float param_7,char param_8)

{
  int iVar1;
  int *piVar2;
  void *this;
  void *this_00;
  void *this_01;
  float fStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
                    /* 0x52f9c0  296  Camera_RequestLerpToPositionAndTarget */
  local_20 = param_4;
  uStack_1c = param_5;
  uStack_18 = param_6;
  uStack_14 = param_4;
  fStack_2c = param_2;
  uStack_28 = param_3;
  uStack_24 = param_1;
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_1075c950(iVar1);
      if (piVar2 != (int *)0x0) {
        this = (void *)(**(code **)(*piVar2 + 0xc))(0x110fdd89);
        this_00 = (void *)(**(code **)(*piVar2 + 0xc))(0x4d394edb);
        this_01 = (void *)(**(code **)(*piVar2 + 0xc))(0x14bc619b);
        if (this != (void *)0x0) {
          FUN_10766c50(this,(float *)&stack0xffffffc4,&fStack_2c,param_7,param_8,'\x01','\0','\x01')
          ;
          return;
        }
        if (this_00 != (void *)0x0) {
          FUN_1076c6e0((int)this_00);
          FUN_1076c880(this_00,(float *)&stack0xffffffc4,&fStack_2c,param_7);
          return;
        }
        if (this_01 != (void *)0x0) {
          FUN_1075a070(this_01,(float *)&stack0xffffffc4,&fStack_2c,param_7);
        }
      }
    }
  }
  return;
}

