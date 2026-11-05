// Annotated selected managed readability excerpts; not an executable replacement.
// The adjacent LotPond.selected.il.txt controls MethodDef identity, exact branches, operands and complete bodies.
// Retained historical C# view; its original decompiler/assembly provenance is unverified.
// Selected flow is compared with authenticated PC1.67 CIL; historical syntax is secondary.
// Constructors omitted by that view have comment-only notes below; their complete IL is the evidence.
// Excerpts omit unrelated type members; they make no full-type or native-layout claim.

// 0x060074f4 Sims3.Gameplay.Pools.LotPond::OnStartup; complete selected CIL 44 bytes.
// Interaction installation order is Skate, WatchSkaters, missing-ID calculation, hidden flags.
		public override void OnStartup()
		{
			AddInteraction(SkatingRink.Skate.Singleton);
			AddInteraction(SkatingRink.WatchSkaters.Singleton);
			if (mPondId == 0)
			{
				TryCalculatePondId();
			}
			SetHiddenFlags(HiddenFlags.Everything);
		}

// 0x060074f5 Sims3.Gameplay.Pools.LotPond::TryCalculatePondId; complete selected CIL 127 bytes.
// Requires current non-world lot; associates returned pond by object GUID equality, not geometric proximity. Historical foreach/break renders the terminal return path; IL controls it.
		private void TryCalculatePondId()
		{
			if (base.LotCurrent == null || base.LotCurrent.IsWorldLot)
			{
				return;
			}
			ulong lotId = base.LotCurrent.LotId;
			uint[] idArray = null;
			if (!World.GetAllPondIds(lotId, ref idArray))
			{
				return;
			}
			uint[] array = idArray;
			foreach (uint pondId in array)
			{
				PondInfo pondInfo = default(PondInfo);
				if (World.GetPondInfo(pondId, lotId, ref pondInfo) && pondInfo.mObjectID == base.ObjectId.mValue)
				{
					mPondId = pondInfo.mID;
					break;
				}
			}
		}

// 0x060074f6 Sims3.Gameplay.Pools.LotPond::CalculateSkatingRinkPaths; complete selected CIL 8 bytes.
// Delegates with true to the Boolean overload.
		protected override void CalculateSkatingRinkPaths()
		{
			CalculateSkatingRinkPaths(true);
		}

// 0x060074f7 Sims3.Gameplay.Pools.LotPond::CalculateSkatingRinkPaths; complete selected CIL 313 bytes.
// Original managed skating workflow: missing ID/in-use gates, destroy on failed Info, then original lane/tuning calculations. This is not a native leaf contract.
		private void CalculateSkatingRinkPaths(bool recalculateShorelinePoints)
		{
			if (mPondId == 0)
			{
				TryCalculatePondId();
			}
			if (mPondId == 0 || base.UseCount > 0)
			{
				return;
			}
			PondInfo pondInfo = default(PondInfo);
			if (!World.GetPondInfo(mPondId, base.LotCurrent.LotId, ref pondInfo))
			{
				Destroy();
				return;
			}
			ClearPondRinkCalculations(recalculateShorelinePoints);
			Vector2 vector = SetCornerVectors(pondInfo);
			float x = vector.x;
			float y = vector.y;
			if (x >= kMinPondWidthAndHeightBeforeSkatable && y >= kMinPondWidthAndHeightBeforeSkatable)
			{
				mIsClockwise = RandomUtil.CoinFlip();
				float num = Math.Min(x, y);
				float num2 = (x + y) * 2f;
				float outsideRouteOffset = num * kOutsideRouteOffsetMinLengthMultiplier;
				float outsideRouteRadius = num * kOutsideRouteRadiusMinLengthMultiplier;
				mMaxSkatersOutsideRoute = (int)(num2 * kCircumferenceMultiplierForMaxSkatersOutsideRoute);
				SkatingRink.CalculateOutsideSkateLane(base.ForwardVector, outsideRouteOffset, 2, outsideRouteRadius, base.RotationModifier, mIsClockwise, mCornerVectors, ref mOuterRouteVerts);
				if (x >= kMinPondWidthAndHeightForInnerRoute && y >= kMinPondWidthAndHeightForInnerRoute)
				{
					mMaxSkatersInsideRoute = (int)(num2 * kCircumferenceMultiplierForMaxSkatersInsideRoute);
					float insideRouteOffset = num * kInsideRouteOffsetMinLengthMultiplier;
					SkatingRink.CalculateInsideSkateLane(base.ForwardVector, Position, insideRouteOffset, 8, base.RotationModifier, mCornerVectors, ref mInnerRouteVerts);
				}
			}
		}

