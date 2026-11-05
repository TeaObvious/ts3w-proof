/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Walks pending queue, retires each
   entry (optionally Stop) and frees each node. Invoked before mode1 queue/replace and mode2 current
   replacement. */

void __thiscall Animation_ClearPendingSequence(void *this,char param_1)

{
  undefined4 *puVar1;
  int ***pppiVar2;
  int **local_c;
  int **local_8;
  char *local_4;
  
  puVar1 = (undefined4 *)((int)this + 0x30);
  if ((undefined4 *)*puVar1 != puVar1) {
    local_c = (int **)&local_c;
    local_4 = "Animation/SequenceController/TemporaryNodeList";
    local_8 = local_c;
    FUN_00566ea0(&local_c,(int)&local_c,(undefined4 *)*puVar1,puVar1);
    FUN_00584000(puVar1);
    *puVar1 = puVar1;
    *(undefined4 **)((int)this + 0x34) = puVar1;
    pppiVar2 = (int ***)local_c;
    if ((int ***)local_c != &local_c) {
      do {
        Animation_RetireSequenceEntry(pppiVar2 + 2,(int)this,param_1);
        pppiVar2 = (int ***)*pppiVar2;
      } while (pppiVar2 != &local_c);
    }
    FUN_00584000(&local_c);
  }
  return;
}

