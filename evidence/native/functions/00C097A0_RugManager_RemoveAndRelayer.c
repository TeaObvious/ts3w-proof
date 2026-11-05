/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Removes record; if not most recent, examines following records with matching
   category byte and affected compact-location bounds, recomputes layers and propagates affected
   region when layer changed.
   
   PC1.67 original static instructions. Removal closure: removes actual owner/list/map, recomputes
   following records with matching raw categorybyte+20 and affected compactbounds. Mostrecent
   ordinal has shorter removal path. Full native callback/footprint lifetime does not follow merely
   from a CLR layer solve. */

undefined4 __thiscall
RugManager_RemoveAndRelayer(void *this,uint param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  bool bVar2;
  uint uVar3;
  uint uVar4;
  undefined4 uVar5;
  int *piVar6;
  uint uVar7;
  void *this_00;
  uint local_14;
  void *local_10;
  int local_c;
  int local_8;
  int *local_4;
  
  uVar7 = 0;
  if (param_1 != 0 || param_2 != 0) {
    this_00 = (void *)((int)this + 0xc);
    local_10 = this_00;
    U64PairMap_Find(this_00,&local_8,(ulonglong *)&param_1);
    uVar7 = *(uint *)((int)this + 0x14);
    if (local_8 != *(int *)(*(int *)((int)this + 0x10) + uVar7 * 4)) {
      uVar7 = *(uint *)(local_8 + 8);
      if (uVar7 != 0) {
        if ((uint)*(ushort *)(uVar7 + 0x1c) == *(uint *)((int)this + 0x30)) {
          *(int *)((int)this + 0x2c) = *(int *)((int)this + 0x2c) + -1;
          piVar6 = *(int **)(uVar7 + 0xc);
          iVar1 = *(int *)(uVar7 + 8);
          *piVar6 = iVar1;
          *(int **)(iVar1 + 4) = piVar6;
          *(undefined4 *)(uVar7 + 8) = 0;
          *(undefined4 *)(uVar7 + 0xc) = 0;
          *(int *)((int)this + 0x30) = *(int *)((int)this + 0x30) + -1;
        }
        else {
          param_1 = *(uint *)(uVar7 + 0x18);
          if (this == (void *)0xfffffffc) {
            uVar3 = 0;
          }
          else {
            uVar3 = (int)this - 4;
          }
          local_14 = uVar7;
          if (uVar7 != uVar3) {
            FUN_00c08880(&local_14,&local_c);
          }
          *(int *)((int)this + 0x2c) = *(int *)((int)this + 0x2c) + -1;
          piVar6 = *(int **)(uVar7 + 0xc);
          iVar1 = *(int *)(uVar7 + 8);
          *piVar6 = iVar1;
          *(int **)(iVar1 + 4) = piVar6;
          *(undefined4 *)(uVar7 + 8) = 0;
          *(undefined4 *)(uVar7 + 0xc) = 0;
          *(short *)(uVar7 + 0x1c) = *(short *)((int)this + 0x30) + 1;
          uVar3 = local_14;
          while( true ) {
            if (this == (void *)0xfffffffc) {
              uVar4 = 0;
            }
            else {
              uVar4 = (int)this - 4;
            }
            this_00 = local_10;
            if (uVar3 == uVar4) break;
            if ((uVar3 != 0) && (*(char *)(uVar3 + 0x20) == *(char *)(uVar7 + 0x20))) {
              uVar5 = FUN_00c085e0(&param_1,(byte *)(uVar3 + 0x18));
              if (((char)uVar5 != '\0') &&
                 (bVar2 = RugManager_RecomputeOverlapLayer(this,uVar3,'\0',(char)param_3), bVar2)) {
                FUN_00c08540(&param_1,(byte *)&param_1,(byte *)(uVar3 + 0x18));
              }
            }
            if (*(int *)(uVar3 + 8) == 0) {
              uVar3 = 0;
            }
            else {
              uVar3 = *(int *)(uVar3 + 8) - 8;
            }
          }
        }
      }
      piVar6 = FUN_00c09130(this_00,(int *)&param_1,local_8,local_4);
      return CONCAT31((int3)((uint)piVar6 >> 8),1);
    }
  }
  return uVar7 & 0xffffff00;
}

