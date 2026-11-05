/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. ECX child, RET8(outBuffer,requestedUInt32), returns
   actual bytes read. Mode must be1. Query remaining length, return0 at zero; seek parent to
   absoluteBase+position, return0 on seek failure. Read unsigned min(available,requested), advance
   child position by returned actual count. A valid initial position/parent lifetime is a
   precondition; this is bounded child access, not proof that malformed package offsets are
   validated globally. */

uint __thiscall Sims3PackEntryStream_Read(void *this,void *outBuffer,uint requestedBytes)

{
  bool bVar1;
  void *pvVar2;
  void **ppvVar3;
  uint uVar4;
  void *pvStack_4;
  
  if (*(int *)((int)this + 0xc) != 1) {
    return 0;
  }
  uVar4 = 0;
  pvStack_4 = this;
                    /* Instruction-verified stream virtual-call ABI: Stream_Available; ECX receiver,
                       0 stack arguments. Concrete virtual target is separate evidence. */
  pvVar2 = (void *)(**(code **)(*(int *)this + 0x2c))(this);
  if (pvVar2 != (void *)0x0) {
    pvStack_4 = pvVar2;
                    /* Instruction-verified stream virtual-call ABI: Stream_Seek; ECX receiver, 2
                       stack arguments. Concrete virtual target is separate evidence. */
    bVar1 = (**(code **)(**(int **)((int)this + 0x18) + 0x28))
                      (*(int **)((int)this + 0x18),
                       *(int *)((int)this + 0x14) + *(int *)((int)this + 0x10),0);
    if (bVar1) {
      ppvVar3 = &pvStack_4;
      if (requestedBytes <= pvVar2) {
        ppvVar3 = (void **)&requestedBytes;
      }
                    /* Instruction-verified stream virtual-call ABI: Stream_Read; ECX receiver, 2
                       stack arguments. Concrete virtual target is separate evidence. */
      uVar4 = (**(code **)(**(int **)((int)this + 0x18) + 0x30))
                        (*(int **)((int)this + 0x18),outBuffer,(uint)*ppvVar3);
      *(int *)((int)this + 0x10) = *(int *)((int)this + 0x10) + uVar4;
    }
  }
  return uVar4;
}

