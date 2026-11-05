/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GameObjectFactoryWrap_CreateArray. Export
   ordinal(s): 1811. Entry VA: 0x10980f90. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000682. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 __cdecl
GameObjectFactoryWrap_CreateArray
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,int param_4,uint param_5)

{
  int *piVar1;
  int iVar2;
  undefined8 uVar3;
  void *this;
  uint uVar4;
  undefined4 *puVar5;
  uint uVar6;
  uint uVar7;
  undefined4 local_1c [3];
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x980f90  1811  GameObjectFactoryWrap_CreateArray */
  this = (void *)FUN_1072a1a0();
  FUN_1072c240(local_1c,param_1,param_2,param_3);
  uVar7 = 0;
  uVar6 = 0;
  if (param_5 != 0) {
    do {
      uVar4 = FUN_1072a160(this,*(int *)(param_4 + uVar7 * 4));
      if (uVar4 != 0) {
        uVar6 = uVar6 | uVar4;
      }
      uVar7 = uVar7 + 1;
    } while (uVar7 < param_5);
  }
  if (this != (void *)0x0) {
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = 0;
    puVar5 = FUN_1072b830(this,local_1c,uVar6,&local_10,0,0);
    if (puVar5 != (undefined4 *)0x0) {
      piVar1 = puVar5 + 1;
      LOCK();
      *piVar1 = *piVar1 + 1;
      UNLOCK();
      uVar3 = *(undefined8 *)(puVar5 + 2);
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar5)(1);
      }
      return uVar3;
    }
  }
  return 0;
}

