/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Pass stride0x18c; when first pass differs from current calls
   BeginTechniqueStateScope. Applies each pass, runs optional pass hook, and calls draw callback for
   successful ordinary passes. Render-target scope restored afterward. This is ordered per-pass draw
   dispatch, not a shader-source compiler. */

void __thiscall
ShaderTechnique_ApplyPassesAndDraw(void *this,void *param_1,undefined *param_2,undefined4 param_3)

{
  int iVar1;
  bool bVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  char local_34 [4];
  undefined1 local_30 [48];
  
  if (*(int *)((int)this + 4) != 0) {
    if (*(int *)((int)param_1 + 0x54) != *(int *)this) {
      RenderDevice_BeginTechniqueStateScope(param_1);
    }
    uVar5 = 0;
    local_34[0] = '\0';
    if (*(int *)((int)this + 4) != 0) {
      iVar4 = 0;
      do {
        iVar1 = *(int *)this;
        bVar2 = ShaderPass_ApplyForDraw((int *)(iVar1 + iVar4),param_1,local_34);
        if (((bVar2) &&
            (uVar3 = ShaderPass_InvokeOptionalHook((int *)(iVar1 + iVar4)), (char)uVar3 != '\x01'))
           && (param_2 != (undefined *)0x0)) {
          (*(code *)param_2)(param_3);
        }
        uVar5 = uVar5 + 1;
        iVar4 = iVar4 + 0x18c;
      } while (uVar5 < *(uint *)((int)this + 4));
      if (local_34[0] != '\0') {
        FUN_0060ea60(param_1,(int)local_30);
      }
    }
  }
  return;
}

