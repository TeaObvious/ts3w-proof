/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. ECX reader context, destination and element-count stack
   words/RET8. Forwards to original UInt32-array-by-byte-order reader and accumulates low-byte
   status; destination is a packed legacy BGEO map bank, not managed characters. */

void __thiscall BlendGeometry_ReadUInt32Bank(void *this,uint *param_1,int param_2)

{
  undefined4 uVar1;
  
  uVar1 = Stream_ReadUInt32ArrayByByteOrder
                    (*(int **)((int)this + 8),param_1,param_2,*(uint *)((int)this + 0x10));
  StreamReader_AccumulateStatus(this,(byte)uVar1);
  return;
}

