using System;
using System.Runtime.InteropServices;


namespace Story
{

    class StoryGenerator
    {        
               static void Main()
            {
            Console.Write("Hello Adventurer! Would you like to go on a journey with me? (y/n) ");
            string Input = Console.ReadLine().ToUpper();

            if (Input != "y" || Input != "n")
            {
                Console.WriteLine("Invalud input. Y/N");
                //Input = Console.ReadLine().ToUpper();
            }
            
            if (Input == "n")
            {
                Console.WriteLine("Another time then!");
                return;
            }
            if (Input == "y")
            {
                Console.WriteLine("Great! Let's begin.");
            }
            
            

            MainCharacter maincharacter = new MainCharacter();
            Console.Write("Every adventurer has a hero's name. What is the name of the hero in our story? ");
            maincharacter.Name = Console.ReadLine();

            Console.Write($"Hello, {maincharacter.Name}! How old are you? ");
            maincharacter.Age = Console.ReadLine();

            Console.Write("You will need a weapon for this story.");

            Weapon randomWeapons = GenerateRandonWeapon();
            maincharacter.Weapon = new Weapon(randomWeapons.Name);
            Console.WriteLine($"You have obtained a(n) {maincharacter.Weapon.Name}. Congrats!");

            Console.Write($"{maincharacter.Name}, aged {maincharacter.Age} with the weapon {maincharacter.Weapon.Name}. Let's find out your role in this story.");

            Role randomMainCharacterRole = GenerateRandomRole();
            maincharacter.Role = randomMainCharacterRole;

            Console.WriteLine($"Your role in this story is {maincharacter.Role.role}.");

            Location locations = GenerateRandomLocation();
            
            }
    
        
        public class MainCharacter
        {
            public string Name { get; set; } // Public getter/setter for name
            public string Age { get; set; } // Public getter/setter for age
            public string[] hairColor = { "brown", "red", "blonde", "white", "black", "gray", "silver" };
            public string[] heightM;
            public string[] race = { "human", "elf", "half-elf", "fairy", "orc" };
            public string[] eyeColor = { "brown", "blue", "green", "silver", "purple", "red" };
            public Role Role { get; set; }
            public Weapon Weapon { get; set; } // Public getter/setter for role

        }


    public class Role
    {
       public string role { get; set; }
    }

    static Role GenerateRandomRole()
    {
        Random rand = new Random();
        string[] mainCharacterRole = { "princess", "prince", "knight", "rogue", "criminal", "king", "queen", "common folk", "wizard" };
        return new Role{role = mainCharacterRole[rand.Next(mainCharacterRole.Length)]};

    }

    public class Location
    {
        public string locations { get; set; }
    }
    static Location GenerateRandomLocation()
    {
        string Area;
        Random rand = new Random();
        string[] locations = { "forest", "castle", "village", "mansion", "ancient runes", "tavern", "haunted moutains" };
        return new Location { locations = locations[rand.Next(locations.Length)] };
    }

    public class Villain
    {
        private string villain;
        public string villainName
        {
            get { return villain; }
            set { villain = value; }
        }

    }

        static Villain GenerateRandomVillian()
        {

        Random rand = new Random();
        string[] villainType = { "dragon", "warlock", "evil queen", "giant", "giant", "squid", "ogre" };
        return new Villain { villainName = villainType[rand.Next(villainType.Length)] };

        }

        public class Weapon
        {
            public string Name;
            public Weapon (string name)
            {
                Name = name;
            }
            
        }

        static Weapon GenerateRandonWeapon()
        {
        Random rand = new Random();
        string[] weapons = { "sword", "quarterstaff", "warhammer", "axe", "dagger", "cross bow", "long bow" };
        
        return new Weapon(weapons[rand.Next(weapons.Length)]);

        }

        public class Love
        {
            public string loveInterest { get; set; }
           
        }
        static Love GenerateRandomLove()
        {
            string[] loveInterest = { "prince", "princess", "rogue", "knight", "sorcerer", "stable person", "criminal" };

            Random rand = new Random();
            int randomIndex = rand.Next(loveInterest.Length);
            return new Love { loveInterest = loveInterest[randomIndex] };
        }

        public class Plot
        {
            public string plots { get; set; }
            public string challenges { get; set; }
            public string Goal;
            public string Challenge;
            

        }

        static Plot GenerateRandomPlot()
        {
            string[] plots = { "break the curse", "defeat the villian", "save the village", "defeat invaders", "find the lost artifact" };
            string[] challenges = { "magical barrier", "guards", "hidden cave", "the king turned evil" };

            Random rand = new Random();
        
            return new Plot { Goal = plots[rand.Next(plots.Length)], Challenge = challenges[rand.Next(challenges.Length)] };
        }

        class Items
        {
            public string item {get; set; }

        }

        static Items GenerateRandomItems()  
        {
        Random rand = new Random();
        string[] item = { "precious gem", "gold", "dagger", "sword", "map", "letter", "beer", "arrows" };
        return new Items {item = item[rand.Next(item.Length)]};
        

        } 
    }    
}
