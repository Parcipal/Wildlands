import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.Worktable;
import mods.artisanworktables.IRecipeBuilder;

//Artisan Worktable Tweaks
	//Blacksmith
val plateIngots = {
    <thermalfoundation:material:33> : <ore:ingotGold>,
    <thermalfoundation:material:320> : <ore:ingotCopper>,
    <thermalfoundation:material:321> : <ore:ingotTin>,
    <thermalfoundation:material:322> : <ore:ingotSilver>,
    <thermalfoundation:material:323> : <ore:ingotLead>,
    <thermalfoundation:material:324> : <ore:ingotAluminum>,
    <thermalfoundation:material:325> : <ore:ingotNickel>,
    <thermalfoundation:material:326> : <ore:ingotPlatinum>,
    <thermalfoundation:material:327> : <ore:ingotIridium>,
    <thermalfoundation:material:328> : <ore:ingotMithril>,
    <thermalfoundation:material:352> : <ore:ingotSteel>,
    <thermalfoundation:material:353> : <ore:ingotElectrum>,
    <thermalfoundation:material:354> : <ore:ingotInvar>,
    <thermalfoundation:material:355> : <ore:ingotBronze>,
    <thermalfoundation:material:356> : <ore:ingotConstantan>,
    <thermalfoundation:material:357> : <ore:ingotSignalum>,
    <thermalfoundation:material:358> : <ore:ingotLumium>,
    <thermalfoundation:material:359> : <ore:ingotEnderium>
} as IIngredient[IItemStack];

#for plate, ingot in plateIngots {
#    val builder = Worktable.createRecipeBuilder("blacksmith");
#    Worktable.createRecipeBuilder.setShaped([
#        [ingot],
#        [ingot],
#        [ingot]
#    ])
#    .addTool(<ore:blacksmiths_hammer>, 5)
#    .addOutput(plate)
#    .create();
#}

