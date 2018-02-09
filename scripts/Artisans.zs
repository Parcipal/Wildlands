import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

//Parcipals changes to Artisan Worktables Tools
	//Handsaw (unlocks after getting a saw)
val MetalArray = [<ore:ingotIron>, <ore:ingotGold>, <ore:ingotDiamond>, <ore:ingotAluminum>, <ore:ingotBronze>, <ore:ingotConstantan>, <ore:ingotCopper>, <ore:ingotElectrum>, <ore:ingotInvar>, <ore:ingotLead>, <ore:ingotNickel>, <ore:ingotPlatinum>, <ore:ingotSilver>, <ore:ingotSteel>, <ore:ingotTin>, <ore:ingotManasteel>, <ore:ingotElementium>, <ore:ingotTerrasteel>] as IIngredient[];
val SawArray = [<artisanworktables:carpenters_handsaw_iron>, <artisanworktables:carpenters_handsaw_gold>, <artisanworktables:carpenters_handsaw_diamond>, <artisanworktables:carpenters_handsaw_aluminum>, <artisanworktables:carpenters_handsaw_bronze>, <artisanworktables:carpenters_handsaw_constantan>, <artisanworktables:carpenters_handsaw_copper>, <artisanworktables:carpenters_handsaw_electrum>, <artisanworktables:carpenters_handsaw_invar>, <artisanworktables:carpenters_handsaw_lead>, <artisanworktables:carpenters_handsaw_nickel>, <artisanworktables:carpenters_handsaw_platinum>, <artisanworktables:carpenters_handsaw_silver>, <artisanworktables:carpenters_handsaw_steel>, <artisanworktables:carpenters_handsaw_tin>, <artisanworktables:carpenters_handsaw_manasteel>, <artisanworktables:carpenters_handsaw_elementium>, <artisanworktables:carpenters_handsaw_terrasteel>] as IItemStack[];
val SawNameArray = ["IronHandsaw", "GoldHandsaw", "DiamondHandsaw", "AluminumHandsaw", "BronzeHandsaw", "ConstantanHandsaw", "CopperHandsaw", "ElectrumHandsaw", "InvarHandsaw", "LeadHandsaw", "NickelHandsaw", "PlatinumHandsaw", "SilverHandsaw", "SteelHandsaw", "TinHandsaw", "ManasteelHandsaw", "ElementiumHandsaw", "TerrasteelHandsaw"] as string[];

for s in (0 to 18){
	recipes.addShaped(SawNameArray[s], SawArray[s], [[null, MetalArray[s], <betterwithmods:wood_moulding:*>], [MetalArray[s], <betterwithmods:wood_moulding:*>, null], [<betterwithmods:wood_moulding:*>, null, null]]);
	recipes.remove(SawArray[s]);
	}

recipes.remove(<artisanworktables:carpenters_handsaw_wood>);
recipes.remove(<artisanworktables:carpenters_handsaw_flint>);
recipes.remove(<artisanworktables:carpenters_handsaw_bone>);
recipes.remove(<artisanworktables:carpenters_handsaw_stone>);

	//Carpenters Hammer
recipes.remove(<artisanworktables:carpenters_hammer_stone>);
recipes.remove(<artisanworktables:carpenters_hammer_wood>);

//Parcipals changes to Worktables
recipes.addShaped(<artisanworktables:worktable:1>, [[<minecraft:planks:*>, <minecraft:stone_slab>, <minecraft:planks:*>], [<minecraft:planks:*>, <minecraft:planks:*>, <minecraft:planks:*>], [<minecraft:stone_slab:3>, <minecraft:cobblestone>, <minecraft:stone_slab:3>]]);
recipes.addShaped(<artisanworktables:worktable:2>, [[<minecraft:brick>, <minecraft:stone_slab>, <minecraft:brick>], [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>], [<minecraft:stone_slab:3>, <minecraft:cobblestone>, <minecraft:stone_slab:3>]]);
recipes.addShaped(<artisanworktables:worktable:3>, [[<minecraft:iron_ingot>, <ore:plateSteel>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:stone_slab:3>, <minecraft:cobblestone>, <minecraft:stone_slab:3>]]);
recipes.addShaped(<artisanworktables:worktable:5>, [[<ore:plankWood>, <ore:craftingTableWood>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<minecraft:stone_slab:3>, <minecraft:cobblestone>, <minecraft:stone_slab:3>]]);

