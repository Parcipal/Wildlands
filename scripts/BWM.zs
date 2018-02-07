import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

val TannedLeatherSurv = <ore:hideTanned>;
val TannedLeatherBwm = <ore:materialTannedLeather>;

TannedLeatherSurv.add(<betterwithmods:material:6>);
TannedLeatherBwm.add(<survivalist:tanned_leather>);

val SoulSteel = <ore:ingotSoulforgedSteel>;
val Steel = <ore:ingotSteel>;

Steel.add(<betterwithmods:material:14>);
SoulSteel.add(<thermalfoundation:material:160>);

//Normal Crafting Fixes
recipes.addShaped(<betterwithmods:saw>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:gearWood>, <betterwithmods:material:9>, <ore:gearWood>], [<ore:plankTreatedWood>, <betterwithmods:wooden_axle>, <ore:plankTreatedWood>]]);
recipes.addShaped(<betterwithmods:bellows>, [[<ore:slabTreatedWood>, <survivalist:tanned_leather>, <ore:slabTreatedWood>], [<survivalist:tanned_leather>, <ore:gearWood>, <survivalist:tanned_leather>], [<betterwithmods:material:9>, <betterwithmods:wooden_axle>, <betterwithmods:material:9>]]);

//Artisan Crafting Tweaks
	//Handsaw
val WoodArray = [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood:1>, <immersiveengineering:treated_wood:2>, <rustic:planks>, <rustic:planks:1>, <minecraft:planks>,<minecraft:planks:1> , <minecraft:planks:2>, <minecraft:planks:3>, <minecraft:planks:4>, <minecraft:planks:5>] as IItemStack[];
val SidingArray = [<betterwithengineering:ie_siding>, <betterwithengineering:ie_siding:1>, <betterwithengineering:ie_siding:2>, <betterwithmods:rustic_compat_siding>, <betterwithmods:rustic_compat_siding:1>, <betterwithmods:wood_siding>, <betterwithmods:wood_siding:1>, <betterwithmods:wood_siding:2>, <betterwithmods:wood_siding:3>, <betterwithmods:wood_siding:4>, <betterwithmods:wood_siding:5>] as IItemStack[];
val MouldingArray = [<betterwithengineering:ie_moulding>, <betterwithengineering:ie_moulding:1>,  <betterwithengineering:ie_moulding:2>, <betterwithmods:rustic_compat_moulding>, <betterwithmods:rustic_compat_moulding:1>, <betterwithmods:wood_moulding>, <betterwithmods:wood_moulding:1>, <betterwithmods:wood_moulding:2>, <betterwithmods:wood_moulding:3>, <betterwithmods:wood_moulding:4>, <betterwithmods:wood_moulding:5>] as IItemStack[];
val CornerArray = [<betterwithengineering:ie_corner>, <betterwithengineering:ie_corner:1>, <betterwithengineering:ie_corner:2>, <betterwithmods:rustic_compat_corner>, <betterwithmods:rustic_compat_corner:1>, <betterwithmods:wood_corner>, <betterwithmods:wood_corner:1>, <betterwithmods:wood_corner:2>, <betterwithmods:wood_corner:3>, <betterwithmods:wood_corner:4>, <betterwithmods:wood_corner:5>] as IItemStack[];

for w in (0 to 10){
	mods.artisanworktables.Worktable.addRecipeShaped("carpenter", SidingArray[w] * 2, <ore:carpenters_handsaw>, 5, false, [[WoodArray[w]]]);
	mods.artisanworktables.Worktable.addRecipeShaped("carpenter", MouldingArray[w] * 2, <ore:carpenters_handsaw>, 5, false, [[SidingArray[w]]]);
	mods.artisanworktables.Worktable.addRecipeShaped("carpenter", CornerArray[w] * 2, <ore:carpenters_handsaw>, 5, false, [[MouldingArray[w]]]);
	}

//Artisan Worktables Gating/Recipe Changes
	//Carpenter
	mods.artisanworktables.Worktable.addRecipeShaped("carpenter", <betterwithmods:wooden_axle>, <ore:carpenters_handsaw>, 20, false, [[<ore:plankTreatedWood>], [<betterwithmods:rope>], [<ore:plankTreatedWood>]]);
	mods.artisanworktables.Worktable.addRecipeShaped("carpenter", <betterwithmods:single_machine:1>, <ore:carpenters_hammer>, 20, false, [[<ore:plankTreatedWood>, <betterwithmods:wooden_gearbox>, <ore:ingotIron>], [<ore:gearWood>, <betterwithmods:material:34>, <ore:gearWood>], [<ore:ingotIron>, <betterwithmods:wooden_axle>, <ore:plankTreatedWood>]]);
	mods.artisanworktables.Worktable.addRecipeShaped("carpenter", <betterwithmods:single_machine:2>, <ore:carpenters_hammer>, 20, false, [[<ore:sidingTreatedWood>, null, <ore:sidingTreatedWood>], [<ore:gearWood>, <minecraft:wooden_pressure_plate>, <ore:gearWood>], [null, <ore:cornerTreatedWood>, null]]);

	//Crafting Table
	mods.artisanworktables.Worktable.addRecipeShaped("basic", <minecraft:piston>, <ore:masons_chisel>, 20, false, [[<ore:woodSiding>, <minecraft:iron_ingot>, <ore:woodSiding>], [<ore:cobblestone>, <ore:ingotSteel>, <ore:cobblestone>], [<ore:cobblestone>, <betterwithmods:material:34>, <ore:cobblestone>]]);
	mods.artisanworktables.Worktable.addRecipeShaped("basic", <betterwithmods:single_machine>, <ore:masons_chisel>, 20, false, [[<embers:block_caminite_brick>, <betterwithmods:wooden_gearbox>, <embers:block_caminite_brick>], [<embers:block_caminite_brick>, <ore:gearWood>, <embers:block_caminite_brick>], [<embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>]]);

	//Mason
	mods.artisanworktables.Worktable.addRecipeShaped("mason", <betterwithmods:hibachi>, <ore:masons_chisel>, 20, false, [[<betterwithmods:material:17>, <betterwithmods:material:17>, <betterwithmods:material:17>], [<embers:block_caminite_brick>, <betterwithmods:material:27>, <embers:block_caminite_brick>], [<embers:block_caminite_brick>, <betterwithmods:material:34>, <embers:block_caminite_brick>]]);
	mods.artisanworktables.Worktable.addRecipeShaped("mason", <betterwithmods:single_machine:3>, <ore:masons_chisel>, 20, false, [[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>], [<embers:block_caminite_brick>, <minecraft:clock>, <embers:block_caminite_brick>], [<embers:block_caminite_brick>, <ore:gearWood>, <embers:block_caminite_brick>]]);



recipes.remove(<minecraft:piston>);
recipes.remove(<betterwithmods:gravel_pile>);
recipes.remove(<betterwithmods:gravel_pile>);
recipes.remove(<betterwithmods:wooden_gearbox>);
recipes.remove(<betterwithmods:wooden_axle>);
recipes.remove(<betterwithmods:single_machine>);
recipes.remove(<betterwithmods:single_machine:1>);
recipes.remove(<betterwithmods:single_machine:3>);
recipes.remove(<betterwithmods:saw>);
recipes.remove(<betterwithmods:bellows>);
recipes.remove(<betterwithmods:hibachi>);