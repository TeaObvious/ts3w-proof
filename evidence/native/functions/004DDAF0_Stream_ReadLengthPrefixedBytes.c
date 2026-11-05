/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. cdecl(stream,outBuffer,capacity,uint endianFlag).
   Read4-byte length; short prefix returnsFFFFFFFF. Flag1 keeps native little-endian order;
   otherwise byte-swap. Null buffer rewinds to initial input position and returns DECLARED LENGTH.
   Non-null copies min(length,capacity-1), terminates, seeks to initial+4+declaredLength and returns
   declaredLength even after bounded copy; seek/copy failures are not converted into a complete
   validation result. Capacity must be nonzero for meaningful bound. Do not trust older decompiler
   return4 or lost stack arguments. */

uint __cdecl
Stream_ReadLengthPrefixedBytes(void *stream,byte *outBuffer,uint capacity,uint endianFlag)

{
  void *arg0;
  uint uVar1;
  uint uVar2;
  uint uVar3;
  byte *pbVar4;
  uint uStack_8;
  uint uStack_4;
  
  arg0 = stream;
  uVar3 = 0;
                    /* Instruction-verified stream virtual-call ABI: Stream_Position; ECX receiver,
                       1 stack arguments. Concrete virtual target is separate evidence. */
  uVar1 = (**(code **)(*(int *)stream + 0x24))(stream,0);
  uStack_8 = 0;
  uStack_4 = uVar1;
                    /* Instruction-verified stream virtual-call ABI: Stream_Read; ECX receiver, 2
                       stack arguments. Concrete virtual target is separate evidence. */
  uVar2 = (**(code **)(*(int *)arg0 + 0x30))(arg0,&uStack_8,4);
  if (uVar2 != 4) {
    return 0xffffffff;
  }
  if (endianFlag != 1) {
    uStack_8 = (uStack_8 & 0xff0000 | uStack_8 >> 0x10) >> 8 |
               (uStack_8 & 0xff00 | uStack_8 << 0x10) << 8;
  }
  if (outBuffer == (byte *)0x0) {
                    /* Instruction-verified stream virtual-call ABI: Stream_Seek; ECX receiver, 2
                       stack arguments. Concrete virtual target is separate evidence. */
    (**(code **)(*(int *)arg0 + 0x28))(arg0,uVar1,0);
    return uStack_8;
  }
  uVar1 = uStack_8;
  pbVar4 = outBuffer;
  if (capacity - 1 <= uStack_8) {
    uVar1 = capacity - 1;
  }
  do {
                    /* Instruction-verified stream virtual-call ABI: Stream_Read; ECX receiver, 2
                       stack arguments. Concrete virtual target is separate evidence. */
    if ((uVar1 <= uVar3) || (uVar2 = (**(code **)(*(int *)arg0 + 0x30))(arg0,&stream,1), uVar2 != 1)
       ) break;
    *pbVar4 = (byte)stream;
    pbVar4 = pbVar4 + 1;
    uVar3 = uVar3 + 1;
  } while (pbVar4 != (byte *)0x0);
                    /* Instruction-verified stream virtual-call ABI: Stream_Seek; ECX receiver, 2
                       stack arguments. Concrete virtual target is separate evidence. */
  (**(code **)(*(int *)arg0 + 0x28))(arg0,uStack_8 + 4 + uStack_4,0);
  if (pbVar4 != (byte *)0x0) {
    *pbVar4 = 0;
  }
  return uStack_8;
}

