/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original contract: ECXsamplerpreset; reader stackwordRET4 meaningfulAL. Readraw byteLength, store count=byteLength>>3 before7D7A00(count,8) check. Does not locally reject low3 remainderbits. Allocate count*2DWORDs then4DD9D0 reads exactlycount*2 UInt32 usingreaderbyteorder. Saturatingallocationexpression is not null/transaction safety; count remainsstored oncheckfailure. Actual selected SMPS lengths48 divisible8; no malformed resource test or newDBtypes. */

uint __thiscall FUN_0079a5b0(void *this,void *param_1)

{
  longlong lVar1;
  void *this_00;
  bool bVar2;
  undefined3 extraout_var;
  uint *puVar3;
  undefined4 uVar4;
  undefined4 extraout_EAX;
  
  this_00 = param_1;
  bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&param_1,
                            *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar2);
  *(uint *)((int)this + 4) = (uint)param_1 >> 3;
  bVar2 = StreamReader_CheckArrayBytes(this_00,(uint)param_1 >> 3,8);
  if (bVar2) {
    lVar1 = (ulonglong)(uint)(*(int *)((int)this + 4) * 2) * 4;
    puVar3 = (uint *)FUN_004e4500(-(uint)((int)((ulonglong)lVar1 >> 0x20) != 0) | (uint)lVar1,
                                  "Shader/StatePairs",0);
    *(uint **)this = puVar3;
    uVar4 = Stream_ReadUInt32ArrayByByteOrder
                      (*(int **)((int)this_00 + 8),puVar3,*(int *)((int)this + 4) * 2,
                       *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,(byte)uVar4);
    return CONCAT31((int3)((uint)extraout_EAX >> 8),*(undefined1 *)((int)this_00 + 0x14));
  }
  return CONCAT31(extraout_var,bVar2);
}
