/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67 original combo-control comparison; no execution. ECX whole control plus four stack
   words; RET10hex (first two binary32 coordinates, last two opaque unused). Invokes capture service
   and indirect hit/press-index path, selects local pressed-index state, invalidates through a
   virtual call and returns AL1. It does not directly call0051D300. No inference that the first
   press always opens the original pull-down or that current pointer/focus suppression is
   native-equivalent.
   
   Analyst note, original PC1.67 static ABI correction: actual complete55-instruction164-byte body
   ends BOTH normal branches RET10hex, not RET4. Physical thiscall ECX complete combo window, FOUR
   stack DWORDs: first2 are binary32 localX/localY loaded through FLD/FSTP and passed to primary
   virtualB0; last2 are opaqueUnused3/4, not read by this body. Actual dispatcher504810 message6
   pushes payload+14 then+18 then floatY+10 and floatX+0C before primary slot3C; concrete
   primaryFBCC64+3C=FBCCA0 ->51B820. The corrected four-word function prototype does not repair all
   indirect-call stack tracking: actual C still shows unaff_retaddr/localX instead of the
   instruction-proven localX/localY at virtualB0. ASM is authoritative for those coordinates. No
   extra prototype inference is applied to virtualB0. Query capture service+60(context1),
   release+68(context1,IWindow+4,0) when same; branchbyte+291 decides whether virtualB0 result
   becomes complete+25C or+258 while the other getsFFFFFFFF. Then IWindow+4 virtual90 invalidation
   and AL1. Source names for capture/focus outside these physical service slots are not assumed. No
   direct51D300 call or current frontend first-press/open/consumed-release equivalence is
   established. */

bool __thiscall
WinComboBox_HandleMouseDown
          (void *this,float localX,float localY,uint opaqueUnused3,uint opaqueUnused4)

{
  code *pcVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 unaff_retaddr;
  
  if (this == (void *)0x0) {
    iVar4 = 0;
  }
  else {
    iVar4 = (int)this + 4;
  }
  iVar2 = (**(code **)(**(int **)((int)this + 0x30) + 0x60))(1);
  if (iVar2 == iVar4) {
    (**(code **)(**(int **)((int)this + 0x30) + 0x68))(1,(int)this + 4,0);
  }
                    /* Analyst: after two saved registers, [ESP+10hex] is entry second stack word.
                       After SUB ESP,8, [ESP+14hex] is entry first word. FLD/FSTP passes Y and X to
                       virtualB0; both epilogues RET10hex consume all four incoming words. Last two
                       are not read here; original dispatcher504810 proves four-word producer. */
  pcVar1 = *(code **)(*(int *)this + 0xb0);
  if (*(char *)((int)this + 0x291) != '\0') {
    uVar3 = (*pcVar1)(unaff_retaddr,localX);
    *(undefined4 *)((int)this + 0x25c) = uVar3;
    pcVar1 = *(code **)(*(int *)((int)this + 4) + 0x90);
    *(undefined4 *)((int)this + 600) = 0xffffffff;
    (*pcVar1)();
    return true;
  }
  *(undefined4 *)((int)this + 0x25c) = 0xffffffff;
  uVar3 = (*pcVar1)(unaff_retaddr,localX);
  *(undefined4 *)((int)this + 600) = uVar3;
  (**(code **)(*(int *)((int)this + 4) + 0x90))();
  return true;
}

