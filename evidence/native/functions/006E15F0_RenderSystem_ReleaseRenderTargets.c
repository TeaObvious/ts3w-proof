/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX owner, one stack Boolean, RET4. Releases named
   surface/texture registry resources, render targets and proxies+148/+160. Full flag invokes6E0D20.
   No direct write to global option vector238, DisablePerPixelFog F1, shadow-config178 or flora
   category/template flags. This is the target-release phase, not a blanket reset of
   configuration/seasonal options. */

void __thiscall RenderSystem_ReleaseRenderTargets(void *this,char param_1)

{
  void *pvVar1;
  
  pvVar1 = (void *)FUN_00617780();
  if (pvVar1 != (void *)0x0) {
    FUN_00617b90(pvVar1);
    FUN_00617b90(pvVar1);
    FUN_00617bf0((int)pvVar1);
    FUN_00617b90(pvVar1);
    FUN_00617b90(pvVar1);
    FUN_00617bf0((int)pvVar1);
    FUN_00617b90(pvVar1);
    FUN_00617b90(pvVar1);
    FUN_00617bf0((int)pvVar1);
    if (param_1 != '\0') {
      FUN_006e0d20(pvVar1);
    }
    FUN_006e0d60(pvVar1);
    FUN_00617b90(pvVar1);
    FUN_00617bf0((int)pvVar1);
    FUN_00617b90(pvVar1);
    FUN_00617bf0((int)pvVar1);
    FUN_00617b90(pvVar1);
    FUN_00617bf0((int)pvVar1);
    FUN_00617b90(pvVar1);
    FUN_00617b90(pvVar1);
    FUN_00617bf0((int)pvVar1);
    if (*(char *)((int)this + 0x17c) != '\0') {
      FUN_00617b90(pvVar1);
      FUN_00617b90(pvVar1);
      FUN_00617b90(pvVar1);
      FUN_00617b90(pvVar1);
      FUN_00617b90(pvVar1);
      FUN_00617b90(pvVar1);
      FUN_00617b90(pvVar1);
      FUN_00617b90(pvVar1);
    }
    FUN_00617bf0((int)pvVar1);
    FUN_006e0f30((int)this);
    FUN_006e0fb0(pvVar1);
    FUN_00722f60((int)this + 0x160);
    FUN_00722f60((int)this + 0x148);
  }
  return;
}

