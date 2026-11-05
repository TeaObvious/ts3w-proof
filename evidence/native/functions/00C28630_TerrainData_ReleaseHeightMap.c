/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. If this+8 exists, calls its vtable slot0 with deletingflag1
   then storesnull. HeightMap constructor installs010650b8 whose word0 targets00aa6dd0. Sets
   bytes+1c=1,+1d=0,+20=0. Does not clear blend pointer+0c, collision owner array+bc or whole
   TerrainData object. */

void __thiscall TerrainData_ReleaseHeightMap(void *this)

{
  if (*(undefined4 **)((int)this + 8) != (undefined4 *)0x0) {
    (**(code **)**(undefined4 **)((int)this + 8))(1);
    *(undefined4 *)((int)this + 8) = 0;
  }
  *(undefined1 *)((int)this + 0x1c) = 1;
  *(undefined1 *)((int)this + 0x1d) = 0;
  *(undefined1 *)((int)this + 0x20) = 0;
  return;
}

