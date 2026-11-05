/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECX resource plus1outputpointer stackDWORD/RET4, ALBoolean.
   Scan64byte records+2C..+30 until controlbyte+3C==2; copy its key+28/+2C instance pair, AL1.
   Ifabsent outputtwozeros AL0. No named Model-versus-Tree priority or complete resource-key return
   inferred. */

uint __thiscall ObjectParams_CopyFirstExpandedResourceInstance(void *this,undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  iVar2 = *(int *)((int)this + 0x2c);
  while( true ) {
    if (iVar2 == *(int *)((int)this + 0x30)) {
      *param_1 = 0;
      param_1[1] = 0;
      return (uint)param_1 & 0xffffff00;
    }
    if (*(char *)(iVar2 + 0x3c) == '\x02') break;
    iVar2 = iVar2 + 0x40;
  }
  *param_1 = *(undefined4 *)(iVar2 + 0x28);
  uVar1 = *(undefined4 *)(iVar2 + 0x2c);
  param_1[1] = uVar1;
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

