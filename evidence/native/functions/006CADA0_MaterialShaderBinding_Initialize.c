/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: material binding initializer. Reads a material shader key, locates the precompiled
   set/definition, owns referenced material objects and invokes MaterialShaderBinding_SelectShader
   for the initial mode. The exact high-level ownership type is inferred from call shape. */

undefined4 __thiscall MaterialShaderBinding_Initialize(void *this,int *param_1,undefined4 param_2)

{
  int *piVar1;
  int *piVar2;
  uint uVar3;
  undefined4 uVar4;
  void *pvVar5;
  char cVar6;
  
  FUN_006ca2a0((int)this);
  piVar1 = param_1;
  uVar3 = FUN_00c2ed00((int)param_1);
  pvVar5 = DAT_011d853c;
  if (uVar3 != 0) {
    uVar4 = FUN_0079b560(DAT_011d853c,uVar3,&param_1,'\0');
    piVar2 = param_1;
    if ((char)uVar4 == '\0') {
      pvVar5 = ShaderLibrary_FindDefinition(pvVar5,uVar3,0,'\x01');
      *(void **)((int)this + 0x40) = pvVar5;
    }
    else {
      if (*(int **)((int)this + 0x44) != (int *)0x0) {
        (**(code **)(**(int **)((int)this + 0x44) + 4))();
      }
      if (piVar2 != (int *)0x0) {
        (**(code **)*piVar2)();
      }
      *(int **)((int)this + 0x44) = piVar2;
      pvVar5 = FUN_006cace0(this,0,0,(undefined4 *)0x0);
      *(void **)((int)this + 0x40) = pvVar5;
      (**(code **)(*param_1 + 4))();
    }
  }
  cVar6 = '\0';
  uVar4 = param_2;
  uVar3 = FUN_00542290((int)piVar1);
  pvVar5 = (void *)FUN_0068f130((int)piVar1);
  uVar4 = MaterialShaderBinding_CopyMaterialPayload(this,pvVar5,uVar3,cVar6,uVar4);
  if ((char)uVar4 == '\0') {
    return uVar4;
  }
  uVar4 = AnimationRenderState_GetWorldMatrices((int)piVar1);
  *(undefined4 *)((int)this + 0x34) = uVar4;
  *(int **)((int)this + 0x54) = piVar1;
  uVar4 = (**(code **)*piVar1)();
  return CONCAT31((int3)((uint)uVar4 >> 8),1);
}

