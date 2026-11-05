/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX context plus seven stack DWORDs/RET1Ch
   (28decimal): childGUID low/high,parentGUID low/high,pointDWORD,occupant Boolean word,bone-mode
   Boolean word. Calls959740 on row vector+28h, then writes five DWORDs and two bytes at the
   appended24B row. Preserves invocation order; does not resolve parents or install a cutout. */

void __thiscall
TransformContext_AppendAttachmentRow
          (void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined1 param_6,undefined1 param_7)

{
  int iVar1;
  
  FUN_00959740((void *)((int)this + 0x28));
  iVar1 = *(int *)((int)this + 0x2c);
  *(undefined4 *)(iVar1 + -0x18) = param_1;
  *(undefined4 *)(iVar1 + -0x14) = param_2;
  *(undefined4 *)(iVar1 + -0x10) = param_3;
  *(undefined4 *)(iVar1 + -0xc) = param_4;
  *(undefined4 *)(iVar1 + -8) = param_5;
  *(undefined1 *)(iVar1 + -4) = param_6;
  *(undefined1 *)(iVar1 + -3) = param_7;
  return;
}

