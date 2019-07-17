var oldMask = mask_index;
mask_index = spr_SkaterJetSkiHeadMask;
horizCollisionScript = scr_SkaterJetSkiCheckYaHead;
scr_GeneralHorizontalCollisionCheck();
mask_index = oldMask;
horizCollisionScript = scr_EmptyAssScript;
scr_MoveAndCollide();