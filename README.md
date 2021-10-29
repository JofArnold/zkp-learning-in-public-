# zkp-learning-in-public
My journey learning zero knowledge proof technologies in public! Feedback, help and contributions very much welcome

# Setup

Run `yarn` to install all dependencies in the monorepo. Project-specific instructions and scripts are in their own repos

# Projects

### 1) zkProof for `x * y + 4 == 10`

Using ZoKrates, proof is generates for the  above linear express. It's tested with hardhat. Code: [01-simple-algebraic-expression](https://github.com/JofArnold/zkp-learning-in-public/blob/main/@projects/01-simple-algebraic-expression)

### 2) Another simple proof, but with simple integrations with NFTs and JS.

Using ZoKrates again, this is a more advanced example in terms of integrating ZKPs with JavaScript. Goal is to replicate something like a game-experience but without delving deep into more advanced ZKPs. Code: [02-magic-number-and-nft](https://github.com/JofArnold/zkp-learning-in-public/tree/main/%40projects/02-magic-number-and-nft)


### 3) Builds on 2 but using Circom 0.5 and SnarkJS

Has scripts to conduct a two-phase Powers of Tau Ceremony.

Code: [03-simple-circom-example](https://github.com/JofArnold/zkp-learning-in-public/tree/main/%40projects/03-simple-circom-example)

### 4) Builds on 3 but using Circom 2.0

Code: [04-simple-circom-v2.0](https://github.com/JofArnold/zkp-learning-in-public/tree/main/%40projects/04-simple-circom-v2.0)