//Thermal Expansion Transportation
    //Blacksmith
    recipes.remove(<thermaldynamics:servo>);
    Worktable.createRecipeBuilder("blacksmith")
        .setShaped([
            [<betterwithmods:material:34>, <minecraft:bucket>, <minecraft:iron_ingot>],
            [<ore:gearIron>, null, <ore:gearIron>],
            [<minecraft:iron_ingot>, <minecraft:bucket>, <betterwithmods:material:34>]])
        .addTool(<ore:blacksmiths_hammer>, 20)
        .addOutput(<thermaldynamics:servo> * 2)
        .create();

    recipes.remove(<thermaldynamics:duct_32:1>);
    Worktable.createRecipeBuilder("blacksmith")
        .setShaped([
            [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
            [<ore:plateLead>, <thermaldynamics:servo>, <ore:plateLead>],
            [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]])
        .addTool(<ore:blacksmiths_hammer>, 20)
        .addOutput(<thermaldynamics:duct_32:1> * 8)
        .create();

    recipes.remove(<thermaldynamics:duct_32>);
    Worktable.createRecipeBuilder("blacksmith")
        .setShaped([
            [<ore:plateTin>, <thermalfoundation:glass_alloy>, <ore:plateTin>],
            [<ore:plateLead>, <thermaldynamics:servo>, <ore:plateLead>],
            [<ore:plateTin>, <thermalfoundation:glass_alloy>, <ore:plateTin>]])
        .addTool(<ore:blacksmiths_hammer>, 20)
        .addOutput(<thermaldynamics:duct_32> * 8)
        .create();

    recipes.remove(<thermaldynamics:duct_16:1>);
    Worktable.createRecipeBuilder("blacksmith")
        .setShaped([
            [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
            [<ore:plateBronze>, <thermaldynamics:servo>, <ore:plateBronze>],
            [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]])
        .addTool(<ore:blacksmiths_hammer>, 20)
        .addOutput(<thermaldynamics:duct_16:1> * 8)
        .create();

    recipes.remove(<thermaldynamics:duct_16:1>);
    Worktable.createRecipeBuilder("blacksmith")
        .setShaped([
            [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
            [<ore:plateBronze>, <thermaldynamics:servo>, <ore:plateBronze>],
            [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]])
        .addTool(<ore:blacksmiths_hammer>, 20)
        .addOutput(<thermaldynamics:duct_16:1> * 8)
        .create();

    recipes.remove(<thermaldynamics:duct_16>);
    Worktable.createRecipeBuilder("blacksmith")
        .setShaped([
            [<ore:plateCopper>, <ore:blockGlass>, <ore:plateCopper>],
            [<ore:plateBronze>, <thermaldynamics:servo>, <ore:plateBronze>],
            [<ore:plateCopper>, <ore:blockGlass>, <ore:plateCopper>]])
        .addTool(<ore:blacksmiths_hammer>, 20)
        .addOutput(<thermaldynamics:duct_16> * 8)
        .create();

    recipes.remove(<thermaldynamics:duct_0>);
    Worktable.createRecipeBuilder("blacksmith")
        .setShaped([
            [<ore:plateLead>, <ore:blockGlass>, <ore:plateLead>],
            [<betterwithmods:material:34>, <thermaldynamics:servo>, <betterwithmods:material:34>],
            [<ore:plateLead>, <ore:blockGlass>, <ore:plateLead>]])
        .addTool(<ore:blacksmiths_hammer>, 20)
        .addOutput(<thermaldynamics:duct_0> * 8)
        .create();

    recipes.remove(<thermaldynamics:duct_0:1>);
    Worktable.createRecipeBuilder("blacksmith")
        .setShaped([
            [<ore:plateInvar>, <ore:blockGlass>, <ore:plateInvar>],
            [<betterwithmods:material:34>, <thermaldynamics:servo>, <betterwithmods:material:34>],
            [<ore:plateInvar>, <ore:blockGlass>, <ore:plateInvar>]])
        .setFluid(<liquid:redstone> * 144)
        .addTool(<ore:blacksmiths_hammer>, 20)
        .addOutput(<thermaldynamics:duct_0:1> * 8)
        .create();

    recipes.remove(<thermalexpansion:frame:128>);
    Worktable.createRecipeBuilder("blacksmith")
        .setShaped([
            [<immersiveengineering:sheetmetal:2>, <betterwithmods:material:34>, <immersiveengineering:sheetmetal:2>],
            [<betterwithmods:material:34>, <thermaldynamics:servo>, <betterwithmods:material:34>],
            [<immersiveengineering:sheetmetal:2>, <betterwithmods:material:34>, <immersiveengineering:sheetmetal:2>]])
        .addTool(<ore:blacksmiths_hammer>, 20)
        .addOutput(<thermalexpansion:frame:128>)
        .create();

        //Engineer
    recipes.remove(<thermalexpansion:cell>.withTag({Recv: 1000, RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [2, 1, 1, 1, 1, 1] as byte[] as byte[], Level: 0 as byte, Send: 1000}));
    Worktable.createRecipeBuilder("engineer")
        .setShaped([
            [<thermalexpansion:capacitor>.withTag({Energy: 0}), <ore:blockRedstone>, <thermalexpansion:capacitor>.withTag({Energy: 0})],
            [<thermalfoundation:material:515>, <thermaldynamics:servo>, <thermalfoundation:material:515>],
            [<thermalexpansion:capacitor>.withTag({Energy: 0}), <betterwithmods:material:34>, <thermalexpansion:capacitor>.withTag({Energy: 0})]])
        .addTool(<ore:blacksmiths_hammer>, 20)
        .addOutput(<thermalexpansion:cell>.withTag({Recv: 1000, RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [2, 1, 1, 1, 1, 1] as byte[] as byte[], Level: 0 as byte, Send: 1000}))
        .create();

    recipes.remove(<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte}));
    Worktable.createRecipeBuilder("engineer")
        .setShaped([
            [<ore:plateCopper>, <thermalfoundation:material:512>, <ore:plateCopper>],
            [<ore:paneGlass>, <minecraft:bucket>, <ore:paneGlass>],
            [<ore:plateCopper>, <thermalfoundation:material:512>, <ore:plateCopper>]])
        .addTool(<ore:blacksmiths_hammer>, 20)
        .addOutput(<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte}))
        .create();       

