/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: VSHD/PSHD bytecode reader. Uses the object's virtual stage tag, validates payload
   length, allocates and reads the precompiled token bytes, then optionally invokes the virtual
   GPU-object creation method. Low AL is the result; no HLSL assembly is performed here. */

uint __thiscall ShaderBytecode_ReadAndMaybeCreate(void *this,void *param_1,char param_2)

{
  uint *puVar1;
  void *this_00;
  char cVar2;
  uint uVar3;
  void *pvVar4;
  int *piVar5;
  undefined4 uVar6;
  
  this_00 = param_1;
  uVar3 = FUN_004dd980(*(int **)((int)param_1 + 8),(uint *)&param_1);
  pvVar4 = (void *)FUN_007d79f0(this_00,(byte)uVar3);
  if (*(char *)((int)this_00 + 0x14) != '\0') {
    cVar2 = (**(code **)(*(int *)this + 4))();
    pvVar4 = (void *)((-(uint)(cVar2 != '\0') & 0xfffffffa) + 0x44485356);
    if (param_1 == pvVar4) {
      puVar1 = (uint *)((int)this + 0xc);
      uVar3 = FUN_004dd980(*(int **)((int)this_00 + 8),puVar1);
      uVar3 = FUN_007d79f0(this_00,(byte)uVar3);
      if (*(char *)((int)this_00 + 0x14) != '\0') {
        uVar3 = FUN_007d7a00(this_00,*puVar1,1);
        if ((char)uVar3 != '\0') {
          piVar5 = FUN_004e6f20(DAT_011cc864,*puVar1,0);
          *(int **)((int)this + 8) = piVar5;
          uVar3 = 0;
          if (piVar5 != (int *)0x0) {
            uVar6 = FUN_005bd2c0(this_00,piVar5,*puVar1);
            if (*(char *)((int)this_00 + 0x14) != '\0') {
              if (param_2 != '\0') {
                return CONCAT31((int3)((uint)uVar6 >> 8),1);
              }
              uVar6 = (**(code **)(*(int *)this + 0xc))(0);
              return uVar6;
            }
            uVar3 = FUN_004e5e70(DAT_011cc864,*(int *)((int)this + 8));
            *(undefined4 *)((int)this + 8) = 0;
          }
        }
      }
      *puVar1 = 0;
      return uVar3 & 0xffffff00;
    }
  }
  return (uint)pvVar4 & 0xffffff00;
}

