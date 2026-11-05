/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Decodes selected native path state from
   vtable+0x20:0/1/2→result1;3→2;4→3;5→4;6→10;7/8→16. For7/8 inspects40-byte obstacle
   records to populate blocker ID/type/world location, ignoring follower ID. Blocker
   tags14→type1;1/9→3;4/15→4;8→5;c/17→6;e/10→7. Unknown state→2. Original number
   literals are hexadecimal in annotations. */

void __thiscall RouteHost_DecodePathPlanFailure(void *this,undefined4 *param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  int *piVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  bool bVar7;
  float10 fVar8;
  int iStack_28;
  void *local_24;
  uint uStack_20;
  int iStack_1c;
  int iStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  float fStack_c;
  float fStack_8;
  float fStack_4;
  
  if (*(char *)((int)this + 0xf4) == '\0') {
    piVar3 = (int *)((int)this + 0xe0);
    if ((int *)*piVar3 == piVar3) {
      return;
    }
    piVar3 = *(int **)(*piVar3 + 8);
  }
  else {
    piVar3 = *(int **)((int)this + 0xec);
  }
  if (piVar3 != (int *)0x0) {
    LOCK();
    piVar3[1] = piVar3[1] + 1;
    UNLOCK();
    local_24 = this;
    uVar4 = (**(code **)(*piVar3 + 0x20))();
    puVar2 = param_1;
    switch(uVar4) {
    case 0:
    case 1:
    case 2:
      *param_1 = 1;
      break;
    case 3:
      *param_1 = 2;
      break;
    case 4:
      *param_1 = 3;
      break;
    case 5:
      *param_1 = 4;
      break;
    case 6:
      *param_1 = 10;
      break;
    case 7:
    case 8:
      *param_1 = 0x10;
      param_1[8] = 0;
      param_1[9] = 0;
      iVar5 = (**(code **)(*piVar3 + 0x160))();
      if (iVar5 != 0) {
        uStack_20 = (**(code **)(*piVar3 + 0x160))();
        uVar6 = 0;
        if (uStack_20 != 0) {
          do {
            iStack_28 = 0;
            iStack_1c = 0;
            iStack_18 = 0;
            uStack_14 = 0;
            uStack_10 = 0;
            param_1 = (undefined4 *)0x0;
            fStack_8 = 0.0;
            (**(code **)(*piVar3 + 0x164))
                      (uVar6,&iStack_28,&iStack_1c,&uStack_14,&fStack_c,&fStack_4,&param_1);
            bVar7 = -1 < (int)param_1;
            if ((iStack_1c != *(int *)((int)local_24 + 0x40)) ||
               (iStack_18 != *(int *)((int)local_24 + 0x44))) {
              if (iStack_28 == 0x14) {
                fVar8 = FUN_0074aae0(fStack_c,fStack_4,(int)param_1,'\x01',bVar7);
                puVar2[10] = 1;
LAB_00752af0:
                puVar2[8] = iStack_1c;
                puVar2[9] = iStack_18;
              }
              else {
                if ((iStack_28 == 1) || (iStack_28 == 9)) {
                  fVar8 = FUN_0074aae0(fStack_c,fStack_4,(int)param_1,'\x01',bVar7);
                  puVar2[10] = 3;
                  goto LAB_00752af0;
                }
                if ((iStack_28 == 4) || (iStack_28 == 0x15)) {
                  fVar8 = FUN_0074aae0(fStack_c,fStack_4,(int)param_1,'\x01',bVar7);
                  puVar2[10] = 4;
                }
                else {
                  if (iStack_28 == 8) {
                    fVar8 = FUN_0074aae0(fStack_c,fStack_4,(int)param_1,'\x01',bVar7);
                    fStack_8 = (float)fVar8;
                    puVar2[0xb] = fStack_c;
                    puVar2[0xc] = fStack_8;
                    puVar2[10] = 5;
                    puVar2[0xd] = fStack_4;
                    break;
                  }
                  if ((iStack_28 == 0xc) || (iStack_28 == 0x17)) {
                    fVar8 = FUN_0074aae0(fStack_c,fStack_4,(int)param_1,'\x01',bVar7);
                    fStack_8 = (float)fVar8;
                    puVar2[0xb] = fStack_c;
                    puVar2[0xc] = fStack_8;
                    puVar2[10] = 6;
                    puVar2[0xd] = fStack_4;
                    break;
                  }
                  if ((iStack_28 != 0xe) && (iStack_28 != 0x10)) goto LAB_007529a6;
                  fVar8 = FUN_0074aae0(fStack_c,fStack_4,(int)param_1,'\x01',bVar7);
                  puVar2[10] = 7;
                }
              }
              fStack_8 = (float)fVar8;
              puVar2[0xb] = fStack_c;
              puVar2[0xc] = fStack_8;
              puVar2[0xd] = fStack_4;
              break;
            }
LAB_007529a6:
            uVar6 = uVar6 + 1;
          } while (uVar6 < uStack_20);
        }
      }
      break;
    default:
      *param_1 = 2;
    }
    piVar1 = piVar3 + 1;
    LOCK();
    iVar5 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar5 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*piVar3)(1);
    }
  }
  return;
}

