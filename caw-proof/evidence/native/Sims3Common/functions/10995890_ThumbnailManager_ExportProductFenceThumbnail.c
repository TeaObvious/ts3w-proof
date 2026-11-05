/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_ExportProductFenceThumbnail.
   Export ordinal(s): 2509. Entry VA: 0x10995890. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000401. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 ThumbnailManager_ExportProductFenceThumbnail(void)

{
  void *this;
  char cVar1;
  int *piVar2;
  undefined4 *puVar3;
  int *piVar4;
  undefined4 uVar5;
  uint uVar6;
  uint uVar7;
  int unaff_EBX;
  uint uVar8;
  int unaff_ESI;
  int unaff_EDI;
  uint in_stack_00000014;
  short *in_stack_00000018;
  int *piVar9;
  void *this_00;
  int local_14c;
  int iStack_148;
  uint local_144;
  undefined4 local_140 [79];
  
                    /* 0x995890  2509  ThumbnailManager_ExportProductFenceThumbnail */
  this = DAT_10c70534;
  uVar8 = 0;
  local_144 = DAT_10c71150;
  uVar7 = DAT_10c71150;
  if ((DAT_10c71150 != 0) && (DAT_10c70534 != (void *)0x0)) {
    piVar2 = (int *)FUN_108e50d0();
    uVar7 = 0;
    if (piVar2 != (int *)0x0) {
      FUN_1055daa0(local_140,(undefined4 *)&stack0x00000004);
      this_00 = (void *)0x0;
      piVar9 = (int *)0x0;
      local_14c = 0;
      cVar1 = (**(code **)(*piVar2 + 0xc))(local_140,&local_14c,0,0,0);
      if ((cVar1 != '\0') && (piVar9 != (int *)0x0)) {
        piVar2 = (int *)(**(code **)(*piVar9 + 0xc))(0x418fe16);
        if (piVar2 != (int *)0x0) {
          FUN_102684d0(this,piVar2);
        }
      }
      uVar7 = 1;
      do {
        uVar6 = uVar7;
        if ((uVar6 & in_stack_00000014) != 0) {
          puVar3 = (undefined4 *)FUN_10918eb0(0x30,"ThumbnailNotifier",0);
          if (puVar3 == (undefined4 *)0x0) {
            piVar2 = (int *)0x0;
          }
          else {
            piVar2 = FUN_10994810(puVar3);
            if (piVar2 != (int *)0x0) {
              (**(code **)(*piVar2 + 4))();
            }
          }
          puVar3 = (undefined4 *)FUN_10918eb0(0x58,"ThumbnailResource",0);
          if (puVar3 == (undefined4 *)0x0) {
            piVar4 = (int *)0x0;
          }
          else {
            piVar4 = FUN_1033d370(puVar3);
            if (piVar4 != (int *)0x0) {
              (**(code **)*piVar4)();
            }
          }
          FUN_100ffa50(&iStack_148,unaff_EDI,unaff_ESI,unaff_EBX,local_14c,0,0,0,uVar8,0,0);
          uVar5 = FUN_10336580(this_00,&iStack_148,(int *)0x0,(LPCRITICAL_SECTION)0x0,piVar4,piVar2)
          ;
          if ((char)uVar5 == '\0') {
            uVar7 = FUN_100faa00(&iStack_148);
            if (piVar4 != (int *)0x0) {
              uVar7 = (**(code **)(*piVar4 + 4))();
            }
            if (piVar2 != (int *)0x0) {
              uVar7 = (**(code **)(*piVar2 + 8))();
            }
            if (piVar9 != (int *)0x0) {
              uVar7 = (**(code **)(*piVar9 + 4))();
            }
            break;
          }
          uVar5 = FUN_10994cf0((int)piVar2,piVar4,(undefined4 *)&stack0xfffffea8,uVar8,
                               in_stack_00000018);
          if ((char)uVar5 == '\0') {
            uVar7 = FUN_100faa00(&iStack_148);
            if (piVar4 != (int *)0x0) {
              uVar7 = (**(code **)(*piVar4 + 4))();
            }
            if (piVar2 != (int *)0x0) {
              uVar7 = (**(code **)(*piVar2 + 8))();
            }
            if (piVar9 != (int *)0x0) {
              uVar7 = (**(code **)(*piVar9 + 4))();
              return uVar7 & 0xffffff00;
            }
            break;
          }
          FUN_100faa00(&iStack_148);
          if (piVar4 != (int *)0x0) {
            (**(code **)(*piVar4 + 4))();
          }
          if (piVar2 != (int *)0x0) {
            (**(code **)(*piVar2 + 8))();
          }
        }
        uVar8 = uVar8 + 1;
        uVar7 = uVar6 * 2;
        if (3 < uVar8) {
          if (piVar9 != (int *)0x0) {
            uVar6 = (**(code **)(*piVar9 + 4))();
          }
          return CONCAT31((int3)(uVar6 >> 8),1);
        }
      } while( true );
    }
  }
  return uVar7 & 0xffffff00;
}

