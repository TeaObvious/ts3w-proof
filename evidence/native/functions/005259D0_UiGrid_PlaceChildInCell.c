/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67 instructions. ECX grid receiver, five physical stack dwords, RET14.
   Third input is child interface pointer; first/second are signed cell coordinates compared JL/JGE
   against visible index bounds returned by vcall+FC. Last two low-byte inputs at entryESP+10/+14
   independently stretch width/height. Stored three-explicit-argument decompiler prototype,
   unaff_retaddr and omitted float geometry are stack-recovery artifacts, not the physical ABI. A
   present child outside the bounds receives vcall74(1,0); null child returns. Valid cell obtains
   descriptor+168, rectangle+1C0 and origin+20; combine rectangle/origin and signed leading/trailing
   gutter floats from grid+280..28C. Read child size through vcall38. Only when neither stretch byte
   is set, horizontal alignment byte3 centers/4 trails and vertical byte6 centers/7 trails;
   otherwise alignment is bypassed and each enabled axis takes its available trailing edge
   independently. Half scalar00F9B5B4 is binary32 0.5. Apply child bounds through vcall64, then
   vcall74(1,1). This function includes cell admission/query/enable side effects beyond the pure
   rectangle helper. Concrete virtual slot producers and descriptor lifetime remain separate; do not
   infer caller synchronization from this leaf. */

void __thiscall UiGrid_PlaceChildInCell(void *this,int param_1,undefined4 param_2,int *param_3)

{
  int *piVar1;
  int unaff_retaddr;
  undefined4 uVar2;
  undefined1 auStack_5c [8];
  int iStack_54;
  int local_50;
  int iStack_4c;
  int iStack_48;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined1 uStack_10;
  undefined1 uStack_f;
  undefined1 uStack_e;
  undefined4 uStack_c;
  undefined4 uStack_8;
  
  if (param_3 != (int *)0x0) {
    piVar1 = (int *)((int)this + 0x250);
    (**(code **)(*(int *)((int)this + 0x250) + 0xfc))(&local_50);
    if ((((unaff_retaddr < iStack_54) || (param_1 < local_50)) || (iStack_4c <= unaff_retaddr)) ||
       (iStack_48 <= param_1)) {
      uVar2 = 0;
    }
    else {
      uStack_34 = 0;
      uStack_10 = 0xff;
      uStack_f = 0;
      uStack_e = 0;
      uStack_c = 0;
      uStack_8 = 0;
      uStack_30 = 0;
      uStack_2c = 0;
      uStack_28 = 0;
      uStack_24 = 0;
      uStack_18 = 0;
      uStack_14 = 0;
      uStack_20 = 0;
      uStack_1c = 0;
      (**(code **)(*piVar1 + 0x168))(unaff_retaddr,param_1,&uStack_34);
      (**(code **)(*piVar1 + 0x1c0))(uStack_c,uStack_8,&stack0xffffff80);
      (**(code **)(*piVar1 + 0x20))(auStack_5c);
      (**(code **)(*param_3 + 0x38))();
      (**(code **)(*param_3 + 0x38))();
      (**(code **)(*param_3 + 100))(&stack0xffffff80);
      uVar2 = 1;
    }
    (**(code **)(*param_3 + 0x74))(1,uVar2);
  }
  return;
}

