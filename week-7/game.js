
 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: to create a rpg type game where I have my 
// Hero who is attacking a boss until one dies!

// Overall mission: create a couple objects boss and hero that will interact
//  with one another by attacking

// Goals: Have my characters attack and possibly give my hero some mana
// so that he can summon some magic

// Characters: Hero and boss

// Objects: Hero had attack health, and mana Boss has health and attack

// Functions: create how much one will attack and then take away the health

// Pseudocode
// create both of my objects boss and hero containing health and attack power
// Hero has mana for magic. create two functions for each of them to attack
// at a random amount relative to their health.
// test to see if functions can actually interact with one another.
//

// Initial Code

var Helena = {
	health: 500,
	attackPower: Math.floor(Math.random() * (10)+40),
	manaStores: 200
};

var LordPilof = {
	health: 300,
	attackPower: Math.floor(Math.random()* (10)+70)
};

function HelenaAttack(){
	console.log ("With the attack of Helena Lord Pilofs health is: ", LordPilof.health -= Helena.attackPower);
	if (LordPilof.health >= 1) {
		LordPilofAttack()
	}
	else{
		console.log ("Helena is the victor!!!")
	}

}

function LordPilofAttack(){
	console.log ("The attack from Lord Pilof to Helena's health to: ", Helena.health -= LordPilof.attackPower);
	if (Helena.health >= 1) {
		HelenaAttack()
	}
	else{
		console.log("Our mighty hero has fallen!")
	}
}

HelenaAttack();



// Reflection
//What was the most difficult part of this challenge?
// The most difficult part of the challenge was trying to figure out how to 
// get the random function working. it is like Ruby, but just a little different.
// I also want to spend more time and learn how to get a panel to ask if I want to cure or 
// do another attack.

//What did you learn about creating objects and functions that interact with one another?
// They were just like Ruby interacting so it was awesome to do it in another language. I 
// see it being a little easier, actually, to interact objects in JavaScript than I do 
// in Ruby for some reason. It makes way more sense to me, even though its basically the same.

//Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// My code was pretty simple so it really didn't need refactoring, but getting the random
// component to work was pretty key to my success in this small game, that needs work.

//How can you access and manipulate properties of objects?
//  We can just call the object and the key and assign it something new! 
// I can't wait to make this better!!