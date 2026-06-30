package com.dahesor.mixin;

import net.minecraft.core.BlockPos;
import net.minecraft.server.level.ServerLevel;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import net.minecraft.world.level.SpawnData;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;

@Mixin(SpawnData.CustomSpawnRules.class)
public class SpawnerLightLevelMixin {
	@Inject(at = @At("HEAD"), method = "isValidPosition", cancellable = true)
	private void skipLightValidation(final BlockPos blockSpawnPos, final ServerLevel level, CallbackInfoReturnable<Boolean> cir) {
        cir.setReturnValue(true);
	}
}