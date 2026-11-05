/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; analyst-assigned role. Physical thiscall ECX complete window, one
   draw-context stack word, RET4. AL1 is returned unconditionally, upper return bits not a32-bit
   status. Width=window+48 minus+40 and height=+4C minus+44 are scalar single-precision differences.
   Attempt20-byte Renderer/SceneMgrWindow/Renderable allocation; when nonnull initialize
   vtable/referenceword, copy scene+270, invoke its interface+8 virtual4 when nonnull, store
   extents+0C/+10 and call50EC00 on supplied context. A second optional renderable from7E9F60 is
   passed to that context independently. This body does not invoke base Window514640 fill/drawable
   drawing, inspect retained control IDs, walk a C# forest, or prove frontend CPU-world-loading
   admission. Reference callback exact lifetime beyond these calls remains separately scoped. */

bool __thiscall UiSceneWindow_DrawRenderables(void *this,void *renderContext)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  int iVar5;
  undefined4 *puVar6;
  
  fVar1 = *(float *)((int)this + 0x48);
  fVar2 = *(float *)((int)this + 0x40);
  fVar3 = *(float *)((int)this + 0x4c);
  fVar4 = *(float *)((int)this + 0x44);
  puVar6 = (undefined4 *)FUN_004e4500(0x14,"Renderer/SceneMgrWindow/Renderable",0);
  if (puVar6 != (undefined4 *)0x0) {
    iVar5 = *(int *)((int)this + 0x270);
    *puVar6 = &PTR_FUN_00fe5800;
    LOCK();
    puVar6[1] = 0;
    UNLOCK();
    *puVar6 = &PTR_FUN_0101e170;
    puVar6[2] = iVar5;
    if (iVar5 != 0) {
      (**(code **)(*(int *)(iVar5 + 8) + 4))();
    }
    puVar6[3] = fVar1 - fVar2;
    puVar6[4] = fVar3 - fVar4;
    FUN_0050ec00(renderContext,puVar6);
  }
  puVar6 = (undefined4 *)FUN_007e9f60();
  if (puVar6 != (undefined4 *)0x0) {
    FUN_0050ec00(renderContext,puVar6);
  }
  return true;
}

