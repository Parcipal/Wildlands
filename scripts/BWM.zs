import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.Worktable;
import mods.artisanworktables.IRecipeBuilder;

val TannedLeatherSurv = <ore:hideTanned>;
val TannedLeatherBwm = <ore:materialTannedLeather>;

TannedLeatherSurv.add(<betterwithmods:material:6>);
TannedLeatherBwm.add(<survivalist:tanned_leather>);

val SoulSteel = <ore:ingotSoulforgedSteel>;
val Steel = <ore:ingotSteel>;

Steel.add(<betterwithmods:material:14>);
SoulSteel.add(<thermalfoundation:material:160>);

//Artisan Crafting Tweaks
	//Handsaw
	val WoodArray = [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood:1>, <immersiveengineering:treated_wood:2>, <rustic:planks>, <rustic:planks:1>, <minecraft:planks>,<minecraft:planks:1> , <minecraft:planks:2>, <minecraft:planks:3>, <minecraft:planks:4>, <minecraft:planks:5>] as IItemStack[];
	val SidingArray = [<betterwithengineering:ie_siding>, <betterwithengineering:ie_siding:1>, <betterwithengineering:ie_siding:2>, <betterwithmods:rustic_compat_siding>, <betterwithmods:rustic_compat_siding:1>, <betterwithmods:wood_siding>, <betterwithmods:wood_siding:1>, <betterwithmods:wood_siding:2>, <betterwithmods:wood_siding:3>, <betterwithmods:wood_siding:4>, <betterwithmods:wood_siding:5>] as IItemStack[];
	val MouldingArray = [<betterwithengineering:ie_moulding>, <betterwithengineering:ie_moulding:1>,  <betterwithengineering:ie_moulding:2>, <betterwithmods:rustic_compat_moulding>, <betterwithmods:rustic_compat_moulding:1>, <betterwithmods:wood_moulding>, <betterwithmods:wood_moulding:1>, <betterwithmods:wood_moulding:2>, <betterwithmods:wood_moulding:3>, <betterwithmods:wood_moulding:4>, <betterwithmods:wood_moulding:5>] as IItemStack[];
	val CornerArray = [<betterwithengineering:ie_corner>, <betterwithengineering:ie_corner:1>, <betterwithengineering:ie_corner:2>, <betterwithmods:rustic_compat_corner>, <betterwithmods:rustic_compat_corner:1>, <betterwithmods:wood_corner>, <betterwithmods:wood_corner:1>, <betterwithmods:wood_corner:2>, <betterwithmods:wood_corner:3>, <betterwithmods:wood_corner:4>, <betterwithmods:wood_corner:5>] as IItemStack[];

	for w in (0 to 10){
		Worktable.createRecipeBuilder("carpenter")
    		.setShaped([
        	[WoodArray[w]]])
        	.addTool(<ore:carpenters_saw>, 5)
    		.addOutput(SidingArray[w] * 2)
    		.create();
		Worktable.createRecipeBuilder("carpenter")
    		.setShaped([
        	[SidingArray[w]]])
        	.addTool(<ore:carpenters_saw>, 5)
    		.addOutput(MouldingArray[w] * 2)
    		.create();
		Worktable.createRecipeBuilder("carpenter")
    		.setShaped([
        	[MouldingArray[w]]])
        	.addTool(<ore:carpenters_saw>, 5)
    		.addOutput(CornerArray[w] * 2)
    		.create();
		}

