/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: PC 1.67 map/lot detail contract. Requires lot+364 and object component mask011edf08.
   Computes special-object selection, signed level bounds with INT_MAX sentinel, component+2c bit5
   adjustments and lot+39c cap, then submits via00abdf10 or direct00aafdc0 path when lot+368. Normal
   queued promotion flags are0,0 and can preserve special objects. This per-object policy is not
   uniform whole-world full-detail loading. */

void __thiscall
Lot_ApplyObjectDisplayDetail(void *this,void *object,uchar includeSpecial,uchar specialOnly)

{
  undefined4 *puVar1;
  bool bVar2;
  undefined4 uVar3;
  void *pvVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  char local_c;
  void *local_8;
  undefined4 local_4;
  
  if (*(int *)((int)this + 0x364) != 0) {
    local_8 = this;
    if (((*(int *)((int)this + 0x408) == 1) && (*(int *)((int)this + 0x40c) == 0x50)) ||
       (uVar3 = FUN_00b07080((int)object), (char)uVar3 == '\0')) {
      local_c = '\0';
    }
    else {
      local_c = '\x01';
    }
    if ((object != (void *)0x0) &&
       (pvVar4 = Object_GetComponentByMask(object,DAT_011edf08), pvVar4 != (void *)0x0)) {
      uVar6 = *(uint *)((int)pvVar4 + 0x18);
      if (uVar6 == 0x7fffffff) {
        uVar6 = 0;
      }
      else if ((int)uVar6 < 0) {
        local_c = '\0';
      }
      if ((specialOnly == '\0') || (local_c != '\0')) {
        if (includeSpecial == '\0') {
          if (local_c != '\0') {
            return;
          }
        }
        else if ((local_c != '\0') && (bVar2 = FUN_00b00590((int)object), bVar2)) {
          local_c = '\0';
        }
        uVar7 = *(uint *)((int)pvVar4 + 0x1c);
        if (uVar7 == 0x7fffffff) {
          uVar7 = -(uint)(*(uint *)((int)pvVar4 + 0x18) != 0x7fffffff) &
                  *(uint *)((int)pvVar4 + 0x18);
        }
        if ((*(uint *)((int)pvVar4 + 0x2c) >> 5 & 1) != 0) {
          uVar6 = uVar6 + 1;
          uVar7 = uVar7 + 1;
        }
        uVar5 = FUN_00b00ac0((int)object);
        pvVar4 = local_8;
        if ((local_c == '\0') && (((char)uVar5 == '\0' || ((int)uVar6 < 0)))) {
          uVar5 = *(uint *)((int)local_8 + 0x39c);
          if ((int)uVar5 < (int)uVar7) {
            if ((int)uVar5 < (int)uVar6) {
              uVar7 = uVar6;
            }
            else {
              uVar7 = uVar5;
            }
          }
        }
        else {
          uVar7 = 0;
        }
        if (*(char *)((int)local_8 + 0x368) != '\0') {
          local_4 = *(undefined4 *)((int)object + 0xc);
          puVar1 = (undefined4 *)((int)local_8 + 0x2dc);
          local_8 = *(void **)((int)object + 8);
          ErasePairValueMapKeyRun((void *)*puVar1,(uint *)&local_8);
          FUN_00aafdc0(*(void **)((int)pvVar4 + 0x364),object,local_c,uVar7);
          return;
        }
        FUN_00abdf10(*(void **)((int)local_8 + 0x2dc),*(undefined4 *)((int)object + 8),
                     *(undefined4 *)((int)object + 0xc),local_c,uVar7);
      }
    }
  }
  return;
}

