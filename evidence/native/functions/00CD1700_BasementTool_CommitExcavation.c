/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: Physical ECX tool with NO explicit argument; ordinary RET and
   low AL result. Wraps C9F690 in undo begin/end. Pushes NINE DWORDs and removes24hex bytes: lot,
   shape, two compact corners, float bottom, undo, two zero optional design words, final local error
   context. Final error context is not consumed in selected C9F690 body. Not fastcall with an
   independent EDX argument. */

bool __thiscall BasementTool_CommitExcavation(void *this)

{
  bool bVar1;
  undefined1 local_80 [12];
  undefined4 *local_74;
  undefined4 *local_58;
  undefined4 *local_3c;
  undefined4 *local_20;
  
  FUN_00d1c400(*(void **)((int)this + 0x94),'\x01');
  FUN_00ad7740((int)local_80);
  bVar1 = BasementExcavation_ApplyRegion
                    (*(undefined4 **)((int)this + 0xc),
                     CONCAT31((int3)((uint)local_80 >> 8),*(char *)((int)this + 0x5e) == '\0'),
                     (char *)((int)this + 0x7c),(char *)((int)this + 0x7f),
                     *(float *)((int)this + 0x88),*(void **)((int)this + 0x94),(int *)0x0,
                     (int **)0x0,local_80);
  FUN_00d1c450(*(void **)((int)this + 0x94),'\x01');
  FUN_00a527c0(local_20);
  FUN_00a527c0(local_3c);
  FUN_00a527c0(local_58);
  FUN_00a52780(local_74);
  return bVar1;
}

