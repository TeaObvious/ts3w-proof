/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 STATIC ORIGINAL ABI. ECX catalog + seven stack DWORDs, RET1C. Index is signed Int32; row
   address is catalog+D4 + index*28hex. Copies row+0,+4,+8,+C,+10 to five output words and
   +18,+1C,+20,+24 to four-word auxiliary output; row+14 is not copied. No count/bounds validation
   in this accessor. B3FD50 produces even ordinal indices; C float loop locals are register/stack
   reuse artifacts there. */

void __thiscall
ObjectCatalog_ReadWallPlacementRow
          (void *this,int param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4,
          undefined4 *param_5,undefined4 *param_6,undefined4 *param_7)

{
  int iVar1;
  
  iVar1 = *(int *)((int)this + 0xd4) + param_1 * 0x28;
  *param_2 = *(undefined4 *)(*(int *)((int)this + 0xd4) + param_1 * 0x28);
  *param_3 = *(undefined4 *)(iVar1 + 4);
  *param_4 = *(undefined4 *)(iVar1 + 8);
  *param_5 = *(undefined4 *)(iVar1 + 0xc);
  *param_6 = *(undefined4 *)(iVar1 + 0x10);
  *param_7 = *(undefined4 *)(iVar1 + 0x18);
  param_7[1] = *(undefined4 *)(iVar1 + 0x1c);
  param_7[2] = *(undefined4 *)(iVar1 + 0x20);
  param_7[3] = *(undefined4 *)(iVar1 + 0x24);
  return;
}

