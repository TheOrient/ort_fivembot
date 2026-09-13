# ORT FiveM Management Bot

> **Legacy project** — originally created in 2019 for ESX-based FiveM servers.

ORT FiveM Management Bot is an early Discord-integrated administration project built for a FiveM server environment. It connected Discord-based staff workflows with server-side ESX functionality and custom game events.

## Project Highlights

- Discord-based server administration workflow
- ESX integration
- Player-management utilities
- Server-status reporting
- Job and inventory related administration
- Restart announcements
- Custom server/client event integration
- Remote staff tooling designed for the original server environment

## Tech Stack

- Lua
- FiveM
- ESX
- Discord integration

## Configuration

The original implementation keeps its server-specific configuration and integrations in `sv.lua`. Anyone reviewing or adapting the project should replace the original environment-specific values, event names, permissions, and framework calls with equivalents from their own stack.

## Modernization Notes

This repository was built against an older ESX/esx-disc ecosystem. Modern FiveM projects may use substantially different APIs and architecture.

Areas that would require review today include:

- authentication and authorization
- Discord API/library integration
- framework exports and callbacks
- inventory and job APIs
- custom server/client events
- structured logging
- error handling
- secrets management

## Security

This project performs privileged administrative operations. A modern implementation should use strict role-based authorization, keep tokens and credentials outside source control, validate every administrative request, and maintain detailed audit logs.

## Legacy Notice

This repository is preserved as part of my development history. It demonstrates an early integration between Discord automation and game-server administration, but it is not presented as a production-ready modern administration platform.