recipes.remove(<artisanworktables:worktable:3>);
recipes.remove(<artisanworktables:worktable:5>);

//Parcipals changes to Bricks
mods.artisanworktables.Worktable.addRecipeShaped("mason", <tconstruct:seared:3> * 4, <ore:masons_trowel>, 5, false, [[<tconstruct:materials>, <earthworks:item_lime_plaster>, <tconstruct:materials>], [<earthworks:item_lime_plaster>, <tconstruct:materials>, <earthworks:item_lime_plaster>], [<tconstruct:materials>, <earthworks:item_lime_plaster>, <tconstruct:materials>]]);
mods.artisanworktables.Worktable.addRecipeShaped("mason", <minecraft:brick_block> * 4, <ore:masons_trowel>, 5, false, [[<minecraft:brick>, <botany:misc_ceramic>, <minecraft:brick>], [<botany:misc_ceramic>, <minecraft:brick>, <botany:misc_ceramic>], [<minecraft:brick>, <botany:misc_ceramic>, <minecraft:brick>]]);
mods.artisanworktables.Worktable.addRecipeShaped("mason", <immersiveengineering:stone_decoration:1> * 4, <ore:masons_trowel>, 5, false, [[<betterwithmods:material:17>, <tconstruct:materials>, <betterwithmods:material:17>], [<tconstruct:materials>, <botany:misc_ceramic>, <tconstruct:materials>], [<betterwithmods:material:17>, <tconstruct:materials>, <betterwithmods:material:17>]]);
mods.artisanworktables.Worktable.addRecipeShaped("mason", <minecraft:stonebrick> * 4, <ore:masons_trowel>, 5, false, [[<ore:stone>, <botany:misc_ceramic>, <ore:stone>], [<botany:misc_ceramic>, <ore:stone>, <botany:misc_ceramic>], [<ore:stone>, <botany:misc_ceramic>, <ore:stone>]]);
mods.artisanworktables.Worktable.addRecipeShaped("mason", <embers:block_caminite_brick> * 4, <ore:masons_trowel>, 5, false, [[<embers:brick_caminite>, <botany:misc_ceramic>, <embers:brick_caminite>], [<botany:misc_ceramic>, <embers:brick_caminite>, <botany:misc_ceramic>], [<embers:brick_caminite>, <botany:misc_ceramic>, <embers:brick_caminite>]]);
mods.artisanworktables.Worktable.addRecipeShaped("mason", <embers:archaic_bricks> * 4, <ore:masons_trowel>, 5, false, [[<embers:archaic_brick>, <botany:misc_ceramic>, <embers:archaic_brick>], [<botany:misc_ceramic>, <embers:archaic_brick>, <botany:misc_ceramic>], [<embers:archaic_brick>, <botany:misc_ceramic>, <embers:archaic_brick>]]);
mods.artisanworktables.Worktable.addRecipeShaped("mason", <tconstruct:deco_ground> * 4, <ore:masons_trowel>, 5, false, [[<tconstruct:materials:1>, <roots:straw>, <tconstruct:materials:1>], [<roots:straw>, <tconstruct:materials:1>, <roots:straw>], [<tconstruct:materials:1>, <roots:straw>, <tconstruct:materials:1>]]);
mods.artisanworktables.Worktable.addRecipeShaped("mason", <tconstruct:dried_clay:1> * 4, <ore:masons_trowel>, 5, false, [[<tconstruct:materials:2>, <botany:misc_ceramic>, <tconstruct:materials:2>], [<botany:misc_ceramic>, <tconstruct:materials:2>, <botany:misc_ceramic>], [<tconstruct:materials:2>, <botany:misc_ceramic>
, <tconstruct:materials:2>]]);
