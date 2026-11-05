/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 004717eb: Copy optional source label to the same arena; this is distinct from parser encoding selection.
 * 00471841: Set parser userData to the cursor receiver.
 * 0047184d: Register OnStartElement71470 as start callback;715C0 is the separate end callback.
 * 004718a3: Caller clears all44 bytes of cdecl registration arguments; this method itself pops its one input word.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role XmlCursor_InstallHandlers.
   Physical ABI: ECX cursor; stack+4 optional UTF16 source label; no meaningful return; RET4. */

void __thiscall XmlCursor_InstallHandlers(void *this,ushort *sourceLabel)

{
  ushort *puVar1;
  undefined4 uVar2;
  int iVar3;
  
  FUN_004e8ae0((void *)((int)this + 0x18),0,0,0x4e4360,0x4e4390,(int)this + 0x10);
  if (sourceLabel != (ushort *)0x0) {
    puVar1 = XmlCursor_CopyUtf16ToArena(this,sourceLabel);
    *(ushort **)((int)this + 0x5c) = puVar1;
  }
  if ((*(int *)((int)this + 0x20) - *(int *)((int)this + 0x24)) + -0x2000 < 0) {
    uVar2 = FUN_004e8b80((void *)((int)this + 0x18),0x2000);
    if ((char)uVar2 == '\0') {
      iVar3 = 0;
      goto LAB_00471824;
    }
  }
  iVar3 = *(int *)((int)this + 0x24);
  *(int *)((int)this + 0x24) = iVar3 + 0x2000;
  *(int *)((int)this + 0x28) = iVar3 + 0x2000;
LAB_00471824:
  *(int *)((int)this + 0x4c) = iVar3;
  *(int *)((int)this + 0x50) = iVar3 + 0x2000;
  *(undefined4 *)((int)this + 0x54) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  XmlParser_SetUserData(*(void **)this,this);
  XmlParser_SetElementHandlers(*(void **)this,XmlCursor_OnStartElement,&LAB_004715c0);
  FUN_004b98a0(*(int *)this,FUN_00471630);
  FUN_004b98c0(*(int *)this,FUN_004716e0);
  FUN_004b98d0(*(int *)this,FUN_004713e0,ScriptCore.Animation::Animation_SetMissingAnimationCallback
              );
  FUN_004b98b0(*(int *)this,FUN_00471750);
  FUN_004b98f0(*(int *)this,ScriptCore.Animation::Animation_SetMissingAnimationCallback,
               ScriptCore.Animation::Animation_SetMissingAnimationCallback);
  return;
}

