/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst note (PC1.67 fence resource/renderer and resolved virtual contract): ECX renderer; RET1C
   seven physical slots: model key pointer, product key pointer, six signed-byte WallLocator
   pointer, design/compositor words pointer, float height offset, byte flag6,byte flag7. Signed
   level from MOVSX locator+2; endpoints feed A67EC0 and per-level retained maps. On new model-key
   group allocate named AddRailSceneModel, attach asset/room/scene service and optional compositor
   fixup; reuse existing group otherwise. Derive rail transform from actual WallLocator, add
   supplied height offset, register instance and locator-key membership. Full virtual/resource
   lifetime paths remain. No detached post-to-graph nearest lookup or demand that posts exist at
   both endpoints. */

void __thiscall
FenceRenderer_AddRailSceneModel
          (void *this,void *modelKey,void *productKey,char *wallLocator6,void *designWords,
          float heightOffset,byte flag6,byte flag7)

{
  uint uVar1;
  ushort uVar2;
  int iVar3;
  float *pfVar4;
  void *pvVar5;
  int *piVar6;
  int *piVar7;
  undefined4 *puVar8;
  short *psVar9;
  int iVar10;
  void *this_00;
  ulonglong uVar11;
  undefined4 auStack_218 [13];
  undefined4 uStack_1e4;
  void *local_1a4;
  int *local_1a0;
  int *local_19c;
  undefined2 local_198;
  char cStack_196;
  undefined1 uStack_195;
  undefined1 uStack_194;
  char local_193;
  float local_190;
  float local_18c;
  uint local_17c [2];
  void *local_174;
  void *local_170;
  float local_16c;
  uint local_168;
  int local_164;
  float local_160;
  float fStack_15c;
  float local_150 [4];
  uint auStack_140 [2];
  undefined4 auStack_138 [22];
  int *piStack_e0;
  short local_d8 [4];
  char local_d0;
  undefined4 auStack_78 [24];
  int *piStack_18;
  
  local_19c = (int *)(int)wallLocator6[2];
  iVar10 = (int)local_19c - *(int *)((int)this + 0x28);
  local_170 = this;
  local_164 = iVar10;
  local_168 = FUN_00a67ec0(wallLocator6);
  cStack_196 = wallLocator6[5];
  local_198 = *(undefined2 *)(wallLocator6 + 3);
  local_193 = wallLocator6[2];
  uStack_195 = (undefined1)*(undefined2 *)wallLocator6;
  uStack_194 = (undefined1)((ushort)*(undefined2 *)wallLocator6 >> 8);
  local_1a4 = (void *)FUN_00a67ec0((char *)&local_198);
  iVar10 = (*(int *)((int)this + 0x54) - *(int *)((int)this + 0x58)) / 0x44 + iVar10;
  iVar3 = iVar10 + 0x1000000;
  iVar3 = ((int)(iVar3 + (iVar3 >> 0x1f & 3U)) >> 2) + -0x400000;
  pvVar5 = (void *)(*(int *)(iVar3 * 4 + *(int *)((int)this + 0x60)) + (iVar10 + iVar3 * -4) * 0x44)
  ;
  local_190 = *(float *)(*(int *)((int)pvVar5 + 0x24) + *(int *)((int)pvVar5 + 0x28) * 4);
  this_00 = (void *)((int)pvVar5 + 0x20);
  local_198 = SUB42(this_00,0);
  cStack_196 = (char)((uint)this_00 >> 0x10);
  uStack_195 = (undefined1)((uint)this_00 >> 0x18);
  local_174 = pvVar5;
  pfVar4 = (float *)FUN_00a69880(this_00,local_17c,(int *)&local_168);
  if (*pfVar4 == local_190) {
    local_190 = *(float *)(*(int *)((int)pvVar5 + 0x24) + *(int *)((int)pvVar5 + 0x28) * 4);
    pfVar4 = (float *)FUN_00a69880(this_00,local_17c,(int *)&local_1a4);
    if (*pfVar4 == local_190) {
      uVar2 = FUN_00a680c0(this,wallLocator6);
      local_17c[0] = (uint)uVar2;
      FUN_00a67c40(local_d8,uVar2,0,flag6,modelKey,productKey,designWords,flag7);
      pvVar5 = local_174;
      FUN_00a6a2e0(local_174,&local_190,local_d8);
      local_1a0 = (int *)0x0;
      if (local_190 == *(float *)(*(int *)((int)pvVar5 + 4) + *(int *)((int)pvVar5 + 8) * 4)) {
        local_1a4 = (void *)0x0;
        local_16c = 0.0;
        local_18c = ((float)(int)wallLocator6[1] + (float)(int)wallLocator6[4]) * 0.5;
        local_190 = ((float)(int)*wallLocator6 + (float)(int)wallLocator6[3]) * 0.5;
        FUN_00a68f00(*(void **)((int)this + 4),local_190,local_18c,(float *)&local_1a4,&local_16c);
        uVar11 = FUN_00afc840(local_1a4,local_16c,(byte)local_164,0);
        local_18c = (float)(uVar11 >> 0x20);
        uStack_1e4 = 0xa6b244;
        pvVar5 = (void *)FUN_004e4520(0x340,0x10,0,
                                      "LotRenderer/FenceRenderManager/AddRailSceneModel",0);
        if (pvVar5 == (void *)0x0) {
          piVar6 = (int *)0x0;
        }
        else {
          piVar6 = FUN_006f9730(pvVar5,(int)uVar11,local_18c);
        }
        FUN_008c8d00(&local_1a0,piVar6);
        piVar6 = local_1a0;
        FUN_006f46f0(local_1a0,modelKey,0,0,0);
        if ((*(int *)((int)this + 4) != 0) && (*(char *)(*(int *)((int)this + 4) + 0x3d6) != '\0'))
        {
          FUN_006dd400(piVar6 + 0x84,0x305a2d54);
        }
        local_1a4 = LoadPump_ReadFrameServiceGlobal();
        (**(code **)(*piVar6 + 0x34))();
        (**(code **)(*piVar6 + 0x4c))();
        (**(code **)(*piVar6 + 0x50))();
        FUN_006fb070(piVar6,(float)(int)*wallLocator6,(float)(int)wallLocator6[1]);
        if (local_1a4 != (void *)0x0) {
          pvVar5 = (void *)(*(code *)**(undefined4 **)(*(int *)((int)this + 4) + 8))();
          FUN_006e82e0(local_1a4,piVar6,pvVar5);
        }
        if ((*(int *)((int)designWords + 8) != 0) || (*(int *)((int)designWords + 0x18) != 0)) {
          local_19c = (int *)0x0;
          pvVar5 = (void *)FUN_004e4520(0x30,8,0,"Renderer/TexCompFixupLOD",0);
          if (pvVar5 == (void *)0x0) {
            piVar7 = (int *)0x0;
          }
          else {
            piVar7 = (int *)TexCompFixupLOD_Initialize
                                      (pvVar5,designWords,(undefined4 *)((int)designWords + 0x10));
          }
          FUN_008c8d00(&local_19c,piVar7);
          piVar7 = local_19c;
          (**(code **)(*piVar6 + 0x80))();
          ModelBinding_ApplyMaterialToAvailableLod(piVar6 + 0x84);
          if (piVar7 != (int *)0x0) {
            (**(code **)(*piVar7 + 4))();
          }
        }
        FUN_00a67e40(auStack_218 + 0x18,flag6,piVar6);
        psVar9 = local_d8;
        puVar8 = auStack_218;
        for (iVar3 = 0x18; iVar3 != 0; iVar3 = iVar3 + -1) {
          *puVar8 = *(undefined4 *)psVar9;
          psVar9 = psVar9 + 2;
          puVar8 = puVar8 + 1;
        }
        puVar8 = FUN_00a69130(auStack_78);
        FUN_00a686d0(auStack_140,puVar8);
        local_17c[0] = local_17c[0] & 0xffffff00;
        FUN_00a6a410(local_174,&local_190,(short *)auStack_140);
        if (piStack_e0 != (int *)0x0) {
          (**(code **)(*piStack_e0 + 4))();
        }
        if (piStack_18 != (int *)0x0) {
          (**(code **)(*piStack_18 + 4))();
        }
        if (flag7 != 0) {
          piVar6 = local_1a0 + 0x84;
          FUN_006dd400(piVar6,0x7bfef7db);
          FUN_006db630(piVar6,'\0');
        }
        this = local_170;
      }
      else {
        StatePointerSlots_AssignVirtualLifetime(&local_1a0,(int *)((int)local_190 + 0x60));
      }
      FUN_00a68160(this,wallLocator6,&local_160,local_150,local_d0 == '\0');
      uVar1 = local_168;
      fStack_15c = heightOffset + fStack_15c;
      FUN_006f9830(local_1a0,&local_160,local_150,local_168,0);
      auStack_140[0] = uVar1;
      psVar9 = local_d8;
      puVar8 = auStack_138;
      for (iVar3 = 0x18; iVar3 != 0; iVar3 = iVar3 + -1) {
        *puVar8 = *(undefined4 *)psVar9;
        psVar9 = psVar9 + 2;
        puVar8 = puVar8 + 1;
      }
      local_17c[0] = local_17c[0] & 0xffffff00;
      FUN_00a69d10((void *)CONCAT13(uStack_195,CONCAT12(cStack_196,local_198)),&local_190,
                   (int *)auStack_140);
      if (local_1a0 != (int *)0x0) {
        (**(code **)(*local_1a0 + 4))();
      }
    }
  }
  return;
}

