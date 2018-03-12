import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.tconstruct.Melting;
import mods.tconstruct.Alloy;
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

//Fixes Oreberries
val OreberryArray = [<oreberries:copper_oreberry>, <oreberries:iron_oreberry>, <oreberries:tin_oreberry>, <oreberries:aluminum_oreberry>, <oreberries:gold_oreberry>] as IItemStack[];
val NuggetArray = [<ore:nuggetCopper>, <ore:nuggetIron>, <ore:nuggetTin>, <ore:nuggetAluminum>, <ore:nuggetGold>] as IOreDictEntry[];
val OreberryLiquidArray = [<liquid:copper>, <liquid:iron>, <liquid:tin>, <liquid:aluminum>, <liquid:gold>] as ILiquidStack[];


for o in (0 to 5){
	mods.tconstruct.Melting.removeRecipe(OreberryLiquidArray[o], OreberryArray[o]);
	mods.tconstruct.Melting.addRecipe(OreberryLiquidArray[o] * 1, OreberryArray[o]);
	furnace.remove(<*>, OreberryArray[o]);
	NuggetArray[o].remove(OreberryArray[o]);
	recipes.remove(OreberryArray[o]);
	}

//Fixes Smeltery production and various Ore+Dust yields	
//				Iron				Gold					Copper				Tin						Silver				Lead					Aluminum			Nickel					Platinum			Osmium
val ClusterArray = [<geolosys:cluster>, <geolosys:cluster:1>,<geolosys:cluster:2> ,<geolosys:cluster:3>, <geolosys:cluster:4>, <geolosys:cluster:5>, <geolosys:cluster:6>, <geolosys:cluster:7>, <geolosys:cluster:8>, <geolosys:cluster:12>] as IItemStack[];
val DustArray = [<thermalfoundation:material>, <thermalfoundation:material:1>, <thermalfoundation:material:64>, <thermalfoundation:material:65>, <thermalfoundation:material:66>, <thermalfoundation:material:67>, <thermalfoundation:material:68>, <thermalfoundation:material:69>, <thermalfoundation:material:70>, <mekanism:dust:2>] as IItemStack[];
val LiquidArray = [<liquid:iron>, <liquid:gold>, <liquid:copper>, <liquid:tin>, <liquid:silver>, <liquid:lead>, <liquid:aluminum>, <liquid:nickel>, <liquid:platinum>, <liquid:osmium>] as ILiquidStack[];

for m in (0 to 10){
	mods.tconstruct.Melting.addRecipe(LiquidArray[m] * 36, ClusterArray[m]);
	mods.tconstruct.Melting.addRecipe(LiquidArray[m] * 36, DustArray[m]);
	mods.tconstruct.Melting.removeRecipe(LiquidArray[m], ClusterArray[m]);
	mods.tconstruct.Melting.removeRecipe(LiquidArray[m], DustArray[m]);
	}

//Fixes Various Machines or Blocks and Recipes
mods.tconstruct.Alloy.removeRecipe(<liquid:obsidian>);
recipes.remove(<tconstruct:soil>);
recipes.addShaped(<tconstruct:soil> * 4, [[<minecraft:gravel>, <embers:blend_caminite>, <minecraft:gravel>], [<embers:blend_caminite>, <ore:sand>, <embers:blend_caminite>], [<minecraft:gravel>, <embers:blend_caminite>, <minecraft:gravel>]]);

//Parcipals changes to TiC Stuff
//	Reworking this line