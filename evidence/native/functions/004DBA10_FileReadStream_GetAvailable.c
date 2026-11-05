/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack stream instruction review. ECX file stream, no stack args. Calls
   position virtual+24(origin2), NEG EAX. Through this concrete vtable this is remaining bytes
   (length-current), not total stream size; error/overflow can wrap. Header manifest comparison uses
   this available count. */

uint __thiscall FileReadStream_GetAvailable(void *this)

{
  uint uVar1;
  
                    /* Instruction-verified stream virtual-call ABI: Stream_Position; ECX receiver,
                       1 stack arguments. Concrete virtual target is separate evidence. */
  uVar1 = (**(code **)(*(int *)this + 0x24))(this,2);
  return -uVar1;
}

