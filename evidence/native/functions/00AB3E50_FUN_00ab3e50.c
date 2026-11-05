/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: ECX compressedgrid plus x/z/storagelevel, RET0C EAXborrowed4wordptr. Blockindex=((field20*level+arithmetic(x>>2))*field24+arithmetic(z>>2)); UInt16tag48. Bit8000 chooses uniform38+blockindex*16, else dense28+((z&3)+((x&3)+tag*4)*4)*16. Bounds supplied by caller, no own guard or borrowed lifetime extension. */

int __thiscall FUN_00ab3e50(void *this,uint param_1,uint param_2,int param_3)

{
  ushort uVar1;
  int iVar2;
  
  iVar2 = (*(int *)((int)this + 0x20) * param_3 + ((int)param_1 >> 2)) * *(int *)((int)this + 0x24)
          + ((int)param_2 >> 2);
  uVar1 = *(ushort *)(*(int *)((int)this + 0x48) + iVar2 * 2);
  if ((uVar1 & 0x8000) == 0) {
    return ((param_2 & 3) + ((param_1 & 3) + (uint)uVar1 * 4) * 4) * 0x10 +
           *(int *)((int)this + 0x28);
  }
  return iVar2 * 0x10 + *(int *)((int)this + 0x38);
}
