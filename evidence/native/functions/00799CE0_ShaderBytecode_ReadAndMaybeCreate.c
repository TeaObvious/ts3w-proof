/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: VSHD/PSHD bytecode reader. Uses the object's virtual stage tag, validates payload
   length, allocates and reads the precompiled token bytes, then optionally invokes the virtual
   GPU-object creation method. Low AL is the result; no HLSL assembly is performed here. */

uint __thiscall ShaderBytecode_ReadAndMaybeCreate(void *this,void *param_1,char param_2)

{
  uint *outUInt32;
  void *this_00;
  bool bVar1;
  char cVar2;
  void *extraout_EAX;
  void *pvVar3;
  uint extraout_EAX_00;
  undefined3 extraout_var;
  int *destination;
  undefined4 extraout_EAX_01;
  uint uVar4;
  undefined4 uVar5;
  
  this_00 = param_1;
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&param_1,
                            *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  pvVar3 = extraout_EAX;
  if (*(char *)((int)this_00 + 0x14) != '\0') {
    cVar2 = (**(code **)(*(int *)this + 4))();
    pvVar3 = (void *)((-(uint)(cVar2 != '\0') & 0xfffffffa) + 0x44485356);
    if (param_1 == pvVar3) {
      outUInt32 = (uint *)((int)this + 0xc);
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),outUInt32,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      uVar4 = extraout_EAX_00;
      if (*(char *)((int)this_00 + 0x14) != '\0') {
        bVar1 = StreamReader_CheckArrayBytes(this_00,*outUInt32,1);
        uVar4 = CONCAT31(extraout_var,bVar1);
        if (bVar1) {
          destination = FUN_004e6f20(DAT_011cc864,*outUInt32,0);
          *(int **)((int)this + 8) = destination;
          uVar4 = 0;
          if (destination != (int *)0x0) {
            StreamReader_ReadBytesInto(this_00,destination,*outUInt32);
            if (*(char *)((int)this_00 + 0x14) != '\0') {
              if (param_2 == '\0') {
                uVar5 = (**(code **)(*(int *)this + 0xc))(0);
                return uVar5;
              }
              return CONCAT31((int3)((uint)extraout_EAX_01 >> 8),1);
            }
            uVar4 = FUN_004e5e70(DAT_011cc864,*(int *)((int)this + 8));
            *(undefined4 *)((int)this + 8) = 0;
          }
        }
      }
      *outUInt32 = 0;
      return uVar4 & 0xffffff00;
    }
  }
  return (uint)pvVar3 & 0xffffff00;
}

