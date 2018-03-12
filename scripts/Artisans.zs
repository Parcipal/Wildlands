import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;

val basic = RecipeBuilder.get("basic");
val blacksmith = RecipeBuilder.get("blacksmith");
val carpenter = RecipeBuilder.get("carpenter");
val chef = RecipeBuilder.get("chef");
val chemist = RecipeBuilder.get("chemist");
val engineer = RecipeBuilder.get("engineer");
val farmer = RecipeBuilder.get("farmer");
val jeweler = RecipeBuilder.get("jeweler");
val mage = RecipeBuilder.get("mage");
val mason = RecipeBuilder.get("mason");
val scribe = RecipeBuilder.get("scribe");
val tailor = RecipeBuilder.get("tailor");

//Parcipals changes to Artisan Worktables Tools
	//Handsaw (unlocks after getting a saw)
val MetalArray = [<ore:ingotIron>, <ore:ingotGold>, <ore:ingotDiamond>, <ore:ingotAluminum>, <ore:ingotBronze>, <ore:ingotConstantan>, <ore:ingotCopper>, <ore:ingotElectrum>, <ore:ingotInvar>, <ore:ingotLead>, <ore:ingotNickel>, <ore:ingotPlatinum>, <ore:ingotSilver>, <ore:ingotSteel>, <ore:ingotTin>, <ore:ingotManasteel>, <ore:ingotElementium>, <ore:ingotTerrasteel>] as IIngredient[];
val SawArray = [<artisanworktables:artisans_handsaw_iron>, <artisanworktables:artisans_handsaw_gold>, <artisanworktables:artisans_handsaw_diamond>, <artisanworktables:artisans_handsaw_aluminum>, <artisanworktables:artisans_handsaw_bronze>, <artisanworktables:artisans_handsaw_constantan>, <artisanworktables:artisans_handsaw_copper>, <artisanworktables:artisans_handsaw_electrum>, <artisanworktables:artisans_handsaw_invar>, <artisanworktables:artisans_handsaw_lead>, <artisanworktables:artisans_handsaw_nickel>, <artisanworktables:artisans_handsaw_platinum>, <artisanworktables:artisans_handsaw_silver>, <artisanworktables:artisans_handsaw_steel>, <artisanworktables:artisans_handsaw_tin>, <artisanworktables:artisans_handsaw_manasteel>, <artisanworktables:artisans_handsaw_elementium>, <artisanworktables:artisans_handsaw_terrasteel>] as IItemStack[];
val SawNameArray = ["IronHandsaw", "GoldHandsaw", "DiamondHandsaw", "AluminumHandsaw", "BronzeHandsaw", "ConstantanHandsaw", "CopperHandsaw", "ElectrumHandsaw", "InvarHandsaw", "LeadHandsaw", "NickelHandsaw", "PlatinumHandsaw", "SilverHandsaw", "SteelHandsaw", "TinHandsaw", "ManasteelHandsaw", "ElementiumHandsaw", "TerrasteelHandsaw"] as string[];

for s in (0 to 18){
	recipes.addShaped(SawNameArray[s], SawArray[s], [[null, MetalArray[s], <betterwithmods:wood_moulding:*>], [MetalArray[s], <betterwithmods:wood_moulding:*>, null], [<betterwithmods:wood_moulding:*>, null, null]]);
	recipes.remove(SawArray[s]);
	}

recipes.remove(<artisanworktables:artisans_handsaw_wood>);
recipes.remove(<artisanworktables:artisans_handsaw_flint>);
recipes.remove(<artisanworktables:artisans_handsaw_bone>);
recipes.remove(<artisanworktables:artisans_handsaw_stone>);

	//Carpenters Hammer
recipes.remove(<artisanworktables:artisans_hammer_stone>);
recipes.remove(<artisanworktables:artisans_hammer_wood>);

//Parcipals changes to Worktables
recipes.addShaped(<artisanworktables:worktable>, [[<minecraft:wool:*>, <minecraft:carpet:*>, <minecraft:wool:*>], [<minecraft:wool:*>, <minecraft:wool:*>, <minecraft:wool:*>], [<minecraft:stone_slab:3>, <minecraft:cobblestone>, <minecraft:stone_slab:3>]]);
recipes.addShaped(<artisanworktables:worktable:1>, [[<minecraft:planks:*>, <minecraft:stone_slab>, <minecraft:planks:*>], [<minecraft:planks:*>, <minecraft:planks:*>, <minecraft:planks:*>], [<minecraft:stone_slab:3>, <minecraft:cobblestone>, <minecraft:stone_slab:3>]]);
recipes.addShaped(<artisanworktables:worktable:1>, [[<minecraft:planks:*>, <minecraft:stone_slab>, <minecraft:planks:*>], [<minecraft:planks:*>, <minecraft:planks:*>, <minecraft:planks:*>], [<minecraft:stone_slab:3>, <minecraft:cobblestone>, <minecraft:stone_slab:3>]]);
recipes.addShaped(<artisanworktables:worktable:2>, [[<minecraft:brick>, <minecraft:stone_slab>, <minecraft:brick>], [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>], [<minecraft:stone_slab:3>, <minecraft:cobblestone>, <minecraft:stone_slab:3>]]);
recipes.addShaped(<artisanworktables:worktable:3>, [[<minecraft:iron_ingot>, <ore:plateSteel>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:stone_slab:3>, <minecraft:cobblestone>, <minecraft:stone_slab:3>]]);
recipes.addShaped(<artisanworktables:worktable:5>, [[<ore:plankWood>, <ore:craftingTableWood>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<minecraft:stone_slab:3>, <minecraft:cobblestone>, <minecraft:stone_slab:3>]]);
recipes.addShaped(<artisanworktables:worktable:6>, [[<ore:ingotCopper>, <ore:plateSteel>, <ore:ingotCopper>], [<minecraft:iron_ingot>, <ore:ingotCopper>, <minecraft:iron_ingot>],[<minecraft:stone_slab:3>, <minecraft:cobblestone>, <minecraft:stone_slab:3>]]);

