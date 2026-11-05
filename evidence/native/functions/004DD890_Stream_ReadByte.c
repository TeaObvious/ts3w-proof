/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. cdecl(stream,outByte), reads one byte through
   virtual+30; AL true iff returned byte count is1. No version validation. */

bool __cdecl Stream_ReadByte(void *stream,byte *outByte)

{
  uint uVar1;
  
                    /* Instruction-verified stream virtual-call ABI: Stream_Read; ECX receiver, 2
                       stack arguments. Concrete virtual target is separate evidence. */
  uVar1 = (**(code **)(*(int *)stream + 0x30))(stream,outByte,1);
  return (bool)('\x01' - (uVar1 != 1));
}

