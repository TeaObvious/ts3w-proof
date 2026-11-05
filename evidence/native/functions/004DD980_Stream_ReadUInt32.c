/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. cdecl(stream,outUInt32,uint endianFlag), THREE
   stack args. Read4 bytes; AL false if short. Flag1 leaves native little-endian bytes unchanged;
   otherwise swaps all4 bytes. Comparison is full DWORD, not an inferred byte flag. */

bool __cdecl Stream_ReadUInt32(void *stream,uint *outUInt32,uint endianFlag)

{
  uint uVar1;
  
                    /* Instruction-verified stream virtual-call ABI: Stream_Read; ECX receiver, 2
                       stack arguments. Concrete virtual target is separate evidence. */
  uVar1 = (**(code **)(*(int *)stream + 0x30))(stream,outUInt32,4);
  if (uVar1 == 4) {
    if (endianFlag != 1) {
      uVar1 = *outUInt32;
      *outUInt32 = (uVar1 & 0xff0000 | uVar1 >> 0x10) >> 8 | (uVar1 & 0xff00 | uVar1 << 0x10) << 8;
    }
    return true;
  }
  return false;
}

