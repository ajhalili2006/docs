---
title: Setting up your bot
---

## TL;DR

1. Clone the Git repository to your repository.
2. Edit the `.env.sample` file and save it as `.env`.
3. Create an `admins.json` file containning an array of user IDs of your trusted admins.
4. Install dependencies with `npm i`.
5. Start the bot with `npm start`.
6. Optionally [set up your API server](../api-docs/setup.md) also.

## The Long text

### Check your version and clone the whole project

```sh
## Check version and update when needed.
node -v # v12.14.1
npm -v #v6.14.2
git --version # git version 2.27.0.windows.1

## Clone the project
git clone https://github.com/AndrewLaneX/SpamBlockersBot.git SpamBlockersBot-core

## Open your directory
cd SpamBlockersBot-core
```

### Copying sample file, edit and save to `.env`

```sh
## Copy the file.
cp .env.sample .env

## Edit the file
nano .env
```

This what looks like after you do some editing on your `.env` file.

![](../images/tutorials/editing-dotenv-file.png)

Make sure you saved your work before exiting. To save in `nano`, press <button>Ctrl</button>+<button>O</button> and hit <button>Enter</button>. You'll greeted by the `[ Wrote X lines ]` after pressing Enter. Press Ctrl+X to exit.

![](../images/tutorials/saving-dotenv-file-in-nano.png)

![](../images/tutorials/postsave-dotenv-in-nano.png)

## Install dependencies

```sh
npm i # alias of 'npm install'
## [...]
## audited X packages in X s 
```
