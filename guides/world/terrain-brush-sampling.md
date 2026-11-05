# Terrain brush sampling

PC1.67 TS3W.exe. Analyst names and typed fields are instruction-verified roles,
not recovered symbols. These Game functions establish nearest-profile sampling,
not CAW's separate interpolation behavior or colored-image conversion C88D60.

## Episode state and orientation

D197E0 stores lot,queries floor height,sets angle0 and previous/currentXY from the
click. The coordinate sample lives at brush+88; fields include gridXY atC/10,
previousXY14/18,currentXY1C/20,angle24,minChanged28/2C,maxChanged30/34,lot38,
width40,operation44,profile48,brush4C. Float fields were incorrectly rendered as
numeric int-to-float conversions before actual types were set in the database.

D195C0 requires samplelot. ClampXY0..W/D first,then shift previous/current and
form Float32 grid centre from unsigned resolution. Orientation1 uses
FPATAN(-deltaZ,deltaX),orientation2 calls bounded generator4: nonzero adds wiggle
and subtracts Float32Tau once if >=Tau;zero subtracts and adds Tau once ifnegative.
Other values set angle0. Bounding rectangle starts signedINTMAX/INTMIN.

## Rectangle and spans

D191A0 reads image unsignedW18/H1C. Separate Float32 stages:
metresPerTexel=width/imageW,texelsPerCell=cell/metresPerTexel,
halfWidth=(resolution*width)*.5,
halfHeight=((imageH*metresPerTexel)*resolution)*.5.
FSIN/FCOS produce stored Float32 values. Corners are ordered(-hx,-hz),(-hx,+hz),
(+hx,+hz),(+hx,-hz),with x=u*cos-sin*v+gridX,z=u*sin+cos*v+gridZ.

D18E60 floors corner rows by x87 rounding plus residual sign correction. Each
edge crosses half-open lowZ<=row<highZ;horizontal edges do not cross. Vertical
edge floors fixedX. Nonvertical DIVSS computes deltaX/deltaZ FIRST,then MULSS
by row-z0,then ADDSSx0. Low/high intersections are clipped against samplebounds;
high is incremented1 and then is INCLUSIVE in the sampling loop. Fixed256-row
native stack arrays are implementation storage,not a requirement to duplicate
unsafe overflow in a portable raster.

## Profile view,texels and operation callback

The profile virtual10 atD1924A receives ECXimage and ONE outview pointer word;
callee cleanup4. View0 is borrowed data,view4 rowPitch. This selected getter does
not establish a lock-acquisition protocol. Actual D19258/5C andD1951A/21 uses
prove pointer versus stride; local call override removes previous decompiler
stack alias drift that produced false halfextent products.

For each row,dx=(firstX-gridX)*texelsPerCell,dz=(row-gridZ)*texelsPerCell;
u=dz*sin+dx*cos+imageW*.5;v=dz*cos-dx*sin+imageH*.5. Convert each u/v by saving
CW,OR0C00,FLDCW,FISTP64,restoringCW. This is CHOP/towardzero regardless of the
apparent ROUND in genuine C. Compare LOWDWORD coordinates UNSIGNED withW/H,
readBYTE(data+v*rowPitch+u) only ifinrange.

The operation atD19532 receives ECXgenericbrush and ONE typed samplepointer word;
known paint targetsRET4. Only BooleanALtrue extends the changed bounding box.
AdvanceFloat32u+=cos*texelsPerCell,v+=(-0.0-sin*texelsPerCell) on EVERY X,
including skipped texels and false callbacks. Traverse increasingZ thenX;
smoothing/paid paint can depend on earlier samples. No bilinear interpolation
or per-cell coordinate recomputation exists in this Game loop.

## Complete canonical bodies and limits

- Episode initialization: [ASM](../../evidence/native/functions/00D197E0_TerrainBrush_InitializeEpisodeAspects.asm) ([annotated Ghidra C](../../evidence/native/functions/00D197E0_TerrainBrush_InitializeEpisodeAspects.c)).
- Clamp/orientation/dispatch: [ASM](../../evidence/native/functions/00D195C0_TerrainBrush_ApplyEpisodeStamp.asm) ([annotated Ghidra C](../../evidence/native/functions/00D195C0_TerrainBrush_ApplyEpisodeStamp.c)).
- Rectangle/profile raster: [ASM](../../evidence/native/functions/00D191A0_TerrainBrush_RasterProfileRectangle.asm) ([annotated Ghidra C](../../evidence/native/functions/00D191A0_TerrainBrush_RasterProfileRectangle.c)).
- Spans: [ASM](../../evidence/native/functions/00D18E60_TerrainBrush_ComputeRectangleSpans.asm) ([annotated Ghidra C](../../evidence/native/functions/00D18E60_TerrainBrush_ComputeRectangleSpans.c)).

Physical raster=thiscall one pointer/RET4void;dispatch/init two words/RET8void;
spans five words/RET14hexvoid. Native byte data,full Listing/gaps and actual
annotated decompiler retained; database saved clean. Temporary reuse and native
extended/trigonometric precision still require reading ASM where genuine C is
ambiguous. No claim that MathF matches x87 transcendental outputs bitforbit.
Static proof only,no brush/image/concurrency/game execution or runtime FP-mode
measurement. Complete image decoder/palette conversion,full episode ToolWorld
lifecycle and unsafe allocation/NaN conversion handling are separate questions.
