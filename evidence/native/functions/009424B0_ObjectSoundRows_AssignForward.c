/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. cdecl begin,end,destination; returns advanced destination.
   Copies row ID then assigns owned name range via405910, skip only same string receiver. Increments
   source/destination by20 until exact end. Used by erase to shift later rows forward; child
   allocation/exception behavior unexpanded. */

void * __cdecl ObjectSoundRows_AssignForward(void *begin,void *end,void *destination)

{
  undefined4 *this;
  undefined4 *puVar1;
  
  if (begin != end) {
    this = (undefined4 *)((int)destination + 4);
    puVar1 = (undefined4 *)((int)begin + 4);
    do {
      *(undefined4 *)destination = *(undefined4 *)begin;
      if (puVar1 != this) {
        FUN_00405910(this,(void *)*puVar1,(undefined1 *)puVar1[1]);
      }
      begin = (void *)((int)begin + 0x14);
      destination = (void *)((int)destination + 0x14);
      this = this + 5;
      puVar1 = puVar1 + 5;
    } while (begin != end);
    return destination;
  }
  return destination;
}