// 0x060074f8 Sims3.Gameplay.Pools.LotPond::SetCornerVectors; complete selected CIL 379 bytes.
// Corner slots are 1/0/3/2; midpoint/water-height positioning and horizontal lengths remain managed.
		private Vector2 SetCornerVectors(PondInfo info)
		{
			mCornerVectors = new Vector3[4];
			mCornerVectors[1] = info.mBestRectCorner0;
			mCornerVectors[0] = info.mBestRectCorner1;
			mCornerVectors[3] = info.mBestRectCorner2;
			mCornerVectors[2] = info.mBestRectCorner3;
			SetForward((mCornerVectors[0] - mCornerVectors[3]).Normalize());
			Vector3 vector = (mCornerVectors[0] + mCornerVectors[2]) / 2f;
			Vector3 position = new Vector3(vector.x, info.mfWaterHeight, vector.z);
			SetPosition(position);
			Vector3 vector2 = mCornerVectors[1] - mCornerVectors[0];
			vector2.y = 0f;
			float x = vector2.Length();
			Vector3 vector3 = mCornerVectors[1] - mCornerVectors[2];
			vector3.y = 0f;
			float y = vector3.Length();
			return new Vector2(x, y);
		}

// 0x060074fc Sims3.Gameplay.Pools.LotPond::InternalOnSetLotCurrent; complete selected CIL 33 bytes.
// Base first; calculation only for absent ID and a supplied non-world lot.
		public override void InternalOnSetLotCurrent(Lot lot)
		{
			base.InternalOnSetLotCurrent(lot);
			if (mPondId == 0 && lot != null && !lot.IsWorldLot)
			{
				CalculateSkatingRinkPaths();
			}
		}

// 0x060074fd Sims3.Gameplay.Pools.LotPond::OnEnterBuildBuyMode; complete selected CIL 1 bytes.
// Empty original body.
		public void OnEnterBuildBuyMode()
		{
		}

// 0x060074fe Sims3.Gameplay.Pools.LotPond::OnExitBuildBuyMode; complete selected CIL 16 bytes.
// Recalculates only when UseCount is not greater than zero.
		public void OnExitBuildBuyMode()
		{
			if (base.UseCount <= 0)
			{
				CalculateSkatingRinkPaths();
			}
		}

// 0x0600750d Sims3.Gameplay.Pools.LotPond::.ctor; complete selected CIL 7 bytes.
// The retained historical view omits this implicit constructor. No C# body is synthesized here.
// LotPond.selected.il.txt IL_0000..0006: ldarg.0; call SkatableTerrain::.ctor; ret.

// 0x0600750e Sims3.Gameplay.Pools.LotPond::.cctor; complete selected CIL 101 bytes.
// The retained historical view represents this as field initializers, not an explicit constructor.
// No C# body is synthesized here. LotPond.selected.il.txt IL_0000..0064 supplies the complete body.
// IL assignment order: outside offset multiplier; outside radius multiplier; minimum outer size;
// minimum inner size; inside offset multiplier; inside and outside circumference multipliers;
// HashString64("hud_interactions_object_pond") into kIconNameHash;
// HashString64("balloon_pond") into kBalloonNameHash. Exact ldc.r4 operands remain in the linked IL.
