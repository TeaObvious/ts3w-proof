/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_ExportModelThumbnail. Export
   ordinal(s): 2506. Entry VA: 0x10995330. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060003F5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ThumbnailManager_ExportModelThumbnail(int param_1,int param_2,uint param_3)

{
  uint uVar1;
  int *piVar2;
  undefined4 *puVar3;
  int *piVar4;
  uint uVar5;
  short *in_stack_00000020;
  uint local_14;
  undefined4 local_10 [4];
  
                    /* 0x995330  2506  ThumbnailManager_ExportModelThumbnail */
  uVar1 = FUN_1055daa0(local_10,(undefined4 *)&stack0x00000010);
  uVar5 = 0;
  local_14 = 1;
  do {
    if ((local_14 & param_3) != 0) {
      piVar2 = (int *)FUN_10918eb0(0x30,"ThumbnailManager_CreateNotifier",0);
      if (piVar2 == (int *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        FUN_10325520(piVar2);
        piVar2[8] = (int)&PTR_LAB_10aaf8cc;
        piVar2[9] = (int)&PTR_FUN_10aae9d8;
        *piVar2 = (int)&PTR_FUN_10b97834;
        piVar2[8] = (int)&PTR_LAB_10b97824;
        piVar2[9] = (int)&PTR_LAB_10b97818;
        *(undefined1 *)(piVar2 + 10) = 0;
        *(undefined1 *)((int)piVar2 + 0x29) = 0;
        (**(code **)(*piVar2 + 4))();
      }
      puVar3 = (undefined4 *)FUN_10918eb0(0x58,"ThumbnailManager_CreateNotifier",0);
      if (puVar3 == (undefined4 *)0x0) {
        piVar4 = (int *)0x0;
      }
      else {
        piVar4 = FUN_1033d370(puVar3);
        if (piVar4 != (int *)0x0) {
          (**(code **)*piVar4)();
        }
      }
      uVar1 = ThumbnailManager_GetModelThumbnail(param_1,param_2,piVar4,piVar2,uVar5);
      if ((char)uVar1 == '\0') {
LAB_1099546d:
        if (piVar4 != (int *)0x0) {
          uVar1 = (**(code **)(*piVar4 + 4))();
        }
        if (piVar2 != (int *)0x0) {
          uVar1 = (**(code **)(*piVar2 + 8))();
        }
        return uVar1 & 0xffffff00;
      }
      uVar1 = FUN_10994cf0((int)piVar2,piVar4,local_10,uVar5,in_stack_00000020);
      if ((char)uVar1 == '\0') goto LAB_1099546d;
      if (piVar4 != (int *)0x0) {
        uVar1 = (**(code **)(*piVar4 + 4))();
      }
      if (piVar2 != (int *)0x0) {
        uVar1 = (**(code **)(*piVar2 + 8))();
      }
    }
    uVar5 = uVar5 + 1;
    local_14 = local_14 * 2;
    if (3 < uVar5) {
      return CONCAT31((int3)(uVar1 >> 8),1);
    }
  } while( true );
}

