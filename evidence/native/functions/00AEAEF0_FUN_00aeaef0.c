/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original analyst note.
   ECX terrain plus x,z,height stackwords, RET0C. Writes water+C8 x-major float first. COMISS/JBE against actual floor rejects below/equal/unordered before ORing existingCC pond bit; never clears that bit. Lot+2D0 nonzero continues object enumerationAC85D0 and B01090/B010C0/934260/C894E0/B08710/C89940/B09B00 reseating chain. Current managed SetWater shares initial write/strict bit admission, not full per-vertex object callback/lifetime ordering. Native has no arbitrary managed floor delegate/array bounds exception semantics. */
void __thiscall FUN_00aeaef0(void *this,uint param_1,int param_2,float param_3)

{
  float *pfVar1;
  byte *pbVar2;
  int iVar3;
  void *this_00;
  undefined4 uVar4;
  void *this_01;
  int iVar5;
  uint uVar6;
  float10 fVar7;
  float fVar8;
  char cVar9;
  float local_2c;
  float local_28 [2];
  void *local_20;
  int local_1c;
  undefined4 local_18;
  char *local_14;
  int local_10;
  int local_c;
  int local_8;
  int local_4;
  
  *(float *)(*(int *)(*(int *)((int)this + 200) + 0xc) +
            (*(int *)(*(int *)((int)this + 200) + 8) * param_1 + param_2) * 4) = param_3;
  iVar5 = *(int *)((int)this + 8);
  iVar3 = *(int *)(iVar5 + 0x24);
  pfVar1 = (float *)(*(int *)(iVar3 + 0x10) +
                    (((*(int *)(iVar5 + 0x18) - *(int *)(iVar5 + 0x10)) * *(int *)(iVar3 + 4) +
                     param_1) * *(int *)(iVar3 + 8) + param_2) * 4);
  if (*pfVar1 <= param_3 && param_3 != *pfVar1) {
    iVar5 = *(int *)(*(int *)((int)this + 0xcc) + 8) * param_1 + param_2;
    pbVar2 = (byte *)((iVar5 >> 3) + *(int *)(*(int *)((int)this + 0xcc) + 0xc));
    *pbVar2 = *pbVar2 | '\x01' << ((byte)iVar5 & 7);
  }
  if (*(int *)((int)*(void **)((int)this + 4) + 0x2d0) != 0) {
    local_10 = param_1 - 1;
    local_8 = param_1 + 1;
    local_c = param_2 + -1;
    local_4 = param_2 + 1;
    local_20 = (void *)0x0;
    local_1c = 0;
    local_18 = 0;
    local_14 = "Lot/LotTerrain/SetWaterElevation/objects";
    FUN_00ac85d0(*(void **)((int)this + 4),&local_10,0,&local_20,'\0','\0','\0',5,'\x01');
    uVar6 = local_1c - (int)local_20 >> 2;
    param_1 = 0;
    if (uVar6 != 0) {
      do {
        this_00 = *(void **)((int)local_20 + param_1 * 4);
        if (this_00 != (void *)0x0) {
          uVar4 = FUN_00b01090((int)this_00);
          if ((char)uVar4 == '\0') {
            uVar4 = FUN_00b010c0((int)this_00);
            if ((char)uVar4 == '\0') goto LAB_00aeb07c;
          }
          this_01 = Object_GetComponentByMask(this_00,DAT_011edf08);
          local_2c = -1.0;
          local_28[0] = -1.0;
          local_28[1] = 0.0;
          ObjectLocation_CopyXZLevel(this_01,&local_2c,local_28,local_28 + 1);
          fVar7 = FUN_00b08710(*(int **)((int)this + 4),&local_2c);
          cVar9 = '\0';
          fVar8 = PlacementLocation_ReadYawWithRefresh(this_01);
          FUN_00b09b00(this_00,*(void **)((int)this + 4),(undefined1 (*) [12])&local_2c,(float)fVar7
                       ,fVar8,cVar9);
        }
LAB_00aeb07c:
        param_1 = param_1 + 1;
      } while (param_1 < uVar6);
    }
    if (local_20 != (void *)0x0) {
      Memory_FreeIfNonNull(local_20);
    }
  }
  return;
}

