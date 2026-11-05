/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst PC1.67 original instruction review. ECX renderer;6stack slots RET18h:
   GUIDlo/hi,targetAlpha,duration,explicitFromByte,fromAlpha. Resolve live sceneobject; missing
   rejectsALfalse. Ordered duration<binary32(.01) applies target immediately, not explicitFrom,
   updates existing transition's target/start/sampled alpha only (no node erase/clockreset). Timed
   explicitFrom first applies fromAlpha. Find/insert node at renderer+10F0: new OR explicitFrom
   seeds target/start/sampled from current scene RGBA and all durations1; existing unforced copies
   sampledAlpha to startAlpha. ALL elapsed lanes reset0; set targetAlpha and alphaDuration. ALbool
   only; decompiler integer/pointer float casts are artifacts. */

bool __thiscall
Renderer_RequestObjectOpacityTransition
          (void *this,uint objectIdLo,uint objectIdHi,float targetAlpha,float duration,
          byte explicitFrom,float fromAlpha)

{
  void *this_00;
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  byte bVar8;
  float fVar9;
  uint local_38;
  uint local_34;
  float local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  float fStack_24;
  float local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  
  local_38 = objectIdLo;
  local_34 = objectIdHi;
  RenderGuidMap_FindIterator((void *)((int)this + 4),&local_30,(byte *)&local_38);
  fVar9 = local_30;
  bVar8 = explicitFrom;
                    /* Ordered duration<binary32(.01) is immediate. NaN goes timed; malformed inputs
                       not modeled as ordinary fades. */
  if (((local_30 == *(float *)((int)this + 0x1028)) || (local_30 == 0.0)) ||
     (this_00 = (void *)((int)local_30 + -8), this_00 == (void *)0x0)) {
    return false;
  }
  if (duration < 0.01) {
    local_20 = *(float *)((int)local_30 + 0x1c8);
    uStack_2c = *(undefined4 *)((int)local_30 + 0x1cc);
    uStack_28 = *(undefined4 *)((int)local_30 + 0x1d0);
    fStack_24 = targetAlpha;
    fStack_14 = targetAlpha;
    local_30 = local_20;
    uStack_1c = uStack_2c;
    uStack_18 = uStack_28;
    SceneObject_SetTintOpacity(this_00,&local_20);
    SceneObject_PublishOpacityEndpoint(this_00);
    LotRoomSeedTree_FindGuidNode((void *)((int)this + 0x10f0),&local_38,(ulonglong *)&objectIdLo);
    if (local_38 != (int)this + 0x10f4U) {
      *(undefined4 *)(local_38 + 0x20) = *(undefined4 *)(local_38 + 0x20);
      *(undefined4 *)(local_38 + 0x24) = *(undefined4 *)(local_38 + 0x24);
      *(undefined4 *)(local_38 + 0x28) = *(undefined4 *)(local_38 + 0x28);
      *(float *)(local_38 + 0x2c) = targetAlpha;
      *(undefined4 *)(local_38 + 0x30) = *(undefined4 *)(local_38 + 0x30);
      *(undefined4 *)(local_38 + 0x34) = *(undefined4 *)(local_38 + 0x34);
      *(undefined4 *)(local_38 + 0x38) = *(undefined4 *)(local_38 + 0x38);
      *(float *)(local_38 + 0x3c) = targetAlpha;
      *(undefined4 *)(local_38 + 0x40) = *(undefined4 *)(local_38 + 0x40);
      *(undefined4 *)(local_38 + 0x44) = *(undefined4 *)(local_38 + 0x44);
      *(undefined4 *)(local_38 + 0x48) = *(undefined4 *)(local_38 + 0x48);
      *(float *)(local_38 + 0x4c) = targetAlpha;
    }
    return true;
  }
  if (explicitFrom != 0) {
    local_20 = *(float *)((int)local_30 + 0x1c8);
    uStack_2c = *(undefined4 *)((int)local_30 + 0x1cc);
    uStack_28 = *(undefined4 *)((int)local_30 + 0x1d0);
    fStack_24 = fromAlpha;
    fStack_14 = fromAlpha;
    local_30 = local_20;
    uStack_1c = uStack_2c;
    uStack_18 = uStack_28;
    SceneObject_SetTintOpacity(this_00,&local_20);
    SceneObject_PublishOpacityEndpoint(this_00);
  }
  local_38 = local_38 & 0xffffff00;
  Renderer_FindOrInsertColorTransition((void *)((int)this + 0x10f0),&local_38,&objectIdLo,local_38);
                    /* Find/insert returns node pointer plus inserted byte at output+4; this is not
                       part of the object's high GUID word. */
  *(undefined4 *)(local_38 + 0x60) = 0;
  *(undefined4 *)(local_38 + 100) = 0;
  *(undefined4 *)(local_38 + 0x68) = 0;
  *(undefined4 *)(local_38 + 0x6c) = 0;
  if (((char)local_34 == '\0') && (bVar8 == 0)) {
    *(undefined4 *)(local_38 + 0x30) = *(undefined4 *)(local_38 + 0x30);
    *(undefined4 *)(local_38 + 0x34) = *(undefined4 *)(local_38 + 0x34);
    *(undefined4 *)(local_38 + 0x38) = *(undefined4 *)(local_38 + 0x38);
    *(undefined4 *)(local_38 + 0x3c) = *(undefined4 *)(local_38 + 0x4c);
  }
  else {
    uVar1 = *(undefined4 *)((int)fVar9 + 0x1c8);
    uVar2 = *(undefined4 *)((int)fVar9 + 0x1cc);
    uVar3 = *(undefined4 *)((int)fVar9 + 0x1d0);
    uVar4 = *(undefined4 *)((int)fVar9 + 0x1d4);
    *(undefined4 *)(local_38 + 0x50) = 0x3f800000;
    *(undefined4 *)(local_38 + 0x54) = 0x3f800000;
    *(undefined4 *)(local_38 + 0x58) = 0x3f800000;
    *(undefined4 *)(local_38 + 0x5c) = 0x3f800000;
    uVar5 = *(undefined4 *)((int)fVar9 + 0x1cc);
    uVar6 = *(undefined4 *)((int)fVar9 + 0x1d0);
    uVar7 = *(undefined4 *)((int)fVar9 + 0x1d4);
    *(undefined4 *)(local_38 + 0x20) = *(undefined4 *)((int)fVar9 + 0x1c8);
    *(undefined4 *)(local_38 + 0x24) = uVar5;
    *(undefined4 *)(local_38 + 0x28) = uVar6;
    *(undefined4 *)(local_38 + 0x2c) = uVar7;
    *(undefined4 *)(local_38 + 0x30) = uVar1;
    *(undefined4 *)(local_38 + 0x34) = uVar2;
    *(undefined4 *)(local_38 + 0x38) = uVar3;
    *(undefined4 *)(local_38 + 0x3c) = uVar4;
    *(undefined4 *)(local_38 + 0x40) = uVar1;
    *(undefined4 *)(local_38 + 0x44) = uVar2;
    *(undefined4 *)(local_38 + 0x48) = uVar3;
    *(undefined4 *)(local_38 + 0x4c) = uVar4;
  }
  *(undefined4 *)(local_38 + 0x20) = *(undefined4 *)(local_38 + 0x20);
  *(undefined4 *)(local_38 + 0x24) = *(undefined4 *)(local_38 + 0x24);
  *(undefined4 *)(local_38 + 0x28) = *(undefined4 *)(local_38 + 0x28);
  *(float *)(local_38 + 0x2c) = targetAlpha;
  *(undefined4 *)(local_38 + 0x50) = *(undefined4 *)(local_38 + 0x50);
  *(undefined4 *)(local_38 + 0x54) = *(undefined4 *)(local_38 + 0x54);
  *(undefined4 *)(local_38 + 0x58) = *(undefined4 *)(local_38 + 0x58);
  *(float *)(local_38 + 0x5c) = duration;
  return true;
}

