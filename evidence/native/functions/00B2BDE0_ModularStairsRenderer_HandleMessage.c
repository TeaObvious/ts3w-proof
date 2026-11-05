/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 stair collision and renderer contract): ECX renderer; RET8 message ID and
   message pointer. Message 04A4D6B2 dispatches B2AC90 step-object composition; 062C4BA9 dispatches
   B2B610 grouped composition with flags. Full other message branches retained. Message location
   triples at +54/+60 have signed Int32 level at +8. Message flags are not assigned guessed semantic
   labels; this renderer path is distinct from B1C360/B19990 collision path. */

void __thiscall ModularStairsRenderer_HandleMessage(void *this,uint messageId,void *message)

{
  char cVar1;
  uint *puVar2;
  void *pvVar3;
  undefined4 uVar4;
  uint *puVar5;
  int iVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  LotXZLevel *pLVar9;
  LotXZLevel *pLVar10;
  byte flag6;
  float *pfVar11;
  float *pfVar12;
  uint uVar13;
  uint uVar14;
  byte bVar15;
  byte flag9;
  float fVar16;
  byte flag10;
  void *pvVar17;
  byte bVar18;
  undefined4 uVar19;
  uint local_180;
  undefined4 local_17c;
  undefined4 local_178;
  undefined4 local_174;
  undefined4 local_170 [12];
  undefined4 local_140;
  undefined4 local_13c;
  undefined4 local_138;
  undefined4 local_134;
  undefined4 local_130 [12];
  undefined1 local_100 [64];
  undefined1 local_c0 [64];
  undefined1 local_80 [64];
  undefined1 local_40 [64];
  
  if (messageId < 0x62c4bb8) {
    if (messageId == 0x62c4bb7) {
      local_180 = *(uint *)((int)message + 0x78);
      local_17c = *(undefined4 *)((int)message + 0x7c);
      local_178 = *(undefined4 *)((int)message + 0x80);
      local_174 = *(undefined4 *)((int)message + 0x84);
      local_13c = *(undefined4 *)((int)message + 0x14);
      uVar4 = *(undefined4 *)((int)message + 0x1c);
      puVar7 = (undefined4 *)((int)message + 0x88);
      puVar8 = local_170;
      for (iVar6 = 0xc; iVar6 != 0; iVar6 = iVar6 + -1) {
        *puVar8 = *puVar7;
        puVar7 = puVar7 + 1;
        puVar8 = puVar8 + 1;
      }
      local_140 = *(undefined4 *)((int)message + 0x10);
      local_138 = *(undefined4 *)((int)message + 0x18);
      cVar1 = *(char *)((int)message + 0xba);
      puVar7 = (undefined4 *)((int)message + 0x20);
      puVar8 = local_130;
      for (iVar6 = 0xc; iVar6 != 0; iVar6 = iVar6 + -1) {
        *puVar8 = *puVar7;
        puVar7 = puVar7 + 1;
        puVar8 = puVar8 + 1;
      }
      local_134 = uVar4;
      FUN_00b2b9f0(this,*(uint *)((int)message + 0xc),(int)&local_140,*(int *)((int)message + 0x50),
                   (float *)((int)message + 0x54),(float *)((int)message + 0x60),
                   *(char *)((int)message + 0x70),*(uint *)((int)message + 0x6c),&local_180,
                   *(char *)((int)message + 0xb8),*(char *)((int)message + 0xb9),cVar1,
                   *(char *)((int)message + 0xbb));
      return;
    }
    if (messageId < 0x4d92eda) {
      if (messageId == 0x4d92ed9) {
        FUN_00b29d70(this,(int)message);
        return;
      }
      if (messageId < 0x4c6f07e) {
        if (messageId == 0x4c6f07d) {
          pfVar11 = (float *)((int)message + 0x5c);
          uVar4 = FUN_00b22c00(*(void **)((int)this + 0x1c),pfVar11);
          if ((char)uVar4 != '\0') {
            uVar13 = *(uint *)((int)message + 0x70);
            fVar16 = *(float *)((int)message + 0x6c);
            uVar14 = *(uint *)((int)message + 0x68);
            uVar19 = 0;
            pvVar3 = (void *)0x0;
            uVar4 = *(undefined4 *)((int)message + 0x58);
            pfVar12 = (float *)((int)message + 0x74);
            puVar5 = (uint *)FUN_00b22bc0(local_80,(undefined4 *)((int)message + 0x18),
                                          (undefined4 *)((int)message + 0x28));
            FUN_00b2b390(this,*(uint *)((int)message + 0x10),puVar5,uVar4,pfVar11,pfVar12,uVar14,
                         fVar16,uVar13,pvVar3,uVar19);
            return;
          }
        }
        else {
          if (messageId == 0x4a4d6b2) {
            uVar13 = *(uint *)((int)message + 0x6c);
            bVar15 = *(byte *)((int)message + 0x70);
            bVar18 = 0;
            pvVar17 = (void *)0x0;
            iVar6 = *(int *)((int)message + 0x50);
            pLVar10 = (LotXZLevel *)((int)message + 0x60);
            pLVar9 = (LotXZLevel *)((int)message + 0x54);
            pvVar3 = (void *)FUN_00b22bc0(local_100,(undefined4 *)((int)message + 0x10),
                                          (undefined4 *)((int)message + 0x20));
            ModularStairsRenderer_BuildStepObjects
                      (this,*(uint *)((int)message + 0xc),pvVar3,iVar6,pLVar9,pLVar10,bVar15,uVar13,
                       pvVar17,bVar18);
            return;
          }
          if (messageId == 0x4a4d6ca) {
            FUN_00b25f30(this,*(uint *)((int)message + 0xc));
            return;
          }
        }
      }
      else if (messageId == 0x4c6f081) {
        FUN_00b25f30(this,*(uint *)((int)message + 0x10));
        return;
      }
    }
    else if (messageId == 0x5c955f5) {
      puVar5 = *(uint **)((int)message + 0x14);
      puVar2 = *(uint **)((int)message + 0x18);
      if (puVar5 != puVar2) {
        do {
          FUN_00b256a0(this,*puVar5,(uint)*(byte *)((int)message + 0x10));
          puVar5 = puVar5 + 1;
        } while (puVar5 != puVar2);
        return;
      }
    }
    else {
      if (messageId == 0x62c4ba9) {
        bVar15 = *(byte *)((int)message + 0xbb);
        bVar18 = *(byte *)((int)message + 0xba);
        flag10 = *(byte *)((int)message + 0xb9);
        flag9 = *(byte *)((int)message + 0xb8);
        pvVar3 = (void *)FUN_00b22bc0(local_c0,(undefined4 *)((int)message + 0x78),
                                      (undefined4 *)((int)message + 0x88));
        flag6 = *(byte *)((int)message + 0x70);
        uVar13 = *(uint *)((int)message + 0x6c);
        iVar6 = *(int *)((int)message + 0x50);
        pLVar10 = (LotXZLevel *)((int)message + 0x60);
        pLVar9 = (LotXZLevel *)((int)message + 0x54);
        pvVar17 = (void *)FUN_00b22bc0(local_40,(undefined4 *)((int)message + 0x10),
                                       (undefined4 *)((int)message + 0x20));
        ModularStairsRenderer_BuildGroupObjects
                  (this,*(uint *)((int)message + 0xc),pvVar17,iVar6,pLVar9,pLVar10,flag6,uVar13,
                   pvVar3,flag9,flag10,bVar18,bVar15);
        return;
      }
      if (messageId == 0x62c4bb2) {
        FUN_00b269d0((int)this);
        return;
      }
    }
  }
  else if (messageId < 0x86d8818) {
    if (messageId == 0x86d8817) {
      FUN_00b25310(this,*(undefined4 *)((int)message + 0xc),*(char *)((int)message + 0x11),
                   *(char *)((int)message + 0x12) == '\0',*(char *)((int)message + 0x10));
      return;
    }
    if (messageId == 0x62c507a) {
      FUN_00b26980((int)this);
      return;
    }
    if (messageId == 0x62c5080) {
      FUN_00b2a380(this,*(int *)((int)message + 0x50),(float *)((int)message + 0x54),
                   (float *)((int)message + 0x60),*(char *)((int)message + 0xba));
      return;
    }
    if (messageId == 0x6776e1e) {
      puVar5 = *(uint **)((int)message + 0x14);
      puVar2 = *(uint **)((int)message + 0x18);
      if (puVar5 != puVar2) {
        do {
          FUN_00b256a0(this,*puVar5,(uint)*(byte *)((int)message + 0x10));
          puVar5 = puVar5 + 1;
        } while (puVar5 != puVar2);
        return;
      }
    }
  }
  else if (messageId == 0x86d98cb) {
    puVar8 = *(undefined4 **)((int)message + 0x10);
    for (puVar7 = *(undefined4 **)((int)message + 0xc); puVar7 != puVar8; puVar7 = puVar7 + 2) {
      FUN_00b25310(this,*puVar7,'\x01',*(char *)((int)message + 0x1c) == '\0',*(char *)(puVar7 + 1))
      ;
    }
  }
  else if ((messageId == 0x8867d10) || (messageId == 0x8867d20)) {
    FUN_00b257d0(this,*(void **)((int)message + 0x40),(int *)((int)message + 0x10));
    return;
  }
  return;
}