//Thermal Expansion Machinery
    //Blacksmith
    recipes.remove(<thermalexpansion:frame>);
    Worktable.createRecipeBuilder("blacksmith")
        .setShaped([
            [<ore:ingotSteel>, <thermaldynamics:servo>, <ore:ingotSteel>],
            [<buildcraftfactory:tank>, <thermalfoundation:material:288>, <buildcraftfactory:tank>],
            [<ore:ingotSteel>, <thermaldynamics:servo>, <ore:ingotSteel>]])
        .setFluid(<liquid:tin> * 144)
        .addTool(<ore:blacksmiths_hammer>, 20)
        .addOutput(<thermalexpansion:frame>)
        .create();

        //Engineer
    recipes.remove(<thermalexpansion:machine>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
    Worktable.createRecipeBuilder("engineer")
        .setShaped([
            [<betterwithmods:material:27>, <betterwithmods:material:27>, <betterwithmods:material:27>],
            [<immersiveengineering:stone_decoration:2>, <thermalexpansion:frame>, <immersiveengineering:stone_decoration:2>],
            [<immersiveengineering:sheetmetal:1>, <thermalfoundation:material:513>, <immersiveengineering:sheetmetal:1>]])
        .setFluid(<liquid:tin> * 144)
        .addTool(<ore:blacksmiths_hammer>, 250)
        .addOutput(<thermalexpansion:machine>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}))
        .create();

    recipes.remove(<thermalexpansion:machine:1>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
    Worktable.createRecipeBuilder("engineer")
        .setShaped([
            [<minecraft:piston>, <minecraft:piston>, <minecraft:piston>],
            [<betterwithmods:single_machine>, <thermalexpansion:frame>, <betterwithmods:single_machine>],
            [<immersiveengineering:sheetmetal:1>, <thermalfoundation:material:513>, <immersiveengineering:sheetmetal:1>]])
        .setFluid(<liquid:tin> * 144)
        .addTool(<ore:blacksmiths_hammer>, 250)
        .addOutput(<thermalexpansion:machine:1>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}))
        .create();     

    recipes.remove(<thermalexpansion:machine:2>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
    Worktable.createRecipeBuilder("engineer")
        .setShaped([
            [<betterwithmods:saw>, <ore:gearSteel>, <betterwithmods:saw>],
            [<ore:gearSteel>, <thermalexpansion:frame>, <ore:gearSteel>],
            [<immersiveengineering:sheetmetal:1>, <thermalfoundation:material:513>, <immersiveengineering:sheetmetal:1>]])
        .setFluid(<liquid:tin> * 144)
        .addTool(<ore:blacksmiths_hammer>, 250)
        .addOutput(<thermalexpansion:machine:2>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}))
        .create();  

    recipes.remove(<thermalexpansion:machine:3>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
    Worktable.createRecipeBuilder("engineer")
        .setShaped([
            [<thermalexpansion:machine>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}), <thermalexpansion:cell>.withTag({Recv: 1000, RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [2, 1, 1, 1, 1, 1] as byte[] as byte[], Level: 0 as byte, Send: 1000}), <thermalexpansion:machine>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte})],
            [<thermalfoundation:material:515>, <thermalexpansion:frame>, <thermalfoundation:material:515>],
            [<immersiveengineering:sheetmetal:1>, <thermalfoundation:material:513>, <immersiveengineering:sheetmetal:1>]])
        .setFluid(<liquid:invar> * 144)
        .addTool(<ore:blacksmiths_hammer>, 250)
        .addOutput(<thermalexpansion:machine:3>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}))
        .create();  

    recipes.remove(<thermalexpansion:machine:15>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
    Worktable.createRecipeBuilder("engineer")
        .setShaped([
            [<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte}), <thermaldynamics:duct_16>, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte})],
            [<thermaldynamics:servo>, <thermalexpansion:frame>, <thermaldynamics:servo>],
            [<immersiveengineering:sheetmetal:1>, <thermalfoundation:material:513>, <immersiveengineering:sheetmetal:1>]])
        .setFluid(<liquid:tin> * 144)
        .addTool(<ore:blacksmiths_hammer>, 250)
        .addOutput(<thermalexpansion:machine:15>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}))
        .create();  

