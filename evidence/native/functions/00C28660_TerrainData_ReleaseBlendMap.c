/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. Separate blend-map release: if this+0c exists, invokes
   deleting virtualslot0(flag1), then clears+0c. Load-heightmap callback uses this before rebuilding
   blend data; the unload callback does not call it. */

void __thiscall TerrainData_ReleaseBlendMap(void *this)

{
  if (*(undefined4 **)((int)this + 0xc) != (undefined4 *)0x0) {
    (**(code **)**(undefined4 **)((int)this + 0xc))(1);
    *(undefined4 *)((int)this + 0xc) = 0;
  }
  return;
}

