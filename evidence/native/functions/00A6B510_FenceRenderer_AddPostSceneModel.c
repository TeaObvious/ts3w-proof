/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 fence resource/renderer and resolved virtual contract): ECX renderer; RET1C
   seven physical slots analogous to rail consumer, but third pointer is LotXZLevel:
   floatX,floatZ,signedInt32level. MOV EBX,[EDI+8] and integer subtract establish level, not old
   float-looking alias. Coordinates use x87 FISTP under ambient rounding, low DWORDs form
   100*roundedX+roundedZ retained key; per-level maps are separate. On new group allocate named
   AddPostSceneModel, attach asset/room/scene service/compositor state; reuse otherwise. Derive
   transform from LotLocation, add supplied height offset and register post instance. Actual C
   register/stack artifacts remain; no current four-unit floor-quantized epsilon fallback is
   established here. */

void __thiscall
FenceRenderer_AddPostSceneModel
          (void *this,void *modelKey,void *productKey,LotXZLevel *location,void *designWords,
          float heightOffset,byte flag6,byte flag7)

{
  code *pcVar1;
  ushort uVar2;
  int iVar3;
  int *piVar4;
  void *pvVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  int *piVar8;
  undefined4 uVar9;
  int iVar10;
  short *psVar11;
  int *piVar12;
  undefined *this_00;
  int local_144;
  undefined8 local_140;
  int *local_138;
  undefined4 uStack_134;
  void *local_128;
  float local_124 [2];
  float local_11c;
  void *local_118;
  void *local_114;
  void *local_110;
  undefined4 uStack_10c;
  float local_100;
  float fStack_fc;
  float local_f0;
  short asStack_ec [10];
  int aiStack_d8 [2];
  undefined4 auStack_d0 [17];
  int *piStack_8c;
  byte bStack_88;
  undefined4 auStack_84 [5];
  short local_70 [4];
  char local_68;
  
  local_128 = (void *)location->level;
  iVar10 = (int)local_128 - *(int *)((int)this + 0x28);
  local_140 = CONCAT44(local_140._4_4_,iVar10);
  local_110 = (void *)(longlong)ROUND(location->x);
  local_138 = (int *)(longlong)ROUND(location->z);
  local_144 = (int)local_110 * 100 + (int)local_138;
  iVar10 = (*(int *)((int)this + 0x54) - *(int *)((int)this + 0x58)) / 0x44 + iVar10;
  iVar3 = iVar10 + 0x1000000;
  iVar3 = ((int)(iVar3 + (iVar3 >> 0x1f & 3U)) >> 2) + -0x400000;
  pvVar5 = (void *)(*(int *)(iVar3 * 4 + *(int *)((int)this + 0x60)) + (iVar10 + iVar3 * -4) * 0x44)
  ;
  local_138 = *(int **)(*(int *)((int)pvVar5 + 0x24) + *(int *)((int)pvVar5 + 0x28) * 4);
  uStack_134 = (undefined4)((ulonglong)(longlong)ROUND(location->z) >> 0x20);
  _local_110 = CONCAT44((int)((ulonglong)(longlong)ROUND(location->x) >> 0x20),
                        (void *)((int)pvVar5 + 0x20));
  local_118 = this;
  local_114 = pvVar5;
  piVar4 = (int *)FUN_00a69880((void *)((int)pvVar5 + 0x20),local_124,&local_144);
  if ((int *)*piVar4 == local_138) {
    uVar2 = LotRoom_ResolveForLocalLocation(*(void **)((int)this + 8),&location->x,0,1);
    local_138 = (int *)(uint)uVar2;
    FUN_00a67c40(local_70,uVar2,1,flag6,modelKey,productKey,designWords,flag7);
    FUN_00a6a2e0(pvVar5,local_124,local_70);
    piVar4 = (int *)0x0;
    if (local_124[0] == *(float *)(*(int *)((int)local_114 + 4) + *(int *)((int)local_114 + 8) * 4))
    {
      local_124[0] = 0.0;
      local_11c = 0.0;
      FUN_00a68f00(*(void **)((int)this + 4),location->x,location->z,local_124,&local_11c);
      local_140 = FUN_00afc840(local_124[0],local_11c,(byte)local_140,1);
      pvVar5 = (void *)FUN_004e4520(0x340,0x10,0,"LotRenderer/FenceRenderManager/AddPostSceneModel",
                                    0);
      if (pvVar5 != (void *)0x0) {
        puVar6 = FUN_006f9730(pvVar5,(int *)local_140,local_140._4_4_);
        local_140 = CONCAT44(local_140._4_4_,puVar6);
        if (puVar6 != (undefined4 *)0x0) {
          (**(code **)*puVar6)();
          piVar4 = (int *)local_140;
        }
      }
      FUN_006f46f0(piVar4,modelKey,0,0,0);
      if ((*(int *)((int)this + 4) != 0) && (*(char *)(*(int *)((int)this + 4) + 0x3d6) != '\0')) {
        FUN_006dd400(piVar4 + 0x84,0x305a2d54);
      }
      pvVar5 = LoadPump_ReadFrameServiceGlobal();
      this_00 = &DAT_00800080;
      local_140 = CONCAT44(local_140._4_4_,pvVar5);
      (**(code **)(*piVar4 + 0x34))(0x7ffff080);
      if ((short)local_140 < 1) {
        uVar7 = 0;
        uVar9 = 0;
      }
      else {
        uVar7 = *(undefined4 *)(*(int *)((int)this + 4) + 0x10);
        uVar9 = *(undefined4 *)(*(int *)((int)this + 4) + 0x14);
      }
      (**(code **)(*piVar4 + 0x4c))(uVar7,uVar9);
      (**(code **)(*piVar4 + 0x50))(local_138);
      FUN_006fb070(piVar4,location->x,location->z);
      if (this_00 != (undefined *)0x0) {
        pvVar5 = (void *)(*(code *)**(undefined4 **)(*(int *)((int)this + 4) + 8))(local_140._4_4_);
        FUN_006e82e0(this_00,piVar4,pvVar5);
      }
      if ((*(int *)((int)designWords + 8) != 0) || (*(int *)((int)designWords + 0x18) != 0)) {
        pvVar5 = (void *)FUN_004e4520(0x30,8,0,"Renderer/TexCompFixupLOD",0);
        piVar12 = (int *)0x0;
        if (pvVar5 != (void *)0x0) {
          piVar8 = (int *)TexCompFixupLOD_Initialize
                                    (pvVar5,designWords,(undefined4 *)((int)designWords + 0x10));
          if (piVar8 != (int *)0x0) {
            (**(code **)*piVar8)();
            piVar12 = piVar8;
          }
        }
        (**(code **)(*piVar4 + 0x80))(piVar12,&DAT_00ffaf14);
        ModelBinding_ApplyMaterialToAvailableLod(piVar4 + 0x84);
        if (piVar12 != (int *)0x0) {
          (**(code **)(*piVar12 + 4))();
        }
      }
      (**(code **)*piVar4)();
      (**(code **)*piVar4)();
      pcVar1 = *(code **)*piVar4;
      puVar6 = auStack_84;
      psVar11 = asStack_ec;
      for (iVar3 = 0x18; iVar3 != 0; iVar3 = iVar3 + -1) {
        *(undefined4 *)psVar11 = *puVar6;
        puVar6 = puVar6 + 1;
        psVar11 = psVar11 + 2;
      }
      piStack_8c = piVar4;
      (*pcVar1)();
      bStack_88 = flag6;
      FUN_00a6a410(local_128,local_124 + -10,asStack_ec);
      if (piStack_8c != (int *)0x0) {
        (**(code **)(*piStack_8c + 4))();
      }
      (**(code **)(*piVar4 + 4))();
      (**(code **)(*piVar4 + 4))();
      if (flag7 != 0) {
        FUN_006dd400(piVar4 + 0x84,0x7bfef7db);
        FUN_006db630(piVar4 + 0x84,'\0');
      }
      this = local_118;
    }
    else {
      local_138 = *(int **)((int)local_124[0] + 0x60);
      if (local_138 != (int *)0x0) {
        (**(code **)*local_138)();
        piVar4 = local_138;
      }
    }
    FUN_00a68480(this,&location->x,&local_100,&local_f0,local_68 == '\0');
    iVar3 = local_144;
    fStack_fc = heightOffset + fStack_fc;
    FUN_006f9830(piVar4,&local_100,&local_f0,local_144,0);
    aiStack_d8[0] = iVar3;
    psVar11 = local_70;
    puVar6 = auStack_d0;
    for (iVar3 = 0x18; iVar3 != 0; iVar3 = iVar3 + -1) {
      *puVar6 = *(undefined4 *)psVar11;
      psVar11 = psVar11 + 2;
      puVar6 = puVar6 + 1;
    }
    local_138 = (int *)((uint)local_138 & 0xffffff00);
    FUN_00a69d10(local_110,&local_110,aiStack_d8);
    if (piVar4 != (int *)0x0) {
      (**(code **)(*piVar4 + 4))();
    }
  }
  return;
}

