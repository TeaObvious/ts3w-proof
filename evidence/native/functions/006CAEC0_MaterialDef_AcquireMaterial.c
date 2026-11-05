/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 painting contract. ECX=definition; output material pointer and DWORD selector;
   RET8, Boolean AL. Lazily allocates 0x78 bytes labeled Renderer/Material at definition+38,
   constructs through 6CA220 and initializes through MaterialShaderBinding_Initialize.
   Allocation/initialization failure returns false. Success or an existing cache writes output and
   retains the material. An existing cache does not reconsider selector here. Painting ignores this
   Boolean and may bind NULL. Complete failure cleanup, shader/resources and GPU lifetime are
   unexpanded. */

bool __thiscall MaterialDef_AcquireMaterial(void *this,void **outputMaterial,uint selector)

{
  bool bVar1;
  undefined4 *puVar2;
  
  if (*(int *)((int)this + 0x38) == 0) {
    puVar2 = FUN_004e4500(0x78,"Renderer/Material",0,0,0,0);
    if (puVar2 == (undefined4 *)0x0) {
      puVar2 = (undefined4 *)0x0;
    }
    else {
      puVar2 = FUN_006ca220(puVar2);
    }
    *(undefined4 **)((int)this + 0x38) = puVar2;
    if (puVar2 != (undefined4 *)0x0) {
      FUN_00ec1c10((int)puVar2);
      bVar1 = MaterialShaderBinding_Initialize(*(void **)((int)this + 0x38),this,selector);
      if (bVar1) goto LAB_006caf1d;
      FUN_0079ff90(*(int **)((int)this + 0x38));
    }
    return false;
  }
LAB_006caf1d:
  puVar2 = *(undefined4 **)((int)this + 0x38);
  *outputMaterial = puVar2;
  (**(code **)*puVar2)();
  return true;
}

