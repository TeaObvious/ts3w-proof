/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical thiscall ECX receiver, no
   stackwords, plainRET; EAX same receiver. Factory resource9151E6BC allocatesC0hex. Calls
   PartitionProduct_Construct C998E0, installs0107D3B4, slot18hex selects C9B220. Zero
   defaultPattern keyA8..B4, thicknessB8=FFFFFFFF. Actual setter callees C996D0/C996E0/C99700 store
   stackDWORD to8C/94/9C, so constructor overrides partition0, span1, adjacentBlocked4; constants
   are not guessed wallType/tool identifiers. */

void * __thiscall WallStyleProduct_Construct(void *this)

{
  PartitionProduct_Construct(this);
  *(undefined ***)this = &PTR_FUN_0107d3b4;
  *(undefined4 *)((int)this + 0xa8) = 0;
  *(undefined4 *)((int)this + 0xac) = 0;
  *(undefined4 *)((int)this + 0xb0) = 0;
  *(undefined4 *)((int)this + 0xb4) = 0;
  *(undefined4 *)((int)this + 0xb8) = 0xffffffff;
  FUN_00c996d0(this,0);
  FUN_00c996e0(this,1);
  FUN_00c99700(this,4);
  return this;
}

