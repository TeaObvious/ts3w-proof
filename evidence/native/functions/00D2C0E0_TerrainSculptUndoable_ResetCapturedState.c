/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PhysicalthiscallECXnoargs/plainRET fullEAX0. SwapD2BF20,clearheightmap
   via9D67F0,countC4=0,rewindtempeditedend118=begin114,total110=0. NOdirectfundscallbackinthisbody.
   DoNOTinfercompletecancelrefundpolicyfromthisonewrapper;
   parentUndoable/ToolWorldcancelcallersremainseparate. DoNOTreplaythisresetasnormalRedo. */

int __thiscall TerrainSculptUndoable_ResetCapturedState(void *this)

{
  TerrainSculptUndoable_SwapHeightAndPondState(this);
  FUN_009d67f0(*(int *)((int)this + 0xbc),*(uint *)((int)this + 0xc0));
  *(undefined4 *)((int)this + 0xc4) = 0;
  *(undefined4 *)((int)this + 0x118) = *(undefined4 *)((int)this + 0x114);
  *(undefined4 *)((int)this + 0x110) = 0;
  return 0;
}

