/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetObjectsImpl. Export ordinal(s): 1364.
   Entry VA: 0x105813d0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C12. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl
World_GetObjectsImpl
          (int param_1,int param_2,undefined1 param_3,undefined1 param_4,undefined1 param_5)

{
  int iVar1;
  int *piVar2;
  int *this;
  undefined4 unaff_EBX;
  int iVar3;
  int iVar4;
  undefined4 local_20;
  undefined4 local_1c;
  int iStack_18;
  int local_10;
  int local_c;
  undefined4 local_8;
  char *local_4;
  
                    /* 0x5813d0  1364  World_GetObjectsImpl */
  piVar2 = (int *)FUN_1055b120();
  if ((DAT_10c700c4 != (void *)0x0) &&
     (this = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0), this != (int *)0x0)) {
    local_20._0_3_ = CONCAT12(param_5,CONCAT11(param_4,param_3));
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = "World/UserMayPlaceFloorPattern";
    FUN_1008d4f0(this,(char *)&local_20,&local_10,'\0','\0','\x01',&DAT_0000000f,0,5);
    iVar3 = local_c - local_10 >> 2;
    (**(code **)(*piVar2 + 0x88))(&local_1c,iVar3);
    iVar4 = 0;
    if (0 < iVar3) {
      do {
        iVar1 = *(int *)(iStack_18 + iVar4 * 4);
        if (iVar1 == 0) {
          local_20 = 0;
          local_1c = 0;
        }
        else {
          local_20 = *(undefined4 *)(iVar1 + 8);
          local_1c = *(undefined4 *)(iVar1 + 0xc);
        }
        (**(code **)(*piVar2 + 0xa0))(&stack0xffffffdc,&local_20,iVar4,1);
        iVar4 = iVar4 + 1;
      } while (iVar4 < iVar3);
    }
    if (iStack_18 != 0) {
      FUN_10918e90(iStack_18);
    }
    return unaff_EBX;
  }
  return 0;
}

