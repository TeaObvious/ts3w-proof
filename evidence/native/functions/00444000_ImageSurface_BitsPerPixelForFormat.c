/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 stdcallONE UInt32format/RET4
   returnsfullEAXUInt32;2->8;3..8->16;9..10->32;11..12->64;other0. Complete jump-table switches
   verifiedagainst Listing and actualdecompiler. Format2isonebyteperpixel whileformat10isfour;do
   notassumeeverydecodedprofileisonebytewithoutsourceformatcontract. */

uint ImageSurface_BitsPerPixelForFormat(uint format)

{
  switch(format) {
  case 2:
    return 8;
  case 3:
  case 4:
  case 5:
  case 6:
  case 7:
  case 8:
    return 0x10;
  case 9:
  case 10:
    return 0x20;
  case 0xb:
  case 0xc:
    return 0x40;
  default:
    return 0;
  }
}

