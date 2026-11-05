/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 authored-lot representations comparison): Analyst producer chain established
   by exact vectors, texture slots and shader names. ECX LOD owner, no stack argument, plain RET.
   Three creator vectors first receive virtual0C work. Preserve global11D0564 previous value and
   concrete event03FABF1D mode transitions. Five ADEBF0 calls use texture slots+50/+98/+68/+B0/+80
   with original creator vectors, fill words, flags and output modes; first four return values are
   not accumulated here. Only fifth AL is copied at ADF0C3, AND BL,1 at ADF0E6 and restored into AL
   at ADF144 after subsequent model calls. It is not an aggregate success of all atlases/model
   construction. Main shader hash from lowercased lotImposter (68601DE3) and water ImpostorWater
   invoke ADD320 with output+38/main vector and+3C/water vector; HolidayLights invokes ADD6A0 with
   output+40/holiday vector. Shader/material/texture production precedes writerADCCE0 in the owning
   workflow, but helper internals and final GPU/image parity are not inferred. Existing virtual
   stack-alias artifacts retained and annotated rather than copied as high-level arguments. */

uint __fastcall LotImposter_RenderAtlasesAndBuildModels(void *param_1)

{
  int *piVar1;
  int *piVar2;
  undefined4 uVar3;
  uint uVar4;
  int *piVar5;
  undefined4 uVar6;
  undefined4 uStack_34;
  undefined ***pppuStack_30;
  undefined4 uStack_2c;
  undefined1 auStack_16 [6];
  undefined **ppuStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  piVar2 = *(int **)((int)param_1 + 0xc);
  piVar1 = (int *)((int)param_1 + 8);
  for (piVar5 = (int *)*piVar1; piVar5 != piVar2; piVar5 = piVar5 + 1) {
    if ((int *)*piVar5 != (int *)0x0) {
      uStack_2c = 0xadef43;
      (**(code **)(*(int *)*piVar5 + 0xc))();
    }
  }
  piVar5 = *(int **)((int)param_1 + 0x1c);
  for (piVar2 = *(int **)((int)param_1 + 0x18); piVar2 != piVar5; piVar2 = piVar2 + 1) {
    if ((int *)*piVar2 != (int *)0x0) {
      uStack_2c = 0xadef61;
      (**(code **)(*(int *)*piVar2 + 0xc))();
    }
  }
  piVar5 = *(int **)((int)param_1 + 0x2c);
  for (piVar2 = *(int **)((int)param_1 + 0x28); piVar2 != piVar5; piVar2 = piVar2 + 1) {
    if ((int *)*piVar2 != (int *)0x0) {
      uStack_2c = 0xadef7f;
      (**(code **)(*(int *)*piVar2 + 0xc))();
    }
  }
  uStack_2c = 0xadef8b;
  piVar2 = (int *)MessageDispatch_GetCurrent();
  LOCK();
  uStack_c = 0;
  UNLOCK();
  uStack_8 = *(undefined4 *)((int)param_1 + 4);
  uStack_2c = 0;
  pppuStack_30 = &ppuStack_10;
  ppuStack_10 = &PTR_DestroyPooledFloorMessage_01065f8c;
  uStack_4 = 1;
  uStack_34 = 0x3fabf1d;
  (**(code **)(*piVar2 + 0x18))();
  DAT_011d0564 = 9;
  FUN_00adebf0((int *)((int)param_1 + 0x50),piVar1,0,1,0);
  FUN_00adebf0((int *)((int)param_1 + 0x98),piVar1,0,2,0);
  uVar6 = 0;
  ppuStack_10 = (undefined **)0x2;
  (**(code **)(*piVar2 + 0x18))(0x3fabf1d,auStack_16 + -6);
  pppuStack_30 = (undefined ***)0xff000000;
  DAT_011d0564 = 10;
  FUN_00adebf0((int *)((int)param_1 + 0x68),piVar1,0xff000000,2,1);
  FUN_00adebf0((int *)((int)param_1 + 0xb0),piVar1,pppuStack_30,4,1);
  (**(code **)(*piVar2 + 0x18))(0x3fabf1d,auStack_16 + -0x12,0);
  DAT_011d0564 = 9;
  uVar3 = FUN_00adebf0((int *)((int)param_1 + 0x80),(int *)((int)param_1 + 0x18),0,2,2);
  DAT_011d0564 = uVar6;
  (**(code **)(*piVar2 + 0x18))(0x3fabf1d,&uStack_34,0);
  uVar4 = HashLowercasedCStringFNV1("lotImposter");
  LotImposter_BuildMaterialModel(param_1,(int *)((int)param_1 + 0x38),piVar1,uVar4);
  uVar4 = HashLowercasedCStringFNV1("ImpostorWater");
  LotImposter_BuildMaterialModel
            (param_1,(int *)((int)param_1 + 0x3c),(int *)((int)param_1 + 0x18),uVar4);
  uVar4 = HashLowercasedCStringFNV1("HolidayLights");
  uVar6 = FUN_00add6a0(*(int *)((int)param_1 + 4),(int *)((int)param_1 + 0x40),
                       (int *)((int)param_1 + 0x28),uVar4);
  return CONCAT31((int3)((uint)uVar6 >> 8),(char)uVar3) & 0xffffff01;
}

