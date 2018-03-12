import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.Worktable;
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

//Bee Changes
	//Carpenter
	recipes.remove(<forestry:apiary>);
	carpenter
    	.setShaped([
        	[<ore:sidingTreatedWood>, <ore:sidingTreatedWood>, <ore:sidingTreatedWood>],
        	[<ore:plankTreatedWood>, <betterwithmods:material:41>, <ore:plankTreatedWood>],
        	[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]])
    	.addTool(<ore:carpenters_hammer>, 20)
    	.addOutput(<forestry:apiary>)
    	.create();
    carpenter
        .setShaped([
            [<ore:sidingWood>, <ore:sidingWood>, <ore:sidingWood>],
            [<ore:plankWood>, <betterwithmods:material:41>, <ore:plankWood>],
            [<ore:plankWood>, <ore:plankTreatedWood>, <ore:plankWood>]])
        .setFluid(<liquid:seed.oil> * 500)
        .addTool(<ore:carpenters_hammer>, 20)
        .addOutput(<forestry:apiary>)
        .create();

    recipes.remove(<forestry:impregnated_casing>);
    carpenter
    	.setShaped([
        	[<ore:barkWood>, <ore:barkWood>, <ore:barkWood>],
        	[<ore:barkWood>, null, <ore:barkWood>],
        	[<ore:barkWood>, <ore:barkWood>, <ore:barkWood>]])
    	.setFluid(<liquid:seed.oil> * 1000)
    	.addTool(<ore:carpenters_hammer>, 20)
    	.addOutput(<forestry:impregnated_casing>)
    	.create();
    carpenter
    	.setShaped([
        	[<ore:barkWood>, <ore:barkWood>, <ore:barkWood>],
        	[<ore:barkWood>, null, <ore:barkWood>],
        	[<ore:barkWood>, <ore:barkWood>, <ore:barkWood>]])
    	.setFluid(<liquid:creosote> * 1000)
    	.addTool(<ore:carpenters_hammer>, 20)
    	.addOutput(<forestry:impregnated_casing>)
    	.create();

    	//Blacksmith
	recipes.remove(<forestry:sturdy_machine>);
	blacksmith
    	.setShaped([
        	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
        	[<ore:plateSteel>, null, <ore:plateSteel>],
        	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
        .setFluid(<liquid:tin> * 144)
    	.addTool(<ore:blacksmiths_hammer>, 20)
    	.addOutput(<forestry:sturdy_machine>)
    	.create();

	recipes.remove(<genetics:misc>);
	blacksmith
    	.setShaped([
        	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
        	[<ore:plateSteel>, <forestry:sturdy_machine>, <ore:plateSteel>],
        	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
        .setFluid(<liquid:tin> * 144)
    	.addTool(<ore:carpenters_hammer>, 20)
    	.addOutput(<genetics:misc>)
    	.create();
