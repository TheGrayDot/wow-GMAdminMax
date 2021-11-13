# GMAdminMax

An addon for WoW Vanilla private servers to help teleport to common locations, spawn BiS item sets, and make it easier to run some common GM commands.

## Background

The GMAdminMax addon (pronounced `gee-mad-min-max`) is a simple addon specifically for Game Master accounts on World of Warcraft (WoW) private servers such as Massive Network Game Object Server Suite (MaNGOS). The idea is that it helps run GM commands that are difficult to remember or are used frequently. For example, select a location from a drop down menu instead of typing a teleport command (e.g., `.go -8912.08 624.23 99.53 0`).

The addon has been tested with Vanilla CMaNGOS available from the [mangos-classic](https://github.com/cmangos/mangos-classic) repository.

## Functionality

The GMAdminMax addon currently has the following functionality:

- Teleport to common locations from a drop down menu
- Spawm BiS item sets for specific classes and specs

## Setup

- Clone this repo, or download as ZIP
- Copy the `GMAdminMax` folder
- Paste the folder in the `Interfaces\Addons` folder

## Roadmap

- Add slash command to open/close the addon
- Add repair items button
- Add cast enchant spell on selected item
- Add in item dungeon item sets to BiS lists
- Add option to give item sets to targeted player
- Add in buffs (world, food, potion, flask) menu
- Add in spawn common items needed on newly created characters
    - Bags (e.g., Bottomless bag `.additem 14156`)
- Determine if class/spec templates is viable
    - Add all gear, consumables, professions etc.
