---
title: "Engestofte Gods Logistics: Building a Practical Inventory and Purchasing System"
date: 2026-05-20
draft: false
tags: ["Development", "AI", "Flask", "React"]
---

# Engestofte Gods Logistics: Building a Practical Inventory and Purchasing System

Imagine planning a wedding at a manor house where guests are also staying overnight.

The event is not only about the ceremony, dinner, and celebration. Behind the scenes, staff need to prepare rooms, check supplies, organize linen, towels, toiletries, minibar items, cleaning products, and many other practical details.

If the planning is handled manually, it is easy to lose track of what is needed, what is already in stock, and what still needs to be bought.

That is the problem my project, Engestofte Gods Logistics, was built to solve.

## What Is Engestofte Gods Logistics?

Engestofte Gods Logistics is a logistics system developed for Engestofte Gods.

The goal of the system is to help with planning weddings with overnight stays. Instead of relying on manual notes or separate spreadsheets, the system brings purchasing, inventory, and practical preparation into one simple application.

The system focuses on a very real workflow: before a large event, staff need a clear overview of supplies. They need to know how many items are required, how many are already available, and how much needs to be purchased.

That makes the project simple in concept, but useful in practice.

## The Problem It Solves

When many guests stay overnight, the number of required items grows quickly.

A small mistake can mean buying too much, buying too little, or forgetting an important item completely. For a wedding venue, that creates unnecessary stress for the staff and a worse experience for the guests.

The system reduces that risk by turning event details into a structured purchasing list.

The user enters information such as:

1. Number of overnight guests.
2. Number of nights.
3. Number of rooms.
4. Package type.
5. Whether minibar should be included.

The system then calculates what is needed and compares it with the current inventory.

## How the Purchasing List Works

The central feature is the automatic purchasing list.

The calculation itself is handled by fixed rules in the backend. That is important because the purchasing list needs to be predictable. If an event requires 40 sheets, the system should calculate that the same way every time.

After calculating the required amount, the system checks the inventory and shows exactly what needs to be bought.

For example:

```text
Required: 40
In stock: 15
To buy: 25
```

This turns the system into more than just a list. It works as a purchasing tool, an inventory overview, and a practical checklist for the staff.

## Architecture Overview

The system is built with a separated frontend and backend.

### Backend

The backend is built with Python and Flask.

It exposes a REST API that the frontend uses to fetch and update data. The backend is responsible for inventory data, purchasing calculations, and the fixed business rules behind the automatic list.

### Frontend

The frontend is built with React and JavaScript.

It gives the user a simple interface for creating a purchasing list, managing inventory, searching items, and working with the AI logistics assistant.

### Data Storage

Inventory is stored in a JSON file.

For this project, that was a practical choice. It keeps the system easy to understand, demonstrate, and explain. A database could be added later, but the JSON file is enough to show the full workflow clearly.

The basic flow looks like this:

```text
User input
    -> React frontend
    -> Flask REST API
    -> Rule-based calculation
    -> Inventory JSON file
    -> Purchasing list
```

## Main Features

The system has two main areas: Purchasing List and Inventory.

In the purchasing list, the user can generate a list based on event details, mark items as bought, reset the checklist, and print a print-friendly version.

In the inventory section, the user can view, add, edit, delete, and search inventory items.

Together, these features support the full workflow from planning to practical execution.

## Visual Design

The frontend is designed with inspiration from Engestofte Gods' visual identity.

The colors are based on the green color from the logo, combined with white and light green surfaces. The goal was to create a calm, professional, and exclusive expression that fits a manor house, hotel, and wedding venue.

The design is intentionally simple. The staff should be able to understand the interface quickly and focus on the logistics task instead of learning a complicated system.

## Adding an AI Logistics Assistant

The project also includes an AI logistics assistant powered by an LLM.

The AI does not calculate the purchasing list. That part is handled by fixed backend rules, because the critical numbers need to be reliable and consistent.

Instead, the AI is used as a communication layer on top of the system.

It can explain the purchasing list, draft a message to suppliers, and answer questions about inventory and purchasing. This makes the system more user-friendly without making the critical calculation dependent on AI.

That separation is an important design choice.

## Why the AI Does Not Handle the Calculation

AI is useful, but not every part of a system should depend on it.

For this project, the purchasing calculation is business logic. It should be deterministic, testable, and easy to inspect. Fixed rules are the right tool for that.

The LLM is better used where language is needed: explanations, summaries, supplier messages, and natural questions.

That creates a more responsible AI design:

```text
Rules calculate the numbers.
AI explains and communicates the result.
```

This keeps the system practical while still showing how modern AI can improve the user experience.

## What I Learned

The biggest lesson from this project is that useful software does not have to be complicated.

A small system can still solve a real problem if it is built around a real workflow. In this case, the value comes from combining event details, inventory data, and purchasing calculations in one place.

I also learned that AI works best when it has a clear role. Instead of using an LLM for everything, the project uses classic software for the reliable parts and AI for the communication layer.

That made the architecture easier to reason about and easier to trust.

## Challenges and Trade-Offs

The first trade-off was data storage.

Using a JSON file is simple and easy to demonstrate, but it is not the same as a full database. For a larger production system, a database would make sense for stronger data handling, users, history, and better concurrency.

The second trade-off was calculation logic.

Hardcoded rules are predictable, but they need to be maintained if the venue changes packages, item requirements, or room rules. That is still a good trade-off for this version because reliability matters more than flexibility.

The third trade-off was AI integration.

The assistant makes the system easier to use, but it must not replace the part of the system that needs exact numbers. Keeping AI separate from the calculation keeps the project safer and more realistic.

## Conclusion

Engestofte Gods Logistics is a simple, user-friendly, and realistic system for planning weddings with overnight stays.

It helps staff understand what is needed, what is already in stock, and what still needs to be purchased. At the same time, it shows how a classic Flask and React application can be extended with AI in a practical way.

For me, the most important part of the project is the balance.

The fixed backend rules make the calculations reliable. The React frontend makes the workflow easy to use. The AI assistant adds explanations and communication support without taking over the critical logic.

That is what makes the project useful: it is not just a technical demo, but a system designed around a real customer's logistics problem.
