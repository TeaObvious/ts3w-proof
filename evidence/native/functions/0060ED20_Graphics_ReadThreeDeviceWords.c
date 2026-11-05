/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX manager plus three output-pointer DWORDs, RET12. Follows managerE0 and copies
   device184/188/1B4 to those outputs in order. Roof activation D0E8C0 uses the second signed word
   with exact .02f scale. This body does not establish width/height/refresh labels, exact device
   writer or viewport units. */

void __thiscall
Graphics_ReadThreeDeviceWords
          (void *this,undefined4 *param_1,undefined4 *param_2,undefined4 *param_3)

{
  int iVar1;
  
  iVar1 = *(int *)((int)this + 0xe0);
  *param_1 = *(undefined4 *)(iVar1 + 0x184);
  *param_2 = *(undefined4 *)(iVar1 + 0x188);
  *param_3 = *(undefined4 *)(iVar1 + 0x1b4);
  return;
}