recipes.remove(<artisanworktables:worktable:3>);
recipes.remove(<artisanworktables:worktable:5>);

//Parcipals changes to Bricks
	//Mason
	recipes.remove(<tconstruct:seared:3>);
	mason
    	.setShaped([
        	[<tconstruct:materials>, <botany:misc_ceramic>, <tconstruct:materials>],
        	[<botany:misc_ceramic>, <tconstruct:materials>, <botany:misc_ceramic>],
        	[<tconstruct:materials>, <botany:misc_ceramic>, <tconstruct:materials>]])
    	.addTool(<ore:artisansTrowl>, 5)
    	.addOutput(<tconstruct:seared:3> * 4)
    	.create();

	recipes.remove(<minecraft:brick_block>);
	mason
    	.setShaped([
        	[<minecraft:brick>, <botany:misc_ceramic>, <minecraft:brick>],
        	[<botany:misc_ceramic>, <minecraft:brick>, <botany:misc_ceramic>],
        	[<minecraft:brick>, <botany:misc_ceramic>, <minecraft:brick>]])
    	.addTool(<ore:artisansTrowl>, 5)
    	.addOutput(<minecraft:brick_block> * 4)
    	.create();

	recipes.remove(<immersiveengineering:stone_decoration:1>);
	mason
    	.setShaped([
        	[<betterwithmods:material:17>, <tconstruct:materials>, <betterwithmods:material:17>],
        	[<tconstruct:materials>, <botany:misc_ceramic>, <tconstruct:materials>],
        	[<betterwithmods:material:17>, <tconstruct:materials>, <betterwithmods:material:17>]])
    	.addTool(<ore:artisansTrowl>, 5)
    	.addOutput(<immersiveengineering:stone_decoration:1> * 4)
    	.create();

	recipes.remove(<minecraft:stonebrick>);
	mason
    	.setShaped([
        	[<ore:stone>, <botany:misc_ceramic>, <ore:stone>],
        	[<botany:misc_ceramic>, <ore:stone>, <botany:misc_ceramic>],
        	[<ore:stone>, <botany:misc_ceramic>, <ore:stone>]])
    	.addTool(<ore:artisansTrowl>, 5)
    	.addOutput(<minecraft:stonebrick> * 4)
    	.create();

	recipes.remove(<embers:block_caminite_brick>);
	mason
    	.setShaped([
        	[<embers:brick_caminite>, <botany:misc_ceramic>, <embers:brick_caminite>],
        	[<botany:misc_ceramic>, <embers:brick_caminite>, <botany:misc_ceramic>],
        	[<embers:brick_caminite>, <botany:misc_ceramic>, <embers:brick_caminite>]])
    	.addTool(<ore:artisansTrowl>, 5)
    	.addOutput(<embers:block_caminite_brick> * 4)
    	.create();

	recipes.remove(<embers:archaic_bricks>);
	mason
    	.setShaped([
        	[<embers:archaic_brick>, <botany:misc_ceramic>, <embers:archaic_brick>],
        	[<botany:misc_ceramic>, <embers:archaic_brick>, <botany:misc_ceramic>],
        	[<embers:archaic_brick>, <botany:misc_ceramic>, <embers:archaic_brick>]])
    	.addTool(<ore:artisansTrowl>, 5)
    	.addOutput(<embers:archaic_bricks> * 4)
    	.create();

  	recipes.remove(<tconstruct:deco_ground>);
	mason
    	.setShaped([
        	[<tconstruct:materials:1>, <roots:straw>, <tconstruct:materials:1>],
        	[<roots:straw>, <tconstruct:materials:1>, <roots:straw>],
        	[<tconstruct:materials:1>, <roots:straw>, <tconstruct:materials:1>]])
    	.addTool(<ore:artisansTrowl>, 5)
    	.addOutput(<tconstruct:deco_ground> * 4)
    	.create();

  	recipes.remove(<tconstruct:dried_clay:1>);
	mason
    	.setShaped([
        	[<tconstruct:materials:2>, <botany:misc_ceramic>, <tconstruct:materials:2>],
        	[<botany:misc_ceramic>, <tconstruct:materials:2>, <botany:misc_ceramic>],
        	[<tconstruct:materials:2>, <botany:misc_ceramic>, <tconstruct:materials:2>]])
    	.addTool(<ore:artisansTrowl>, 5)
    	.addOutput(<tconstruct:dried_clay:1> * 4)
    	.create();