//Artisan Worktables Gating/Recipe Changes
	//Blacksmith
	recipes.remove(<betterwithmods:material:45>);
	Worktable.createRecipeBuilder("carpenter")
    	.setShaped([
        	[null, <ore:nuggetDiamond>, null],
        	[<ore:nuggetDiamond>, <ore:nuggetDiamond>, <ore:nuggetDiamond>],
        	[null, <ore:nuggetDiamond>, null]])
        .setFluid(<liquid:iron> * 144)
    	.addTool(<ore:blacksmiths_hammer>, 50)
    	.addOutput(<betterwithmods:material:45>)
    	.create();

	//Carpenter
	recipes.remove(<betterwithmods:saw>);
	Worktable.createRecipeBuilder("carpenter")
    	.setShaped([
        	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
        	[<ore:gearWood>, <betterwithmods:material:9>, <ore:gearWood>],
        	[<ore:plankTreatedWood>, <betterwithmods:wooden_axle>, <ore:plankTreatedWood>]])
    	.addTool(<ore:carpenters_hammer>, 100)
    	.addOutput(<betterwithmods:saw>)
    	.create();

	recipes.remove(<betterwithmods:wooden_axle>);
	Worktable.createRecipeBuilder("carpenter")
    	.setShaped([
        	[<ore:plankTreatedWood>],
        	[<betterwithmods:rope>],
        	[<ore:plankTreatedWood>]])
    	.addTool(<ore:carpenters_handsaw>, 20)
    	.addOutput(<betterwithmods:wooden_axle>)
    	.create();

    recipes.remove(<betterwithmods:single_machine:1>);	
	Worktable.createRecipeBuilder("carpenter")
    	.setShaped([
        	[<ore:plankTreatedWood>, <betterwithmods:wooden_gearbox>, <ore:ingotIron>],
        	[<ore:gearWood>, <betterwithmods:material:34>, <ore:gearWood>],
        	[<ore:ingotIron>, <betterwithmods:wooden_axle>, <ore:plankTreatedWood>]])
    	.addTool(<ore:carpenters_handsaw>, 20)
    	.addOutput(<betterwithmods:single_machine:1>)
    	.create();

    recipes.remove(<betterwithmods:single_machine:2>);	
	Worktable.createRecipeBuilder("carpenter")
    	.setShaped([
        	[<ore:sidingTreatedWood>, null, <ore:sidingTreatedWood>],
        	[<ore:gearWood>, <minecraft:wooden_pressure_plate>, <ore:gearWood>],
        	[null, <ore:cornerTreatedWood>, null]])
    	.addTool(<ore:carpenters_handsaw>, 20)
    	.addOutput(<betterwithmods:single_machine:2>)
    	.create();

    recipes.remove(<betterwithmods:wooden_gearbox>);	
	Worktable.createRecipeBuilder("carpenter")
    	.setShaped([
        	[<ore:plankTreatedWood>, <ore:gearWood>, <ore:plankTreatedWood>],
        	[<ore:gearWood>, <betterwithmods:material:34>, <ore:gearWood>],
        	[<ore:plankTreatedWood>, <ore:gearWood>, <ore:plankTreatedWood>]])
    	.addTool(<ore:carpenters_handsaw>, 20)
    	.addOutput(<betterwithmods:wooden_gearbox>)
    	.create();
	
	//Crafting Table
    recipes.remove(<minecraft:piston>);
	Worktable.createRecipeBuilder("basic")
    	.setShaped([
        	[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
        	[<ore:cobblestone>, <ore:ingotSteel>, <ore:cobblestone>],
        	[<ore:cobblestone>, <betterwithmods:material:34>, <ore:cobblestone>]])
    	.addTool(<ore:masons_chisel>, 20)
    	.addOutput(<minecraft:piston>)
    	.create();

    recipes.remove(<betterwithmods:single_machine>);	
	Worktable.createRecipeBuilder("basic")
    	.setShaped([
        	[<embers:block_caminite_brick>, <betterwithmods:wooden_axle>, <embers:block_caminite_brick>],
        	[<embers:block_caminite_brick>, <ore:gearWood>, <embers:block_caminite_brick>],
        	[<embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>]])
    	.addTool(<ore:masons_chisel>, 20)
    	.addOutput(<betterwithmods:single_machine>)
    	.create();

	//Mason
	recipes.remove(<betterwithmods:hibachi>);	
	Worktable.createRecipeBuilder("mason")
    	.setShaped([
        	[<betterwithmods:material:17>, <betterwithmods:material:17>, <betterwithmods:material:17>],
        	[<embers:block_caminite_brick>, <betterwithmods:material:27>, <embers:block_caminite_brick>],
        	[<embers:block_caminite_brick>, <betterwithmods:material:34>, <embers:block_caminite_brick>]])
    	.addTool(<ore:masons_chisel>, 20)
    	.addOutput(<betterwithmods:hibachi>)
    	.create();

	recipes.remove(<betterwithmods:single_machine:3>);	
	Worktable.createRecipeBuilder("mason")
    	.setShaped([
        	[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
        	[<embers:block_caminite_brick>, <minecraft:clock>, <embers:block_caminite_brick>],
        	[<embers:block_caminite_brick>, <ore:gearWood>, <embers:block_caminite_brick>]])
    	.addTool(<ore:masons_chisel>, 20)
    	.addOutput(<betterwithmods:single_machine:3>)
    	.create();


	//Tailor
	recipes.remove(<betterwithmods:material:3>);	
	Worktable.createRecipeBuilder("tailor")
    	.setShaped([
        	[<betterwithmods:material:2>, <betterwithmods:material:2>],
        	[<betterwithmods:material:2>, <betterwithmods:material:2>],
        	[<betterwithmods:material:2>, <betterwithmods:material:2>]])
    	.addTool(<ore:tailors_shears>, 15)
    	.addOutput(<betterwithmods:material:3>)
    	.create();

	recipes.remove(<betterwithmods:material:41>);	
	Worktable.createRecipeBuilder("tailor")
    	.setShaped([
        	[<minecraft:feather>, <ore:fabricHemp>, <minecraft:feather>],
        	[<ore:fabricHemp>, <minecraft:feather>, <ore:fabricHemp>],
        	[<minecraft:feather>, <ore:fabricHemp>, <minecraft:feather>]])
    	.addTool(<ore:tailors_needle>, 5)
    	.addOutput(<betterwithmods:material:41>)
    	.create();

	mods.artisanworktables.Worktable.addRecipeShaped("tailor", <betterwithmods:material:41>, <ore:tailors_needle>, 5, false, [[<minecraft:feather>, <ore:fabricHemp>, <minecraft:feather>], [<ore:fabricHemp>, <minecraft:feather>, <ore:fabricHemp>], [<minecraft:feather>, <ore:fabricHemp>, <minecraft:feather>]]);
	
recipes.remove(<betterwithmods:gravel_pile>);
recipes.remove(<betterwithmods:gravel_pile>);
