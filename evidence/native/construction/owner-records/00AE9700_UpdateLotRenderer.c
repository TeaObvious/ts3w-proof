/* TS3W PC 1.67; original identity: evidence/reference.json.
 * Saved Ghidra C; current name: UpdateLotRenderer.
 * Executable tokens are unchanged. DB EOL comments are addressed separately below
 * because the decompiler does not emit them in C.
 * Generated types and signatures remain projections; consult the paired ASM.
 */

/* Current DB instruction comments, addressed by original instruction:
 * 00AE9703 [EOL]: AE8860 runs before the +0C admission test; no claim that an inactive renderer has no side effects.
 * 00AE9726 [EOL]: The identical renderer ECX enters AE8AA0 under +2C!=0, +1E==0 and +1F==0. These local conditions do not prove how the state was enabled or runtime scheduling.
 */



/* Runs the renderer pre-update child, then under byte+0C dispatches detailed-initialization or
   imposter work and renderer updates. Detailed initialization is called only when +2C is nonzero,
   +1E is zero and +1F is zero; the same renderer pointer is forwarded. One float stack word, RET4.
   Child job/rendering behavior remains with the actual callees. Analyst-assigned name. */

void __thiscall UpdateLotRenderer(void *this,float param_1)

{
  char cVar1;
  uint uVar2;
  void *pvVar3;
  undefined4 uVar4;
  
  UpdateLotRendererActivation(this);
  if (*(char *)((int)this + 0xc) != '\0') {
    if (*(int *)((int)this + 0x2c) == 0) {
      pvVar3 = (void *)((int)this + 0x370);
      if (*(char *)((int)this + 0x1e) == '\0') {
        cVar1 = FUN_007e97b0((int)pvVar3);
        if (cVar1 == '\0') {
          LotImposter_AcquireStoredSceneModels(pvVar3);
        }
      }
      else {
        cVar1 = FUN_00ad8990((int)pvVar3);
        if ((cVar1 == '\0') &&
           ((uVar2 = FUN_00ad8e20((int)pvVar3), (char)uVar2 != '\0' ||
            (uVar2 = FUN_00adf330(), (char)uVar2 != '\0')))) {
          FUN_00ae37e0((int)this);
        }
      }
    }
    else {
      if ((*(char *)((int)this + 0x1e) == '\0') && (*(char *)((int)this + 0x1f) == '\0')) {
        AdvanceLotRendererDetailInitialization(this);
      }
      FUN_00ad9820((int)this + 0x370);
    }
    FUN_00ae3ce0(this);
    if (*(char *)((int)this + 0x1e) != '\0') {
      FUN_00ae0050(this);
      FUN_00ae8660((int)this);
      if (*(char *)((int)this + 0x332) != '\0') {
        FUN_00ae6040(this);
      }
      if (*(char *)((int)this + 0x333) != '\0') {
        FUN_00ae66d0(this);
      }
      if (*(char *)(*(int *)((int)this + 0x18) + 0x424) != '\0') {
        FUN_00adfca0((int)this);
      }
    }
    if (((*(char *)((int)this + 0x3d8) != '\0') &&
        (pvVar3 = LoadPump_ReadFrameServiceGlobal(), pvVar3 != (void *)0x0)) &&
       (uVar4 = CameraFlags_TestBelowHeightThreshold((int)pvVar3),
       (char)uVar4 != *(char *)((int)this + 0x3d7))) {
      LotRenderer_PublishLevelRootFlags((int)this);
    }
    LotRenderer_UpdatePartManagers(this,param_1);
  }
  return;
}

