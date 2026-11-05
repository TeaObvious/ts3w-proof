/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note, original PC1.67 static; analyst-assigned name. Physical thiscall ECX receiver, no
   stackwords, plainRET; EAX same receiver. Calls C93020, installs0107D1F0, slot18hex selects
   C99740. Defaults: walltype88=0, partition8C=FFFFFFFF, flags90=11FFF, span94=FFFFFFFF,
   blocked98=7, adjacentBlocked9C=0, toolModeA0=1, toolUsageA4=0. These are raw32-bit integer
   fields; no original managed rule is inferred. */

void * __thiscall PartitionProduct_Construct(void *this)

{
  CatalogProduct_ConstructCommonDefaults(this);
  *(undefined4 *)((int)this + 0x88) = 0;
  *(undefined4 *)((int)this + 0x9c) = 0;
  *(undefined4 *)((int)this + 0xa4) = 0;
  *(undefined ***)this = &PTR_FUN_0107d1f0;
  *(undefined4 *)((int)this + 0x8c) = 0xffffffff;
  *(undefined4 *)((int)this + 0x90) = 0x11fff;
  *(undefined4 *)((int)this + 0x94) = 0xffffffff;
  *(undefined4 *)((int)this + 0x98) = 7;
  *(undefined4 *)((int)this + 0xa0) = 1;
  return this;
}