//Thermal Expansion Crafting Ingredients
    //Blacksmith
    recipes.remove(<thermalfoundation:material:513>);
    Worktable.createRecipeBuilder("blacksmith")
        .setShaped([
            [<immersiveengineering:wirecoil:5>, <immersiveengineering:wirecoil:5>, <betterwithmods:material:34>],
            [<immersiveengineering:wirecoil:5>, <immersiveengineering:connector:12>, <immersiveengineering:wirecoil:5>],
            [<betterwithmods:material:34>, <immersiveengineering:wirecoil:5>, <immersiveengineering:wirecoil:5>]])
        .addTool(<ore:blacksmiths_hammer>, 10)
        .addOutput(<thermalfoundation:material:513> * 2)
        .create();

    recipes.remove(<thermalfoundation:material:514>);
    Worktable.createRecipeBuilder("blacksmith")
        .setShaped([
            [<immersiveengineering:wirecoil:5>, <betterwithmods:material:34>, <immersiveengineering:wirecoil:5>],
            [<immersiveengineering:wirecoil:5>, <immersiveengineering:connector:12>, <immersiveengineering:wirecoil:5>],
            [<immersiveengineering:wirecoil:5>, <betterwithmods:material:34>, <immersiveengineering:wirecoil:5>]])
        .addTool(<ore:blacksmiths_hammer>, 10)
        .addOutput(<thermalfoundation:material:514> * 2)
        .create();

    recipes.remove(<thermalfoundation:material:515>);
    Worktable.createRecipeBuilder("blacksmith")
        .setShaped([
            [<betterwithmods:material:34>, <immersiveengineering:wirecoil:5>, <immersiveengineering:wirecoil:5>],
            [<immersiveengineering:wirecoil:5>, <immersiveengineering:connector:12>, <immersiveengineering:wirecoil:5>],
            [<immersiveengineering:wirecoil:5>, <immersiveengineering:wirecoil:5>, <betterwithmods:material:34>]])
        .addTool(<ore:blacksmiths_hammer>, 10)
        .addOutput(<thermalfoundation:material:515> * 2)
        .create();

    recipes.remove(<thermalexpansion:capacitor>.withTag({Energy: 0}));
    Worktable.createRecipeBuilder("engineer")
        .setShaped([
            [<betterwithmods:material:34>, <ore:dustSulfur>, <ore:ingotLead>],
            [<ore:plateCopper>, <ore:nuggetLead>, <ore:plateCopper>],
            [<ore:ingotLead>, <ore:dustSulfur>, <betterwithmods:material:34>]])
        .setFluid(<liquid:tin> * 144)
        .addTool(<ore:blacksmiths_hammer>, 50)
        .addOutput(<thermalexpansion:capacitor>.withTag({Energy: 0}))
        .create();

//Thermal Expansion Energy Generation
    //Engineer
    recipes.remove(<thermalexpansion:dynamo>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
    Worktable.createRecipeBuilder("engineer")
        .setShaped([
            [<betterwithmods:material:27>, <thermalfoundation:material:514>, <betterwithmods:material:27>],
            [<ore:ingotSteel>, <thermalexpansion:frame>, <ore:ingotSteel>],
            [<thermalfoundation:material:288>, <buildcraftfactory:tank>, <thermalfoundation:material:288>]])
        .setFluid(<liquid:tin> * 144)
        .addTool(<ore:blacksmiths_hammer>, 251)
        .addOutput(<thermalexpansion:dynamo>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}))
        .create();



//Removed Recipes (currently locked)

recipes.remove(<thermalexpansion:machine:4>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:6>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:7>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 2, 3, 3, 3, 3] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:8>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:9>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:10>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:11>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:12>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:13>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:14>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:device>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [0, 1, 0, 0, 0, 0] as byte[] as byte[]}));
recipes.remove(<thermalexpansion:dynamo:1>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
recipes.remove(<thermalexpansion:dynamo:2>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
recipes.remove(<thermalexpansion:dynamo:3>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
recipes.remove(<thermalexpansion:dynamo:4>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
recipes.remove(<thermalexpansion:dynamo:5>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
