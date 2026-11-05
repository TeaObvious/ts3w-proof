/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_AddPackageToScene. Export
   ordinal(s): 2245. Entry VA: 0x1098f720. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600015C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 __cdecl SceneManWrap_AddPackageToScene(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  void *pvVar4;
  undefined4 *this;
  uint uVar5;
  undefined **ppuStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  int aiStack_78 [3];
  void *pvStack_6c;
  void *pvStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  char *pcStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  int aiStack_4c [18];
  
                    /* 0x98f720  2245  SceneManWrap_AddPackageToScene */
  piVar2 = (int *)FUN_105219c0();
  piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(param_2);
  if (piVar2 != (int *)0x0) {
    uStack_64 = 0;
    uStack_60 = 0;
    uStack_5c = 0;
    pcStack_58 = "Renderer/SceneMangerWrap";
    ppuStack_8c = &PTR_LAB_10ab5a24;
    uStack_88 = 0x1661233;
    (**(code **)(*piVar2 + 0x30))(&uStack_64,&ppuStack_8c);
    pvVar4 = pvStack_6c;
    if (pvStack_6c != pvStack_68) {
      uVar5 = DAT_10c8d998 | DAT_10c8d804;
      uVar3 = FUN_10722830();
      FUN_1072c690(aiStack_4c,uVar3);
      FUN_1072ccb0(aiStack_4c,0xa6e5f629,pvVar4);
      FUN_1072cb00(aiStack_4c,aiStack_78);
      pvVar4 = (void *)FUN_1072a1a0();
      uStack_5c = 0;
      pcStack_58 = (char *)0x0;
      uStack_54 = 0;
      uStack_50 = 0;
      this = FUN_1072b830(pvVar4,aiStack_78,uVar5,&uStack_5c,0,0);
      if (this == (undefined4 *)0x0) {
        pvVar4 = (void *)0x0;
      }
      else {
        LOCK();
        this[1] = this[1] + 1;
        UNLOCK();
        pvVar4 = (void *)FUN_10726da0(this,DAT_10c8d998);
      }
      ppuStack_8c = (undefined **)0x0;
      uStack_88 = 0;
      uStack_84 = 0;
      uStack_80 = 0;
      FUN_1074abb0(pvVar4,(float *)&ppuStack_8c);
      FUN_107282f0(0xb,this,0);
      uStack_88 = this[3];
      uVar3 = this[2];
      piVar2 = this + 1;
      LOCK();
      iVar1 = *piVar2;
      *piVar2 = *piVar2 + -1;
      UNLOCK();
      if (iVar1 == 1) {
        LOCK();
        *piVar2 = 1;
        UNLOCK();
        (**(code **)*this)(1);
      }
      FUN_100d0720(aiStack_4c);
      if (pvStack_6c != (void *)0x0) {
        FUN_10918e90((int)pvStack_6c);
      }
      return CONCAT44(uStack_88,uVar3);
    }
    if (pvStack_6c != (void *)0x0) {
      FUN_10918e90((int)pvStack_6c);
    }
  }
  return 0;
}

