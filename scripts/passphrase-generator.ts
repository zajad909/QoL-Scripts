import nouns from "../database/nouns.json" with { type: "json" };
import animals from "../database/animals.json" with { type: "json" };
import colours from "../database/colours.json" with { type: "json" };
import { randomInt } from "crypto";

const generatePassphrase = () => {
  // Get random index for each array
  const randomNounIndex = randomInt(0, nouns.length);
  const randomAnimalIndex = randomInt(0, animals.length);
  const randomColourIndex = randomInt(0, colours.length);

  // Select random items from each array
  const randomNoun = nouns[randomNounIndex];
  const randomAnimal = animals[randomAnimalIndex];
  const randomColour = colours[randomColourIndex];

  // Combine the random words to create a password
  const combinedWord = `${randomAnimal}-${randomColour}-${randomNoun}`;

  // Generate Number
  const number = randomInt(1, 999);

  // Generate Special character
  const specialChars = "@$!?";
  const special = specialChars[randomInt(0, specialChars.length)];

  // Format password based on special character
  const password =
    special === "@"
      ? `${combinedWord}${special}${number}`
      : `${combinedWord}${number}${special}`;

  // Output the generated password
  return password;
};

console.log(generatePassphrase());