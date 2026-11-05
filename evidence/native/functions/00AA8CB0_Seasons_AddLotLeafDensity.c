/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_AddLotLeafDensity:


/* Analyst-assigned name. Adds leaf density for a supplied packed tile list when amount>0 and
   density storage exists. Each density byte saturates after truncated amount*255 addition; marks
   density upload dirty at owner+2D4. Packed X/Z are signed char accesses in decompiler; caller must
   supply admitted lot tiles. */

void __thiscall Seasons_AddLotLeafDensity(void *this,undefined4 *param_1,float param_2)

{
  char *pcVar1;
  byte *pbVar2;
  char *pcVar3;

  if ((*(int *)((int)this + 0x2d0) != 0) && (0.0 < param_2)) {
    pcVar1 = (char *)param_1[1];
    for (pcVar3 = (char *)*param_1; pcVar3 != pcVar1; pcVar3 = pcVar3 + 3) {
      pbVar2 = (byte *)(pcVar3[1] * 0x40 + (int)*pcVar3 + *(int *)((int)this + 0x2d0));
      if ((int)(param_2 * 255.0) < (int)(0xff - (uint)*pbVar2)) {
        *pbVar2 = *pbVar2 + (char)(int)(param_2 * 255.0);
      }
      else {
        *pbVar2 = 0xff;
      }
    }
    *(undefined1 *)((int)this + 0x2d4) = 1;
  }
  return;
}


